-- Introducing basic types for entities in our universe.
constant Thing : Type

-- Defining properties for the things in our universe.
constant is_affection : Thing → Prop
constant is_love : Thing → Prop
constant is_positive : Thing → Prop

-- Some affection is love.
axiom A1 : ∃ (t : Thing), is_affection t ∧ is_love t
-- Some love is positive.
axiom A2 : ∃ (t : Thing), is_love t ∧ is_positive t

-- Formalizing the Question

-- Question 1
-- Some affection is positive.
-- Let's first prove the positive case.

theorem some_affection_is_positive : ∃ (t : Thing), is_affection t ∧ is_positive t :=
begin
  sorry
end


theorem not_some_affection_is_positive : ¬ ∃ (t : Thing), is_affection t ∧ is_positive t :=
begin
  sorry
end
