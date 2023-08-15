-- Introducing basic types for entities in our universe.
constant Animal : Type

-- Defining the property of an animal barking
constant Barks : Animal → Prop
-- Defining the property of an animal jumping
constant Jumps : Animal → Prop
-- Defining the property of an animal having legs
constant Has_legs : Animal → Prop
-- Defining the property of an animal being terricolous
constant Terricolous : Animal → Prop
-- Defining the property of an animal being a dog
constant Dog : Animal → Prop
-- Defining the property of Jane liking an animal
constant Jane_likes : Animal → Prop
-- KiKi is a specific animal
constant KiKi : Animal

-- If an animal barks, then Jane does not like it.
axiom A1 : ∀ (a : Animal), Barks a → ¬ Jane_likes a
-- All dogs are animals that bark.
axiom A2 : ∀ (a : Animal), Dog a → Barks a
-- If an animal jumps, then Jane likes it.
axiom A3 : ∀ (a : Animal), Jumps a → Jane_likes a
-- If an animal has legs, then it jumps.
axiom A4 : ∀ (a : Animal), Has_legs a → Jumps a
-- If an animal is terricolous, then it has legs.
axiom A5 : ∀ (a : Animal), Terricolous a → Has_legs a
-- If KiKi neither jumps nor has legs, then KiKi is terricolous or has legs.
axiom A6 : ¬ Jumps KiKi ∧ ¬ Has_legs KiKi → Terricolous KiKi ∨ Has_legs KiKi

-- Formalizing the Questions

-- Question 1
-- KiKi is terricolous.
-- Let's first prove the positive case.

theorem not_KiKi_neither_barks_nor_is_dog : ¬ (¬ Barks KiKi ∧ ¬ Dog KiKi) :=
begin
  sorry
end
