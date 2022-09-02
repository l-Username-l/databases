import java.sql.*;

public class ConnectMySQL {
   static final String DB_URL = "jdbc:mysql://localhost/world";
   static final String USER = "root";
   static final String PASS = "tbrs00002b";
   static final String QUERY = "select ID, NAME, CountryCode, district, population " + "from 도식1";

   public static void main(String[] args) {
      // Open a connection
      try{
        Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(QUERY);
         // Extract data from result set
         while (rs.next()) {
            // Retrieve by column name
            System.out.print("ID: " + rs.getString("id"));
            System.out.print(", Age: " + rs.getString("name"));
            System.out.print(", First: " + rs.getString("countrycode"));
            System.out.print(", Last: " + rs.getString("district"));
            System.out.println(", First: " + rs.getInt("population"));
         }
      } catch (Exception e) {
         e.printStackTrace();
      } 
   }
}