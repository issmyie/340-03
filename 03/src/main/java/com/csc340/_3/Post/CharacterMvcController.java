package com.csc340._3.Post;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/characters")  
public class CharacterMvcController {

    private final CharacterService characterService;

    public CharacterMvcController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/about")
    public String about() {
        return "about";   
    }

    @GetMapping
    public String listCharacters(Model model) {
        List<Character> characters = characterService.getAllCharacters();
        model.addAttribute("characterList", characters);
        return "character-list";  
    }

    @GetMapping("/{id}")
    public String showCharacterDetails(@PathVariable Long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "character-details";  
    }

   
    @GetMapping("/create")
    public String showCreateForm(Model model) {
        model.addAttribute("character", new Character());
        return "character-create";   
    }

   
    @PostMapping("/create")
    public String createCharacter(@ModelAttribute Character character) {
        characterService.createCharacter(character);
        return "redirect:/characters";   
    }

    @GetMapping("/update/{id}")
    public String showUpdateForm(@PathVariable Long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "character-update";  
    }

    @PostMapping("/update")
    public String updateCharacter(@ModelAttribute Character character) {
        // The form includes the ID as a hidden field; service will update
        characterService.updateCharacter(character.getCharacterId(), character);
        return "redirect:/characters/" + character.getCharacterId();
    }

    @GetMapping("/delete/{id}")
    public String deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
        return "redirect:/characters";
    }

    @GetMapping("/category")
    public String filterByCategory(@RequestParam String category,
                                   @RequestParam String value,
                                   Model model) {
        List<Character> characters = characterService.getCharactersByCategory(category, value);
        model.addAttribute("characterList", characters);
        return "character-list";   
    }

    @GetMapping("/search")
    public String searchByName(@RequestParam String name, Model model) {
        List<Character> characters = characterService.searchCharactersByName(name);
        model.addAttribute("characterList", characters);
        return "character-list";
    }
}