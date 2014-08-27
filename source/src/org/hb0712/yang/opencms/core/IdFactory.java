package org.hb0712.yang.opencms.core;

import java.util.Random;
import java.util.Stack;

public class IdFactory {

	private static final char[] KEYS = {'0','1','2','3','4','5','6','7','8','9',
		'Q','W','E','R','T','Y','U','I','O','P',
		'A','S','D','F','G','H','J','K','L',
		'Z','X','C','V','B','N','M'};

	private static String _10_to_x(long number) {
		int x = KEYS.length;
		Long rest = number;
		Stack<Character> stack = new Stack<Character>();
		StringBuilder result = new StringBuilder(0);
		while (rest != 0) {
			stack.add(KEYS[new Long((rest - (rest / x) * x)).intValue()]);
			rest = rest / x;
		}
		while (!stack.isEmpty()) {
			result.append(stack.pop());
		}
		return result.toString();
	}

	private static String create(int length){
		char[] numbersAndLetters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
		char[] randBuffer = new char[length];
		Random randGen = new Random();
		for(int i=0; i<randBuffer.length; i++){
			randBuffer[i] = numbersAndLetters[randGen.nextInt(35)];
		}
		return new String(randBuffer);
	}

	/*
	 * ����Nλ�������
	 */
	public static String getTopicid(){
		return create(8);
	}

	public static String getDocid(String suffix){
		return create(8) + suffix;
	}
	/*
	 * ��õ�ǰ��ʱ�䣬�����������KEYS.length���Ƶ��ַ���������
	 */
	public static String getId(){
		long times = System.currentTimeMillis();
		return IdFactory._10_to_x(times/10);// 10 ��һ��Լ����û��ҵ���ϵ�����
	}
}