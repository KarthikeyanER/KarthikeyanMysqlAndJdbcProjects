package com.gl.main;

import java.util.Scanner;

import com.gl.dao.Jdbc;

public class Main {

	public static void main(String[] args) {
		Jdbc jdbc=new Jdbc();
		System.out.println("Press the number to do operation");
		System.out.println("1.insert");
		System.out.println("2.update");
		System.out.println("3.Modify");
		System.out.println("4.delete");
		System.out.println("5.Truncate table");
		Scanner sc=new Scanner(System.in);
		
		while (true) {
            System.out.print("Enter a number (or) 0 to exit): ");
            System.out.println();
            int option =sc.nextInt();


            if (option == 0) {
                break;
            }
		switch(option){
		case 1:
			jdbc.insert();
			System.out.println();
			System.out.println("Inserted Sucssecfully");
			break;
		case 2:
			jdbc.update();
			System.out.println();
			System.out.println("Updated Sucssefully");
			break;
		case 3:
			jdbc.modify();
			System.out.println();
			System.out.println("Modified Sucssefully");
			break;
		case 4:
			jdbc.deleteById();
			System.out.println();
			System.out.println("deleted Sucssefully");
			break;
		case 5:
			jdbc.deletingAllRecords();
			System.out.println();
			System.out.println("deleted records ");
			break;
		default:
            System.out.println("You entered an invalid option");
            break;
			
			
		}
		}
		

	

			

	}

}
