package com.company;

public class Main {

    public static void main(String[] args) {
        MyLinkedList list = new MyLinkedList();
        list.addNode("Stuff");
        list.addNode(13);
        list.addNode("More stuff!");
        list.printList(list);
        list.printReverse(list);
        list.removeElement(list, "More stuff!");
        list.setListCount(list.getListCount()-1);
        list.printList(list);
    }
}
