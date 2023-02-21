package kr.co.taihan.front.common.util;


public class PasswordValidate {
	
	public boolean contains(String word, String source) {
		return source.contains(word);
	}
	
	/**
	 * 같은 숫자 또는 문자가 반복되는지 확인
	 * 
	 * @param length
	 * @return
	 */
	public String repeatWord(int length) {
		StringBuilder builder = new StringBuilder();
		builder.append("(\\w)");
		
		for (int i = 0; i < length - 1; i++) {
			builder.append("\\1");
		}
		
		return builder.toString();
	}
	
	/**
	 * 숫자, 영어, 특수문자 조합 확인
	 * @return
	 */
	public String digitAndWordAndSpecial() {
		return "([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])";
	}
	
	/**
	 * 0 - 9 숫자
	 * 
	 * @param length
	 * @return
	 */
	public String getDigit(int length) {
		final int repeat = 10;
		int repeatRepair = length - 2;
		
		if (repeatRepair < 0) {
			repeatRepair = 0;
		}
		
		StringBuilder builder = new StringBuilder();
		
		for (int digit = 0; digit < repeat - repeatRepair; digit++) {
			if (digit > 0 && digit < repeat - repeatRepair) {
				builder.append("|");
			}
			
			builder.append("(");
			for (int i = digit; i < length + digit; i++) {
				if (i > repeat - 1) {
					builder.append(0);
				} else {
					builder.append(i);	
				}
			}
			
			builder.append(")");
		}
		
		return builder.toString();
	}
	
	/**
	 * 0 - 9 역방향 숫자
	 * 
	 * @param length
	 * @return
	 */
	public String getDigitReverse(int length) {
		final int repeat = 10;
		int repeatRepair = length - 2;
		
		if (repeatRepair < 0) {
			repeatRepair = 0;
		}
		
		StringBuilder builder = new StringBuilder();
		
		for (int digit = repeat; digit > repeatRepair; digit--) {
			if (digit < repeat && digit > 0) {
				builder.append("|");
			}
			
			builder.append("(");
			for (int i = digit; i > digit - length; i--) {
				if (i > repeat - 1) {
					builder.append(0);
				} else {
					builder.append(i);
				}
			}
			
			builder.append(")");
		}
		
		return builder.toString();
	}
	
	/**
	 * a - z 소문자 알파벳
	 * 
	 * @param length
	 * @return
	 */
	public String getAlphabet(int length) {
		final char repeat = 'z' + 1;
		int repeatRepair = length - 2;
		
		if (repeatRepair < 0) {
			repeatRepair = 0;
		}
		
		StringBuilder builder = new StringBuilder();
		
		for (char alphabet = 'a'; alphabet < repeat - repeatRepair; alphabet++) {
			if (alphabet > 'a' && alphabet < repeat - repeatRepair) {
				builder.append("|");
			}
			
			builder.append("(");
			for (char i = alphabet; i < length + alphabet; i++) {
				if (i > repeat - 1) {
					builder.append('a');	
				} else {
					builder.append(i);	
				}
			}
			
			builder.append(")");
		}
		
		return builder.toString();
	}
	
	/**
	 * a - z 소문자 역방향 알파벳
	 * @param length
	 * @return
	 */
	public String getAlphabetReverse(int length) {
		final char repeat = 'z' + 1;
		int repeatRepair = length - 2;
		
		if (repeatRepair < 0) {
			repeatRepair = 0;
		}
		
		StringBuilder builder = new StringBuilder();
		
		for (char alphabet = repeat; alphabet > 'a' + repeatRepair; alphabet--) {
			if (alphabet < repeat && alphabet > 'a') {
				builder.append("|");
			}
			
			builder.append("(");
			for (char i = alphabet; i > alphabet - length; i--) {
				if (i > repeat - 1) {
					builder.append('a');	
				} else {
					builder.append(i);	
				}
			}
			
			builder.append(")");
		}
		
		return builder.toString();
	}
}
