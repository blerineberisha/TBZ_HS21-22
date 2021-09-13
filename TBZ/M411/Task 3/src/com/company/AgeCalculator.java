package com.company;

import java.time.*;
import java.util.Scanner;

import static java.time.LocalDate.now;

public class AgeCalculator {
    Scanner scan = new Scanner(System.in);
    public void tellAge(){
        System.out.println("What's your name?");
        String name = scan.next();
        System.out.println("What year were you born in?");
        int year = scan.nextInt();
        int age = (LocalDate.now().getYear() - year);
        System.out.println(name + ", you're turning " + age + " years old this year.");
    }
}
