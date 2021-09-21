package model;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;


@Getter
@Setter
public class User implements Serializable {

    protected Long userId;
    protected String email;
    protected String password;
    protected String fullName;
    protected String birthday;
    protected String sex;
    protected String address;
    protected String city;
    protected String phoneNumber;

    public User() {
    }

    public User(String email, String password, String fullName, String birthday, String sex, String address, String city, String phoneNumber) {
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.birthday = birthday;
        this.sex = sex;
        this.address = address;
        this.city = city;
        this.phoneNumber = phoneNumber;
    }

    public User(Long userId, String email, String password, String fullName, String birthday, String sex, String address, String city, String phoneNumber) {
        this.userId = userId;
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.birthday = birthday;
        this.sex = sex;
        this.address = address;
        this.city = city;
        this.phoneNumber = phoneNumber;
    }
}
