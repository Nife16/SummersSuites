package com.claim.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.claim.entities.Guest;

@Service
public class GuestService {

	
	List<Guest> guestList = new ArrayList<Guest>();
	
	public void saveGuest(Guest guest) {
		guestList.add(guest);
		System.out.println(guestList.get(0));
	}
	
	public Guest getGuestByEmailAndPassword(Guest guest) {
		
		String email = guest.getEmail();
		String password = guest.getPassword();
		
		for (Guest signedUpGuest : guestList) {
			
			if (signedUpGuest.getEmail().equals(email) &&
					signedUpGuest.getPassword().equals(password)) {
				return signedUpGuest;
			}
		}
		
		return null;
	}
	
	public Guest getGuestByEmail(String email) {
		
		for (Guest signedUpGuest : guestList) {
			
			if (signedUpGuest.getEmail().equals(email)) {
				return signedUpGuest;
			}
		}
		
		return null;
	}
	
}
