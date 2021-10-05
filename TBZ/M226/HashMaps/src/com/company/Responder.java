package com.company;

import java.util.HashMap;

public class Responder {
    InputReader ir = new InputReader();
    HashMap responseMap = new HashMap();
    private void fillResponseMap(){
        responseMap.put("slow", "I think this has to do with your hardware");
        responseMap.put("bug", "All software has bugs. That's life, deal with it.");
        responseMap.put("crash", "Have you tried turning it off and on again?");
    }

    private void printResponse(){
        System.out.println("Please describe your problem.");
        String[] input = ir.readInput();

        for(int i=0; i < input.length; i++)
        if(responseMap.containsKey(input[i])){
            System.out.println(responseMap.get(input[i]));
        }
        else{
            System.out.println("I don't know either man.");
            break;
        }
    }

    public void startSupport(){
        fillResponseMap();
        printResponse();
    }
}