package com.gl.dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Jdbc {
	
	public static void insert() {
		System.out.println("Connecting to Database");
		String url="jdbc:mysql://localhost:3306/gl";
		String username="root";
		String password="9kkk";
		String query = "insert into employee values(1,'Saran','saran96@gl.com',1000799999)";
		String query2 = "insert into employee values(2,'Camodev','cam08@gl.com',1233649541)";
		String query3 = "insert into employee values(3,'Laalprasad','laal75@gl.com',1560059871)";
		String query4 = "insert into employee values(4,'Raja','raja45@gl.com',7506549991)";
		String query5 = "insert into employee values(5,'Zebesh','zeb87@gl.com',7806549871)";
		try {
			Connection con=DriverManager.getConnection(url, username, password);
			Statement st=con.createStatement();
			int rows =st.executeUpdate(query);
			int row2 =st.executeUpdate(query2);
			int row3 =st.executeUpdate(query3);
			int row4 =st.executeUpdate(query4);
			int row5 =st.executeUpdate(query5);
			System.out.println("No of Rows Get Affected : "+(rows+row2+row3+row4+row5));
			System.out.println("Excecuted Success Fully");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void modify() {
		System.out.println("connection to database");
		String url="jdbc:mysql://localhost:3306/gl";
        String username="root";
        String password="9kkk";
       
        String querry="alter table employee modify Email_Id varchar(30) not null";
        
        try {
			Connection con =DriverManager.getConnection(url,username,password);
			Statement st=con.createStatement();
			int row=st.executeUpdate(querry);
			System.out.println("no of table change"+row);
		
	}catch (SQLException e) {
		e.printStackTrace();
	}
	}
	
	public static void update() {
		//Update the name of employee Id 3 to Karthik and phone number to 1234567890.
		String url="jdbc:mysql://localhost:3306/gl";
        String username="root";
        String password="9kkk";
       
        String querry="update employee set emp_Name='Karthik' where Id=3";
        String querry2="update employee set phone_number='1234567890' where Id=3";
        try {
			Connection con =DriverManager.getConnection(url,username,password);
			Statement st=con.createStatement();
			int row=st.executeUpdate(querry);
			int row1=st.executeUpdate(querry2);
			System.out.println("Rename Has Been Done for the table "+(row+row1));
			con.close();
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static void deleteById() {
		String url="jdbc:mysql://localhost:3306/gl";
		String username="root";
		String password="9kkk";
		String query="delete from employee where Id=3";
		String query1="delete from employee where Id=4";
		try {
			Connection con =DriverManager.getConnection(url,username,password);
			Statement st=con.createStatement();
			int rows=st.executeUpdate(query);
			int row1=st.executeUpdate(query1);
			System.out.println("No Of Rows Get Affected : "+(rows+row1));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void deletingAllRecords() {
		String url="jdbc:mysql://localhost:3306/gl";
		String username="root";
		String password="9kkk";
		String query="truncate employee";
		try {
			Connection con =DriverManager.getConnection(url,username,password);
			Statement st=con.createStatement();
			int rows =st.executeUpdate(query);
			System.out.println("All records get deleted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}

