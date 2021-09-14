package com.company;

import java.util.Scanner;

public class MyLinkedList {
    private Node head;
    private int listCount;

    public MyLinkedList() {
        head = new Node(null);
        listCount = 0;
    }

    public void addNode(Object value) {
        Node newElement = new Node(value);
        Node current = head;

        while (current.getNext() != null) {
            current = current.getNext();
            listCount++;
        }
        current.setNext(newElement);
    }


    public void printReverse(MyLinkedList list) {
        int count = list.getListCount();
        for (int i = 0; i < list.getListCount(); i++) {
            Node current = head;
            for (int j = 0; j < count; j++) {
                current = current.getNext();
            }
            System.out.println(current.getItem());
            count--;
        }
    }

    public void printList(MyLinkedList list) throws NullPointerException {
        try {
            Node current = head.getNext();
            for (int i = 0; i <= list.getListCount(); i++) {
                System.out.println(current.getItem());
                current = current.getNext();
            }
        } catch (Exception e) {
        }
    }

    public void removeElement(MyLinkedList list, String search) throws NullPointerException {
        try {
            Node current = head.getNext();
            while (current.getNext() != null && current.getItem() != search) {
                if (current.getNext().getItem().equals(search)) {
                    if (current.getNext().getNext() != (null)) {
                        Node next = current.getNext().getNext();
                        current.setNext(next);
                    } else current.setNext(null);
                }
                current = current.getNext();
            }
            listCount--;
        }catch(Exception e){
            e.printStackTrace();
        }
    }


    public Node getHead() {
        return head;
    }

    public void setHead(Node head) {
        this.head = head;
    }

    public int getListCount() {
        return listCount;
    }

    public void setListCount(int listCount) {
        this.listCount = listCount;
    }
}
