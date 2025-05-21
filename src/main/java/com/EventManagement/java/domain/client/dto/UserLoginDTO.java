package com.EventManagement.java.domain.client.dto;

public class UserLoginDTO {
    
    private int userID;
    
    private String passWord;

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public UserLoginDTO(int userID, String passWord) {
        this.userID = userID;
        this.passWord = passWord;
    }

    @Override
    public String toString() {
        return "UserLoginDTO [userID=" + userID + ", passWord=" + passWord + "]";
    }


}
