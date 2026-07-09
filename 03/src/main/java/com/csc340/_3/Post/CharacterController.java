package com.csc340._3.Post;

import org.antlr.v4.runtime.misc.NotNull;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import java.util.List;


@RestController
@RequestMapping("/api/characters")
public class CharacterController {

    @Autowired
    private CharacterService characterService;

    @GetMapping
    public List<Character> getAllCharacters() {
        return characterService.getAllCharacters();
    }

    @GetMapping("/{id}")
    public Character getCharacterById(@PathVariable long id) {
        Character character = characterService.getCharacterById(id);
        if (character == null) {
            throw new RuntimeException("Character not found with id: " + id);
        }
        return character;
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Character createCharacter(@Valid @RequestBody Character character) {
        return characterService.createCharacter(character);
    }

    @PutMapping("/{id}")
    public Character updateCharacter(@PathVariable long id, @Valid @RequestBody Character character) {
        Character updated = characterService.updateCharacter(id, character);
        if (updated == null) {
            throw new RuntimeException("Character not found with id: " + id);
        }
        return updated;
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCharacter(@PathVariable long id) {
        boolean deleted = characterService.deleteCharacter(id);
        if (!deleted) {
            throw new RuntimeException("Character not found with id: " + id);
        }
    }

    @GetMapping("/category")
    public List<Character> getCharactersByCategory(
            @RequestParam String category,
            @RequestParam String value) {
        return characterService.getCharactersByCategory(category, value);
    }

    @GetMapping("/search")
    public List<Character> searchCharactersByName(@RequestParam String name) {
        return characterService.searchCharactersByName(name);
    }
}
