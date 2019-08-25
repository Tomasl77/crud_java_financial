package fr.formation.financings.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import fr.formation.financings.entities.Financing;
import fr.formation.financings.services.FinancingServices;

@RestController
@RequestMapping("/financing")
@CrossOrigin("*")
public class FinancingController {

    private final FinancingServices service;

    protected FinancingController(FinancingServices service) {
	this.service = service;
    }

    @PostMapping()
    public void create(@RequestBody @Valid Financing finance) {
	service.create(finance);
    }

    @GetMapping()
    public List<Financing> getAll() {
	List<Financing> financingList = service.getAll();
	return financingList;
    }

    @GetMapping("/{id}")
    public Financing getOne(@PathVariable("id") Long id) {
	Financing financing = service.getFinancingById(id);
	return financing;
    }

    @DeleteMapping("/{id}")
    public void deleteOne(@PathVariable("id") Long id) {
	service.deleteFinancingById(id);
    }
}