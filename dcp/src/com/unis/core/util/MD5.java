package com.unis.core.util;

import java.security.MessageDigest;

/**
 * MD5�ӽ���
 */
public class MD5 {
    
    public static String getMD5ofStr(String origString) {
        String origMD5 = null;
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            byte[] result = md5.digest(origString.getBytes());
            origMD5 = byteArray2HexStr(result);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return origMD5;
    }

    
    private static String byteArray2HexStr(byte[] bs) {
        StringBuffer sb = new StringBuffer();
        for (byte b : bs) {
            sb.append(byte2HexStr(b));
        }
        return sb.toString();
    }

    
    private static String byte2HexStr(byte b) {
        String hexStr = null;
        int n = b;
        if (n < 0) {
            n = b & 0x7F + 128;
        }
        hexStr = Integer.toHexString(n / 16) + Integer.toHexString(n % 16);
        return hexStr.toUpperCase();
    }

    public static String getMD5ofStr(String origString, int times) {
        String md5 = getMD5ofStr(origString);
        for (int i = 0; i < times - 1; i++) {
            md5 = getMD5ofStr(md5);
        }
        return getMD5ofStr(md5);
    }

    public static boolean verifyPassword(String inputStr, String MD5Code) {
        return getMD5ofStr(inputStr).equals(MD5Code);
    }

    
    public static boolean verifyPassword(String inputStr, String MD5Code, int times) {
        return getMD5ofStr(inputStr, times).equals(MD5Code);
    }
}
