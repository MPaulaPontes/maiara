package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Plataforma;
import application.repository.PlataformaRepository;


@Controller
@RequestMapping("/plataforma")
public class PlataformaController {

    @Autowired
    private PlataformaRepository plataformaRepo;

    @GetMapping("/list")
    public String listPlataformas(Model ui) {
        ui.addAttribute("plataformas", plataformaRepo.findAll());
        return "plataforma/list"; // Nome da view para listar as plataformas
    }

    @GetMapping("/insert")
    public String addPlataformaForm(Model ui) {
        return "plataformas/insert"; // Nome da view para o formulário de adição
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("nome")String nome) {
        plataformaRepository.save(plataforma);
        return "redirect:/plataformas/list"; // Redireciona para a lista após adicionar
    }

    @GetMapping("/edit/{id}")
    public String editPlataformaForm(@PathVariable("id") long id, Model model) {
        Plataforma plataforma = plataformaRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID de plataforma inválido:" + id));
        model.addAttribute("plataforma", plataforma);
        return "plataformas/edit"; // Nome da view para o formulário de edição
    }

    @PostMapping("/update/{id}")
    public String updatePlataforma(@PathVariable("id") long id, @ModelAttribute Plataforma plataforma) {
        plataforma.setId(id); // Garante que estamos atualizando a plataforma correta
        plataformaRepository.save(plataforma);
        return "redirect:/plataformas/list"; // Redireciona para a lista após atualizar
    }

    @GetMapping("/delete/{id}")
    public String deletePlataforma(@PathVariable("id") long id) {
        Plataforma plataforma = plataformaRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID de plataforma inválido:" + id));
        plataformaRepository.delete(plataforma);
        return "redirect:/plataformas/list"; // Redireciona para a lista após excluir
    }
}