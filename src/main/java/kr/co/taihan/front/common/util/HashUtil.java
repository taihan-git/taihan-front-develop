package kr.co.taihan.front.common.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashUtil
{
	public static String encryptPassword(String id, String pw) throws Exception
	{
		StringBuffer message = new StringBuffer();
		StringBuffer encrypted = new StringBuffer();
		try
		{
			MessageDigest md = MessageDigest.getInstance("SHA-512");
			message.append(id);
			message.append(pw);
			md.update(message.toString().getBytes());
			
			byte[] mb = md.digest();
			for (int i = 0; i < mb.length; i++) {
				byte temp = mb[i];
				String s = Integer.toHexString(temp & 0xFF);
				while (s.length() < 2) {
					s = "0" + s;
				}
				s = s.substring(s.length() - 2);
				encrypted.append(s);
			}
		} 
		catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
		{
			localNoSuchAlgorithmException.getMessage();
		}
		return encrypted.toString();
	}
}