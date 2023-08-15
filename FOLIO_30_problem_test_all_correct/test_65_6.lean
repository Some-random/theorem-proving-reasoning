-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person being nice to animals
constant Nice_to_animals : Person → Prop
-- Defining the property of a person being mean to animals
constant Mean_to_animals : Person → Prop
-- Defining the property of a person being grumpy
constant Grumpy : Person → Prop
-- Defining the property of a person being an animal lover
constant Animal_lover : Person → Prop
-- Defining the property of a person owning a pet
constant Owns_pet : Person → Prop
-- Tom is a specific person
constant Tom : Person

-- No one nice to animals is mean to animals
axiom A1 : ∀ (p : Person), Nice_to_animals p → ¬ Mean_to_animals p
-- Some grumpy people are mean to animals
axiom A2 : ∃ (p : Person), Grumpy p ∧ Mean_to_animals p
-- All animal lovers are nice to animals
axiom A3 : ∀ (p : Person), Animal_lover p → Nice_to_animals p
-- If someone owns a pet, then they love animals
axiom A4 : ∀ (p : Person), Owns_pet p → Animal_lover p
-- Tom is a pet owner
axiom A5 : Owns_pet Tom

-- Formalizing the Questions

-- Question 1
-- Tom is a grumpy person.
-- Let's first prove the positive case.

theorem not_Tom_condition : ¬ ((¬ Grumpy Tom ∧ Mean_to_animals Tom) → (¬ Grumpy Tom ∧ ¬ Animal_lover Tom)) :=
begin
  sorry
end
