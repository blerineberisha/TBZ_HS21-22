package com.company;

import java.util.HashMap;
import java.util.Locale;

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
        if(ir.readInput().contains(responseMap.keySet().toString())){
            System.out.println();
        }
    }
}
