-- Introducing basic types for entities in our universe.
constant Entity : Type

-- Defining the property of an entity being a horse
constant is_horse : Entity → Prop
-- Defining the property of an entity being a human
constant is_human : Entity → Prop
-- Defining the property of an entity having hooves
constant has_hooves : Entity → Prop

-- All horses have hooves.
axiom A1 : ∀ (e : Entity), is_horse e → has_hooves e
-- No humans have hooves.
axiom A2 : ∀ (e : Entity), is_human e → ¬ has_hooves e

-- Formalizing the Question

-- Question 1
-- Some humans are horses.
-- Let's first prove the positive case.

theorem some_humans_are_horses : ∃ (e : Entity), is_human e ∧ is_horse e :=
begin
  sorry
end


theorem not_some_humans_are_horses : ¬ ∃ (e : Entity), is_human e ∧ is_horse e :=
begin
  sorry
end
