package com.company;

public class Message {
    public String determineType(String type) {
        switch(type.toLowerCase()){
            case "h": type = "Hello, ";
                break;
            case "b": type = "Goodbye, ";
                break;
        }
        return type;
    }

    public void sayMessage(String name, String type){
        System.out.println(determineType(type)+name);
    }
}
