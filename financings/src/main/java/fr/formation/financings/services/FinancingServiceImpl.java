package fr.formation.financings.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import fr.formation.financings.entities.Financing;
import fr.formation.financings.repositories.FinancingRepository;

@Service
public class FinancingServiceImpl implements FinancingServices {

    private final FinancingRepository repo;

    protected FinancingServiceImpl(FinancingRepository repo) {
	this.repo = repo;
    }

    @Override
    public void create(Financing financing) {
	repo.save(financing);
    }

    @Override
    public Financing getFinancingById(Long id) {
	Optional<Financing> financing = repo.findById(id);
	return financing.get();
    }

    @Override
    public List<Financing> getAll() {
	List<Financing> financing = repo.findAll();
	return financing;
    }

    @Override
    public void deleteFinancingById(Long id) {
	repo.deleteById(id);
    }
}
