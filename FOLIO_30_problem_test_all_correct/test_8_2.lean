-- Introducing basic types for entities in our universe.
constant Person : Type
constant Planet : Type

-- Defining specific instances of persons and planets.
constant Marvin : Person
constant Earth : Planet
constant Mars : Planet

-- Defining properties and relations among the entities.
constant is_alien : Person → Prop
constant is_extraterrestrial : Person → Prop
constant is_human : Person → Prop
constant From : Person → Planet → Prop

-- Providing axioms based on the information given.

-- All aliens are extraterrestrial.
axiom A1 : ∀ (p : Person), is_alien p → is_extraterrestrial p
-- If someone is from Mars, then they are aliens.
axiom A2 : ∀ (p : Person), From p Mars → is_alien p
-- No extraterrestrial is human.
axiom A3 : ∀ (p : Person), is_extraterrestrial p → ¬ is_human p
-- Everyone from Earth is a human.
axiom A4 : ∀ (p : Person), From p Earth → is_human p
-- Marvin cannot be from Earth and from Mars.
axiom A5 : ¬ (From Marvin Earth ∧ From Marvin Mars)
-- If Marvin is not from Earth, then Marvin is an extraterrestrial.
axiom A6 : ¬ From Marvin Earth → is_extraterrestrial Marvin

-- Formalizing the Questions

-- Question 1
-- Marvin is an alien.
-- Let's first prove the positive case.

theorem not_marvin_is_alien : ¬ is_alien Marvin :=
begin
  sorry
end
