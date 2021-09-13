package com.company;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Random;
import java.util.Scanner;

public class MyWriter {
    PrintWriter pw = new PrintWriter("unoReverse.txt");
    PrintWriter pr = new PrintWriter("Numbers.txt");

    public MyWriter() throws FileNotFoundException {
    }

    public void printReverse() {
        System.out.println("Enter a text. It will be printed in unoReverse.txt");
        Scanner scan = new Scanner(System.in);
        String text = scan.nextLine();
        pw.write(new StringBuffer(text).reverse().toString());
        pw.close();
    }

    public void generateNums(){
        System.out.println("Enter how many random numbers you want generated.");
        Scanner scan = new Scanner(System.in);
        int num = scan.nextInt();
        for(int i=1; i<=num; i++){
            Random r = new Random();
            int rand = r.nextInt(10000);
            pr.write(rand + "\n");
        }
        pr.close();
    }
}
