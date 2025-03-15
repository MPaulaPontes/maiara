package application.repository;

import application.model.Jogo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface JogoRepository extends JpaRepository<Jogo, Long> {
}