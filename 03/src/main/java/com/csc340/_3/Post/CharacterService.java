package com.csc340._3.Post;
import java.util.List;

import org.springframework.stereotype.Service;

   
@Service
public class CharacterService {

    private final CharacterRepository characterRepository;

    public CharacterService(CharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    public List<Character> getAllCharacters() {
        return characterRepository.findAll();
    }

    public Character getCharacterById(long id) {
        return characterRepository.findById(id).orElse(null);
    }

    public Character createCharacter(Character character) {
        return characterRepository.save(character);
    }

    public Character updateCharacter(long id, Character updatedCharacter) {
        Character existing = characterRepository.findById(id).orElse(null);
        if (existing != null) {
            existing.setName(updatedCharacter.getName());
            existing.setDescription(updatedCharacter.getDescription());
            existing.setUniverse(updatedCharacter.getUniverse());
            existing.setPower(updatedCharacter.getPower());
            existing.setAge(updatedCharacter.getAge());
            existing.setActiveDate(updatedCharacter.getActiveDate());
            return characterRepository.save(existing);
        }
        return null;
    }

    public boolean deleteCharacter(long id) {
        if (characterRepository.existsById(id)) {
            characterRepository.deleteById(id);
            return true;
        }
        return false;
    }

    public List<Character> searchCharactersByName(String keyword) {
        return characterRepository.findByNameContainingIgnoreCase(keyword);
    }

    public List<Character> getCharactersByCategory(String category, String value) {
        return switch (category.toLowerCase()) {
            case "universe" -> characterRepository.findByUniverse(value);
            case "species"  -> characterRepository.findBySpecies(value);
            case "age"      -> characterRepository.findByAge(Integer.parseInt(value));
            // add more cases if you add more fields
            default -> throw new IllegalArgumentException("Unsupported category: " + category);
        };
    }
}
