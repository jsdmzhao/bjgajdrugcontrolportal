package com.unis.core.fileupload;


import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;

public class File
{
  private SmartUpload m_parent;
  private int m_startData;
  private int m_endData;
  private int m_size;
  private String m_fieldname;
  private String m_filename;
  private String m_fileExt;
  private String m_filePathName;
  private String m_contentType;
  private String m_contentDisp;
  private String m_typeMime;
  private String m_subTypeMime;
  private String m_contentString;
  private boolean m_isMissing;
  public static final int SAVEAS_AUTO = 0;
  public static final int SAVEAS_VIRTUAL = 1;
  public static final int SAVEAS_PHYSICAL = 2;

  File()
  {
    this.m_startData = 0;
    this.m_endData = 0;
    this.m_size = 0;
    this.m_fieldname = new String();
    this.m_filename = new String();
    this.m_fileExt = new String();
    this.m_filePathName = new String();
    this.m_contentType = new String();
    this.m_contentDisp = new String();
    this.m_typeMime = new String();
    this.m_subTypeMime = new String();
    this.m_contentString = new String();
    this.m_isMissing = true;
  }

  public void saveAs(String s)
    throws IOException, SmartUploadException
  {
    saveAs(s, 0);
  }

  public void saveAs(String s, int i)
    throws IOException, SmartUploadException
  {
    String s1 = new String();
    s1 = this.m_parent.getPhysicalPath(s, i);
    if (s1 == null)
      throw new IllegalArgumentException("There is no specified destination file (1140).");
    try
    {
      java.io.File file = new java.io.File(s1);
      FileOutputStream fileoutputstream = new FileOutputStream(file);
      fileoutputstream.write(this.m_parent.m_binArray, this.m_startData, this.m_size);
      fileoutputstream.close();
    }
    catch (IOException ioexception)
    {
      throw new SmartUploadException("File can't be saved (1120).");
    }
  }

  public void fileToField(ResultSet resultset, String s)
    throws ServletException, IOException, SmartUploadException, SQLException
  {
    long l = 0L;
    int i = 65536;
    int j = 0;
    int k = this.m_startData;
    if (resultset == null)
      throw new IllegalArgumentException("The RecordSet cannot be null (1145).");
    if (s == null)
      throw new IllegalArgumentException("The columnName cannot be null (1150).");
    if (s.length() == 0)
      throw new IllegalArgumentException("The columnName cannot be empty (1155).");
    l = BigInteger.valueOf(this.m_size).divide(BigInteger.valueOf(i)).longValue();
    j = BigInteger.valueOf(this.m_size).mod(BigInteger.valueOf(i)).intValue();
    try
    {
      for (int i1 = 1; i1 < l; ++i1)
      {
        resultset.updateBinaryStream(s, new ByteArrayInputStream(this.m_parent.m_binArray, k, i), i);
        k = (k != 0) ? k : 1;
        k = i1 * i + this.m_startData;
      }

      if (j <= 0) return;
      resultset.updateBinaryStream(s, new ByteArrayInputStream(this.m_parent.m_binArray, k, j), j);
    }
    catch (SQLException sqlexception)
    {
      byte[] abyte0 = new byte[this.m_size];
      System.arraycopy(this.m_parent.m_binArray, this.m_startData, abyte0, 0, this.m_size);
      resultset.updateBytes(s, abyte0);
    }
    catch (Exception exception)
    {
      throw new SmartUploadException("Unable to save file in the DataBase (1130).");
    }
  }

  public boolean isMissing()
  {
    return this.m_isMissing;
  }

  public String getFieldName()
  {
    return this.m_fieldname;
  }

  public String getFileName()
  {
    return this.m_filename;
  }

  public String getFilePathName()
  {
    return this.m_filePathName;
  }

  public String getFileExt()
  {
    return this.m_fileExt;
  }

  public String getContentType()
  {
    return this.m_contentType;
  }

  public String getContentDisp()
  {
    return this.m_contentDisp;
  }

  public String getContentString()
  {
    String s = new String(this.m_parent.m_binArray, this.m_startData, this.m_size);
    return s;
  }

  public String getTypeMIME()
    throws IOException
  {
    return this.m_typeMime;
  }

  public String getSubTypeMIME()
  {
    return this.m_subTypeMime;
  }

  public int getSize()
  {
    return this.m_size;
  }

  protected int getStartData()
  {
    return this.m_startData;
  }

  protected int getEndData()
  {
    return this.m_endData;
  }

  protected void setParent(SmartUpload smartupload)
  {
    this.m_parent = smartupload;
  }

  protected void setStartData(int i)
  {
    this.m_startData = i;
  }

  protected void setEndData(int i)
  {
    this.m_endData = i;
  }

  protected void setSize(int i)
  {
    this.m_size = i;
  }

  protected void setIsMissing(boolean flag)
  {
    this.m_isMissing = flag;
  }

  protected void setFieldName(String s)
  {
    this.m_fieldname = s;
  }

  protected void setFileName(String s)
  {
    this.m_filename = s;
  }

  protected void setFilePathName(String s)
  {
    this.m_filePathName = s;
  }

  protected void setFileExt(String s)
  {
    this.m_fileExt = s;
  }

  protected void setContentType(String s)
  {
    this.m_contentType = s;
  }

  protected void setContentDisp(String s)
  {
    this.m_contentDisp = s;
  }

  protected void setTypeMIME(String s)
  {
    this.m_typeMime = s;
  }

  protected void setSubTypeMIME(String s)
  {
    this.m_subTypeMime = s;
  }

  public byte getBinaryData(int i)
  {
    if (this.m_startData + i > this.m_endData)
      throw new ArrayIndexOutOfBoundsException("Index Out of range (1115).");
    if (this.m_startData + i <= this.m_endData)
      return this.m_parent.m_binArray[(this.m_startData + i)];

    return 0;
  }
}