package fr.formation.financings.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.formation.financings.entities.Financing;

public interface FinancingRepository extends JpaRepository<Financing, Long> {
}
