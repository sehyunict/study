package chapter2.java.study.study2;

public class chapter2_practice {
	public static void main(String[] args) {
		
		/**
		 * [Chapter2_Wrapper Class]
		 * 1. 방식 / 언박싱 
		 */
		Integer num = new Integer(17);  //박싱
		int n = num.intValue(); 	//언박싱
		System.out.println(n);
		
		/**
		 * [Chapter2_Wrapper Class]
		 * 1. 자동 방식 / 자동 언박싱 
		 */
		Integer num2 = 17;	//자동 방식
		int n2 = num;		//자동 언박싱
		System.out.println(n2);
		
		/**
		 * [Chapter2_Wrapper Class]
		 * 3. 문자열을 기본 타입값으로 변환
		 */
		String str = "10";
		String str2 = "10.5";
		String str3 = "true";
		
		byte b = Byte.parseByte(str);
		int i = Integer.parseInt(str);
		short s = Short.parseShort(str);
        long l = Long.parseLong(str);
        float f = Float.parseFloat(str2);
        double d = Double.parseDouble(str2);
        boolean bool = Boolean.parseBoolean(str3);
		
        System.out.println("문자열 byte값 변환 : "+b);
        System.out.println("문자열 int값 변환 : "+i);
        System.out.println("문자열 short값 변환 : "+s);
        System.out.println("문자열 long값 변환 : "+l);
        System.out.println("문자열 float값 변환 : "+f);
        System.out.println("문자열 double값 변환 : "+d);
        System.out.println("문자열 boolean값 변환 : "+bool);	
		
		
		
		
		
	}

}
