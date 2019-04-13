import java.io.*;
import java.util.*;
import java.text.SimpleDateFormat;

class DateDemo
{
	public static void main(String args[])
	{
		Date date=new Date();
		SimpleDateFormat dt = new SimpleDateFormat("dd-MM-yyyy");
		String s = dt.format(date);
		System.out.println(s);
	}
}
