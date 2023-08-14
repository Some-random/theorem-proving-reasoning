-- Introducing basic types for entities in our universe.
constant Person : Type
constant Club : Type

-- Defining specific instances of persons and clubs.
constant AiltonSilva : Person
constant Nautico : Club
constant Braga : Club
constant Fluminense : Club

-- Defining properties and relations among the entities.
constant is_football_player : Person → Prop
constant plays_for : Person → Club → Prop
constant is_Brazilian : Person → Prop
constant loaned_out_to : Person → Club → Prop

-- Providing axioms based on the information given.

-- Ailton Silva is a football player who was loaned out to Braga.
axiom A1 : is_football_player AiltonSilva
axiom A2 : loaned_out_to AiltonSilva Braga

-- Ailton Silva is a Brazillian footballer who plays for Nautico.
axiom A3 : is_Brazilian AiltonSilva
axiom A4 : plays_for AiltonSilva Nautico

-- Formalizing the Questions

-- Question 1
-- No one playing for Nautico is Brazilian.
-- Let's first prove the positive case.

theorem ailton_played_for_fluminense : plays_for AiltonSilva Fluminense :=
begin
  sorry
end


theorem not_ailton_played_for_fluminense : ¬ plays_for AiltonSilva Fluminense :=
begin
  sorry
end
