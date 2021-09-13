package com.company;

import java.io.*;
import java.time.LocalDate;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws Exception {

        //Script 1
        String fileName = "./randomText.txt";
        try {
            FileReader fr = new FileReader(fileName);
            BufferedReader br = new BufferedReader(fr);
            br.readLine();
        } catch (FileNotFoundException e) {
            System.err.println("File not found.");
        }

        //Script 2
        try {
            String pathName = "./randomText.txt";
            File file = new File("./randomText.txt");
            Scanner sc = new Scanner(file);
            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                System.out.println(line);
            }
            sc.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        //Script 3 + 4
        try {
            System.out.println("Enter a name: ");
            String pathName = "./uebung.csv";
            File csvFile = new File("./uebung.csv");

            Scanner scan = new Scanner(csvFile);
            Scanner input = new Scanner(System.in);
            String firstname = input.nextLine();
            while (scan.hasNextLine()) {
                String line = scan.nextLine();
                String[] lineParts = line.split(";");
                String[] lines = line.split("\n");
                for (String p : lines) {
                    int i = 0;
                    if (lineParts[i + 1].toLowerCase().equals(firstname.toLowerCase())) {
                        for (i = 0; i < lineParts.length; i++) {
                            i = i + 2;
                            int intVal = Integer.parseInt(lineParts[i]);
                            int age = (LocalDate.now().getYear() - intVal);
                            System.out.println(p + "; " + age + " years old");
                        }

                    }

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        //Script 5
        MyWriter writer = new MyWriter();
        writer.printReverse();

        //Random number generator
        writer.generateNums();
    }
}