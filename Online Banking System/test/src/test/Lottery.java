package test;

import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

public class Lottery {

	int userNumber[]=new int[5];
	int lotteryNumbers[]= new int [5];
	ArrayList <Integer> al = new ArrayList<Integer>();
	
	Random rd = new Random();
	
	public Lottery() {
		
		for(int i = 0 ; i<5 ; i++) {
			lotteryNumbers[i]=rd.nextInt();
		}
	}
	
	public void userNumber() {

		Scanner sc = new Scanner(System.in);
		
		for(int i=0 ; i<5 ; i++) {
	
		int y= i+1;
		System.out.println("enter "+y+ "number : ");
		userNumber[i]=sc.nextInt();
		
		}
	
	}
	
	public void Match() {
		int j =0;
		
		for(int i=0 ;i<5 ;i++) {
			

			if(lotteryNumbers[i] == userNumber[i]) {
				j++;
				al.add(lotteryNumbers[i]);
			}
			
		}
		
		System.out.println("Numbers ofMatching " +j);
		System.out.println("matching numbers ");
		
		for(Integer x:al) {
			System.out.println(x);
		}
		
	}	
		
}

public class Main {
	
	public static void main (String[] args) {
		
		Lottery lt = new Lottery();
		
		lt.userNumber();
		lt.Match();
	}
}
