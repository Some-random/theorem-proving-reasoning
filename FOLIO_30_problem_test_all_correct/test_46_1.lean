-- Introducing basic types for entities in our universe.
constant Mammal : Type
constant Platypus : Mammal
constant Human : Mammal

-- Defining properties for the mammals in our universe.
constant has_teeth : Mammal → Prop

-- Context from the information

-- Some mammals have teeth.
axiom A1 : ∃ (m : Mammal), has_teeth m
-- Platypus have no teeth.
axiom A2 : ¬ has_teeth Platypus
-- Humans have teeth.
axiom A3 : has_teeth Human

-- Formalizing the Questions

-- Question 1
-- Platypus are mammals with no teeth.
-- Let's first prove the positive case.

theorem platypus_no_teeth : ¬ has_teeth Platypus :=
begin
  sorry
end
