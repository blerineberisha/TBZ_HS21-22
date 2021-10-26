package com.company;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * -----------------------------------------------------
 * Author:          Blerinë Berisha
 * Date:            11.10.2021
 * Project:         JUnit Testing
 * Description:     This project is about getting comfor-
 *                  table with JUnit Testing.
 * ------------------------------------------------------
 **/
public class Friendships {
    private final Map<String, ArrayList<String>> friendships = new HashMap<String, ArrayList<String>>();

    public void makeFriends(String person1, String person2) {
        addFriend(person1, person2);
        addFriend(person2, person1);
    }
    public boolean addFriend(String person1, String person2){
        if (!friendships.containsKey(person1)){
            friendships.put(person1, new ArrayList<>());
        }if(!friendships.get(person1).contains(person2)){
            friendships.get(person1).add(person2);
        }
        return false;
    }
    public boolean isFriend(String person1, String person2){
        if(friendships.get(person1).contains(person2)){
            return true;
        }
        return false;
    }

    public Map<String, ArrayList<String>> getFriendships() {
        return friendships;
    }
}
