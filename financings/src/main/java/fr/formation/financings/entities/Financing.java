package fr.formation.financings.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Future;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Positive;

@Entity
public class Financing {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 200, nullable = false)
    private String name;

    @Column(length = 10, nullable = false)
    private String reference;

    @PastOrPresent
    @Column(nullable = false)
    private LocalDate startDate;

    @Future
    @Column(nullable = false)
    private LocalDate endDate;

    @Positive
    private double amount;

    @Positive
    private double rate;

    public Long getId() {
	return id;
    }

    public void setId(Long id) {
	this.id = id;
    }

    public String getName() {
	return name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public String getReference() {
	return reference;
    }

    public void setReference(String reference) {
	this.reference = reference;
    }

    public LocalDate getStartDate() {
	return startDate;
    }

    public void setStartDate(LocalDate startDate) {
	this.startDate = startDate;
    }

    public LocalDate getEndDate() {
	return endDate;
    }

    public void setEndDate(LocalDate endDate) {
	this.endDate = endDate;
    }

    public double getAmount() {
	return amount;
    }

    public void setAmount(double amount) {
	this.amount = amount;
    }

    public double getRate() {
	return rate;
    }

    public void setRate(double rate) {
	this.rate = rate;
    }

    public Financing() {
    }

    @Override
    public String toString() {
	StringBuilder builder = new StringBuilder();
	builder.append("{id =");
	builder.append(id);
	builder.append(", name =");
	builder.append(name);
	builder.append(", reference =");
	builder.append(reference);
	builder.append(", startDate =");
	builder.append(startDate);
	builder.append(", endDate =");
	builder.append(endDate);
	builder.append(", amount =");
	builder.append(amount);
	builder.append(", rate =");
	builder.append(rate);
	builder.append("}");
	return builder.toString();
    }
}
