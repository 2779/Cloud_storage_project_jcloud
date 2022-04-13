
public class test {
public static void main(String args[]){
       try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud","root", "Mysql@123");
            con.setAutoCommit(true);
            st = con.createStatement();
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
System.out.println(con);
}
}
