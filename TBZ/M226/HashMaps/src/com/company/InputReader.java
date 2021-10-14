package com.company;

import java.util.Scanner;

public class InputReader {
    Scanner scan = new Scanner(System.in);
    public String[] readInput() {
        System.out.print("> ");
        String input = scan.nextLine();
        String result = input.trim().toLowerCase();
        String[] words = input.split(" ");
        return words;
    }

    public Scanner getScan() {
        return scan;
    }

    public void setScan(Scanner scan) {
        this.scan = scan;
    }
}