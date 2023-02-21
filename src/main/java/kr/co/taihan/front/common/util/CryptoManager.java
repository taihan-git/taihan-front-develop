package kr.co.taihan.front.common.util;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Base64;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class CryptoManager {

	private static String SECRET_KEY = "qwerpoiulkjhyhnmrfcdfgijpbgywqde";

	private static String iv = "0000000000000000";

	// private static SecretKeySpec KEYSPEC = new
	// SecretKeySpec(SECRET_KEY.getBytes(), "AES");
	private static Key keySpec;

	public static String encodeStr(String str) throws  UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException,
		InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
		keySpec = new SecretKeySpec(SECRET_KEY.getBytes("UTF-8"), "AES");
		Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
		
		c.init(Cipher.ENCRYPT_MODE, keySpec, new IvParameterSpec(iv.getBytes()));
		
		byte[] encrypted = c.doFinal(str.getBytes("UTF-8"));
		return new String(Base64.getEncoder().encode(encrypted));
	}

	public static String decodeStr(String str)
			throws UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException,
			InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
		keySpec = new SecretKeySpec(SECRET_KEY.getBytes("UTF-8"), "AES");
		Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
        AlgorithmParameterSpec ivSpec = new IvParameterSpec(iv.getBytes());
        
		c.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);
		byte[] decoded = Base64.getDecoder().decode(str.getBytes());
		return new String(c.doFinal(decoded), "UTF-8");
	}

	public static String simpleEncode(String strVal) {
		String result = strVal;
		result = result.replaceAll("=", "%3D");
		result = result.replaceAll("&", "%26");
		result = result.replaceAll("%", "%25");
		result = result.replaceAll(" ", "%20");
		return result;
	}

	public static String simpleDecode(String strVal) {
		String result = strVal;
		result = result.replaceAll("%3D", "=");
		result = result.replaceAll("%26", "&");
		result = result.replaceAll("%25", "%");
		result = result.replaceAll("%20", " ");
		return result;
	}

	/**
	 * SHA-256
	 * 
	 * @param str
	 * @return
	 */
	public static String encryptSha256(String str) {
		String SHA = "";
		try {
			MessageDigest sh = MessageDigest.getInstance("SHA-256");
			sh.update(str.getBytes());
			byte byteData[] = sh.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			SHA = sb.toString();

		} catch (NoSuchAlgorithmException e) {
			SHA = null;
		}
		return SHA;
	}
	
	/**
     * SHA-1
     * @param str
     * @return
     */
    public static String encryptSha1(String str) {
        String SHA = "";
        try {
            MessageDigest sh = MessageDigest.getInstance("SHA-1");
            sh.update(str.getBytes());
            byte byteData[] = sh.digest();
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < byteData.length; i++) {
                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16)
                        .substring(1));
            }
            SHA = sb.toString().toUpperCase();

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            SHA = null;
        }
        return SHA;
    }
    
    /**
     * SHA-256 matches
     * @param raw 평문 비밀번호 , encode 인코딩된 비밀번호
     * @return
     */
    public static boolean matchesSha256(String raw, String encode) {
        boolean matches = false;
        if(encryptSha256(raw).matches(encode)) {
            matches = true;
        }
        return matches;
    }
    
    /**
     * SHA-1 matches
     * @param raw 평문 비밀번호 , encode 인코딩된 비밀번호
     * @return
     */
    public static boolean matchesSha1(String raw, String encode) {
        boolean matches = false;
        if(encryptSha1(raw).matches(encode)) {
            matches = true;
        }
        return matches;
    }

}
