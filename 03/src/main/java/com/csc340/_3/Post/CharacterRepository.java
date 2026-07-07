package com.csc340._3.Post;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

    List<Character> findByUniverse(String universe);
    List<Character> findBySpecies(String power);
    List<Character> findByAge(int age);

    List<Character> findByNameContainingIgnoreCase(String namePart);
}
