package com.company;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;
/**
 * -----------------------------------------------------
 * Author:          Blerinë Berisha
 * Date:            date
 * Project:         project name
 * Description:     This project is about getting comfor-
 *                  table with JUnit Testing.
 * ------------------------------------------------------
 **/
public class FriendShipTest {
    Friendships friendships = new Friendships();

    @BeforeEach
    void setUp(){
        friendships.makeFriends("Lara", "Marisa");
        friendships.makeFriends("Sky", "Milena");
        friendships.makeFriends("Alisha", "Blerinë");
        friendships.makeFriends("Lara", "Eric");
        friendships.makeFriends("Noëmi", "Blerinë");
    }

    @Test
    void addFriend() throws Exception{
        assertTrue(friendships.addFriend("Alisha", "Sky"));
    }

    @Test
    void isFriend(){
        assertTrue(friendships.isFriend("Sky", "Milena"));
        assertFalse(friendships.isFriend("Sky", "Alisha"));
    }
}
