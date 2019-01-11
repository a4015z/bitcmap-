
public class test {
	 public static void main(String[] args) throws Exception {
		 try {
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 System.out.println("드라이버 로드 ");
		 }catch(ClassNotFoundException e){
			 System.out.println();
			 System.out.println();
			 System.out.println();
		 }
	 }
}
