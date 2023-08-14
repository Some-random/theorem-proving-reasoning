-- Introducing basic types for entities in our universe.
constant Animal : Type

-- Defining properties for the animals in our universe.
constant is_cat : Animal → Prop
constant is_mammal : Animal → Prop
constant is_pet : Animal → Prop

-- All cats are mammals.
axiom A1 : ∀ (a : Animal), is_cat a → is_mammal a
-- Some pets are not mammals.
axiom A2 : ∃ (a : Animal), is_pet a ∧ ¬ is_mammal a

-- Formalizing the Questions

-- Question 1
-- No pets are cats.
-- Let's first prove the positive case.

theorem no_pets_are_cats : ∀ (a : Animal), is_pet a → ¬ is_cat a :=
begin
  sorry
end


theorem not_no_pets_are_cats : ¬ (∀ (a : Animal), is_pet a → ¬ is_cat a) :=
begin
  sorry
end
