package com.company;

import java.util.Scanner;

public class InputReader {
Scanner scan = new Scanner(System.in);
    private String readInput() {
        System.out.print("> ");
        String input = scan.nextLine();
        String result = input.trim();
        return input.toLowerCase();
    }

    public Scanner getScan() {
        return scan;
    }

    public void setScan(Scanner scan) {
        this.scan = scan;
    }
}
