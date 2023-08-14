-- Introducing basic types for entities in our universe.
constant Human : Type
constant Greek : Type

-- Defining properties for the entities in our universe.
constant is_mortal : Human → Prop

-- Providing axioms based on the information given.

-- All humans are mortal.
axiom A1 : ∀ (h : Human), is_mortal h

-- All Greeks are humans.
axiom A2 : ∀ (g : Greek), Human

-- Formalizing the Questions

-- Question 1
-- Some Greeks are mortal.
-- Let's first prove the positive case.

theorem some_greeks_are_mortal : ∃ (g : Greek), is_mortal (A2 g) :=
begin
  sorry
end


theorem not_some_greeks_are_mortal : ¬ ∃ (g : Greek), is_mortal (A2 g) :=
begin
  sorry
end
