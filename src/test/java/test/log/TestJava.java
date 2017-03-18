package test.log;

public class TestJava {
	/**@author  zhangdelei
	 * @data 2016年7月13日下午1:18:37
	 *@Description use test
	 */
	public void fun(){
		String a="bbbbb";
		System.out.println(a);
	}
	public static void main(String[] args) {
		String a="aaaaaa";
		TestJava b=new TestJava();
		b.fun();
		System.out.println(a);
	}
}
