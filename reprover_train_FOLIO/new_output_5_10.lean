-- Introducing basic types for entities in our universe.
constant Animal : Type
constant Rock : Animal

-- Defining properties for the animals in our universe.
constant is_rabbit : Animal → Prop
constant is_squirrel : Animal → Prop
constant is_turtle : Animal → Prop
constant is_cute : Animal → Prop
constant is_skittish : Animal → Prop
constant is_still : Animal → Prop

-- Context from the information

-- All rabbits are cute.
axiom A1 : ∀ (a : Animal), is_rabbit a → is_cute a
-- An animal is either a rabbit or a squirrel.
axiom A2 : ∀ (a : Animal), is_rabbit a ∨ is_squirrel a
-- If something is skittish, then it is not still.
axiom A3 : ∀ (a : Animal), is_skittish a → ¬ is_still a
-- All squirrels are skittish.
axiom A4 : ∀ (a : Animal), is_squirrel a → is_skittish a
-- Rock is still.
axiom A5 : is_still Rock

-- Formalizing the Questions

-- Question 1
-- Rock is a turtle.
-- Let's first prove the positive case.

theorem not_rock_condition_2 : ¬ ((is_cute Rock ∧ is_still Rock) → (is_turtle Rock ∧ is_skittish Rock)) :=
begin
  intro h,
  cases A2 Rock,
  { 
    -- Proving that Rock is cute based on him being a rabbit.
    have h1 := A1 Rock h_1,
    specialize h ⟨h1, A5⟩,
    -- This contradicts the fact that skittish animals are not still.
    exact A3 Rock h.right A5,
  },
  -- If Rock is a squirrel, then Rock is skittish.
  { 
    -- Proving that Rock is skittish based on him being a squirrel.
    have h1 := A4 Rock h_1,
    exact A3 Rock h1 A5,
  }
end

-- The answer is Unknown
