package com.company;

import java.util.Arrays;
import java.util.Collections;
import java.util.Random;
import java.util.Scanner;

public class ArrayMethods {
    static Scanner scan = new Scanner(System.in);

    public static int[] insertAtBeginning() {
        System.out.println("How many numbers would you like in the array?");
        int num = scan.nextInt();
        int[] arr = new int[num];
        Random rd = new Random();
        for (int i = 1; i < arr.length; i++) {
            arr[i] = rd.nextInt(10);
        }
        System.out.println("Enter the number you'd like at the beginning: ");
        int start = scan.nextInt();
        arr[0] = start;
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }
        return arr;
    }

    public static void insertAtEnd() {
        System.out.println("How many numbers would you like in the array?");
        int num = scan.nextInt();
        int[] arr = new int[num];
        Random rd = new Random();
        for (int i = 0; i < arr.length - 1; i++) {
            arr[i] = rd.nextInt(10);
        }
        System.out.println("Enter the number you'd like at the end: ");
        int start = scan.nextInt();
        arr[arr.length - 1] = start;
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }
    }

    public static void initArray(Integer num) {
        Random rd = new Random();
        Integer[] arr = new Integer[num];
        System.out.println("----------------------------------------");
        System.out.println("| " + num + " random numbers between 0 and 10:  |");
        System.out.println("----------------------------------------");
        for (int i = 0; i < arr.length; i++) {
            arr[i] = rd.nextInt(10);
            System.out.println("|                   " + arr[i] + "                  |");
        }
        System.out.println("----------------------------------------");
        int max = Collections.max(Arrays.asList(arr));
        int min = Collections.min(Arrays.asList(arr));

        System.out.println("| Minimum and maximum values:          |");
        System.out.println("----------------------------------------");
        System.out.println("| Min:              " + min + "                  |");
        System.out.println("| Max:              " + max + "                  |");
        System.out.println("----------------------------------------");
    }

    public static void reverseArray() {
        int[] arr = new int[10];
        for (int i = 9; i >= 0; i--) {
            System.out.println("Enter a number: ");
            arr[i] = scan.nextInt();
        }
        System.out.println("----------------------------------------");
        System.out.println("| Array:                               |");
        System.out.println("----------------------------------------");
        for (int i = 0; i < arr.length; i++) {
            System.out.println("|                   " + arr[i] + "                  |");
        }
        System.out.println("----------------------------------------");
    }

    public static void reverseString() {
        System.out.println("Enter a text: ");
        String str = scan.nextLine();
        char[] chars = str.toCharArray();
        for (int i = 0, j = str.length() - 1; i < j; i++, j--) {
            char ch = chars[i];
            chars[i] = chars[j];
            chars[j] = ch;
        }
        for (char c : chars) {
            System.out.print(c);
        }
    }

    public static void bubbleSort() {
        System.out.println("Enter the size of the array: ");
        int num = scan.nextInt();
        int[] arr = new int[num];
        Random rd = new Random();
        for (int i = 1; i < arr.length; i++) {
            arr[i] = rd.nextInt(10);
        }
        int n = arr.length;
        System.out.println("Sorted array: ");
        for (int i = 0; i < n; i++) {
            for (int j = 1; j < (n - i); j++) {
                if (arr[j - 1] > arr[j]) {
                    int temp = arr[j - 1];
                    arr[j - 1] = arr[j];
                    arr[j] = temp;
                }
            }
            System.out.println(arr[i]);
        }
    }
}
