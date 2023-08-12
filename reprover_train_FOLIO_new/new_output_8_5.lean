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

theorem marvin_not_from_mars_then_human : ¬ from Marvin Mars → is_human Marvin :=
begin
    intro h,
    by_contradiction h1,
    have h2 : ¬ from Marvin Earth, from λ h3, h (A5.2 h3),
    have h3 : is_extraterrestrial Marvin, from A6 h2,
    contradiction,
end

-- Let's try the negative case.

