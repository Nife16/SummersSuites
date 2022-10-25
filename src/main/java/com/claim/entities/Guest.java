package com.claim.entities;
import java.util.Arrays;
import java.util.Scanner;

public class Guest {

	private String name;
	private Integer age;
	private String phoneNumber;
	private String email;
	private String password;
	private Integer numberOfGuests;
	private String[] roomPreferences = {"High Floor", "Low Floor"};
//	private Reservation reservation;

	public Guest() {
		
	}
	
	public Guest(String email, String password) {
		this.email = email;
		this.password = password;
	}
	
	public Guest(String name, Integer age, String phoneNumber, String email, String password, Integer numberOfGuests) {
		
		this.name = name;
		this.age = age;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.numberOfGuests = numberOfGuests;
		this.password = password;
		
	}
	
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getNumberOfGuests() {
		return numberOfGuests;
	}

	public void setNumberOfGuests(Integer numberOfGuests) {
		this.numberOfGuests = numberOfGuests;
	}

	public String[] getRoomPreferences() {
		return roomPreferences;
	}

	public void setRoomPreferences(String[] roomPreferences) {
		this.roomPreferences = roomPreferences;
	}	
	
//	public Reservation getReservation() {
//		return reservation;
//	}
//
//	public void setReservation(Reservation reservation) {
//		this.reservation = reservation;
//	}

	@Override
	public String toString() {
		return "Guests [name=" + name + ", age=" + age + ", phoneNumber=" + phoneNumber + ", email=" + email
				+ ", numberOfGuests=" + numberOfGuests + ", roomPreferences=" + Arrays.toString(roomPreferences) + "]";
	}
		
}
