package com.unis.core.util;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

public class ShowCount {
	
	public static int  count;
	
	public  static int show(){
		try {
			Scanner in = new Scanner(new FileReader("count.txt"));
			count = in.nextInt();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return count;
	}
}
