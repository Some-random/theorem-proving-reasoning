-- Introducing basic types for entities in our universe.
constant Animal : Type
constant Ted : Animal

-- Defining properties for the animals in our universe.
constant is_cow : Animal → Prop
constant is_bovine : Animal → Prop
constant is_pet : Animal → Prop
constant is_domesticated : Animal → Prop
constant is_alligator : Animal → Prop

-- Context from the information

-- All cows are bovines.
axiom A1 : ∀ (a : Animal), is_cow a → is_bovine a
-- Some pets are cows.
axiom A2 : ∃ (a : Animal), is_pet a ∧ is_cow a
-- If something is a bovine, then it is domesticated.
axiom A3 : ∀ (a : Animal), is_bovine a → is_domesticated a
-- No domesticated animals are alligators.
axiom A4 : ∀ (a : Animal), is_domesticated a → ¬ is_alligator a
-- Ted is an alligator.
axiom A5 : is_alligator Ted

-- Formalizing the Questions

-- Question 1
-- Ted is a pet.
-- Let's first prove the positive case.

theorem ted_cow_not_pet : is_cow Ted → ¬ is_pet Ted :=
begin
  sorry
end


theorem not_ted_cow_not_pet : ¬ (is_cow Ted → ¬ is_pet Ted) :=
begin
  sorry
end
