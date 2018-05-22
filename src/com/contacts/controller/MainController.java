package com.contacts.controller;

import java.util.List;

import org.hibernate.annotations.Sort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.contacts.domain.Address;
import com.contacts.domain.Person;
import com.contacts.service.IService;

@Controller
public class MainController {
	
	@Autowired
	private IService service;
	
	@GetMapping("/")
	public String initPage() {
		return "lists";
	}
	
	@GetMapping("/lists")
	public String contactsList(Model model) {
		List<Person> persons = service.findAll();
		model.addAttribute("persons", persons);
		return "list";
	}
	
	@GetMapping("/addPerson")
	public String addPerson(Model model) {
		Person person= new Person();
		Address address = new Address();
		person.setAddress(address);
		model.addAttribute("person",person);		
		return "addPerson";
	}

	@PostMapping("/savePerson")
	public String savePerson(@ModelAttribute("person")Person person) {
		
		service.savePerson(person);	
		
		return "redirect:/lists";
	}
	
	@GetMapping("/updateOne")
	public String updateItem(@RequestParam("personId") long id,Model model) {
		Person person = service.getPerson(id);
		model.addAttribute("person", person);		
		return "addPerson";
	}
	
	@GetMapping("/deleteOne")
	public String deleteItem(@RequestParam("personId") long id) {
		service.deletePerson(id);
		return "redirect:/lists";
	}
	
//	@PostMapping("/updatePerson")
//	public String updatePerson(@ModelAttribute("person")Person person) {
//		service.updatePerson(person);
//		return "redirect:/lists";
//	}
}













