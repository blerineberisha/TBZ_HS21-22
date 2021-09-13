package com.company;

public class Node {
    private Object item;
    private Node next;

    public Node(Object value){
        next = null;
        item = value;
    }

    public Node(Object value, Node nextValue){
        next = nextValue;
        item = value;
    }

    public Object getItem() {
        return item;
    }

    public void setItem(Object item) {
        this.item = item;
    }

    public Node getNext() {
        return next;
    }

    public void setNext(Node next) {
        this.next = next;
    }
}
