package application.repository;

import application.model.Plataforma;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface PlataformaRepository extends JpaRepository<Plataforma, Long> {
}