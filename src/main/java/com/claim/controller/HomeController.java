package com.claim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.claim.entities.Guest;
import com.claim.service.GuestService;

@Controller
public class HomeController {

	
	@Autowired
	GuestService guestService;
	
	@GetMapping("/{email}")
	public String index(@PathVariable String email, Model model) {
		
		if (email != null) {
			Guest guest = guestService.getGuestByEmail(email);
			model.addAttribute("guest", guest);
		}
		return "index";
	}

	@GetMapping("/sign-up")
	public String signUp(Model model) {
		
		model.addAttribute("guest", new Guest());
		
		return "sign-up";
	}
	
	@PostMapping("/sign-up")
	public String signUp(@ModelAttribute Guest guest, Model model) {
		
		guestService.saveGuest(guest);
		
		model.addAttribute("guest", new Guest());
		
		return "sign-in";
	}
	
	@GetMapping("/sign-in")
	public String signIn(Model model) {
		
		model.addAttribute("guest", new Guest());
		
		return "sign-in";
	}
	
	@PostMapping("/profile")
	public String signIn(@ModelAttribute Guest guest, Model model) {
		
		Guest foundGuest = guestService.getGuestByEmailAndPassword(guest);
		
		if(foundGuest == null) {
			return "index";
		}
		model.addAttribute(foundGuest);
		
		return "profile";
	}
	
	@GetMapping("/profile/{email}")
	public String profile(@PathVariable String email, Model model) {
		
		Guest guest = guestService.getGuestByEmail(email);
		
		
		if (guest == null) {
			return "index";
		}
		model.addAttribute(guest);
		
		return "profile";
	}
	
}
