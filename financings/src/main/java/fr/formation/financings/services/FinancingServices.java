package fr.formation.financings.services;

import java.util.List;

import fr.formation.financings.entities.Financing;

public interface FinancingServices {

    void create(Financing finance);

    Financing getFinancingById(Long id);

    void deleteFinancingById(Long id);

    List<Financing> getAll();
}
