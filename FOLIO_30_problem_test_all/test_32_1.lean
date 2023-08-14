-- Introducing basic types for entities in our universe.
constant Building : Type
constant Person : Type
constant Pet : Type

-- Defining specific instances of buildings, persons and pets.
constant OliveGarden : Building
constant Tom : Person
constant Fluffy : Pet

-- Defining properties and relations among the entities.
constant is_managed_building : Building → Prop
constant is_pet : Pet → Prop
constant is_cat : Pet → Prop
constant is_allowed_in : Pet → Building → Prop
constant rents : Person → Building → Prop
constant deposit : Building → ℕ → Prop
constant monthly_rent : Building → ℕ → Prop

-- Providing axioms based on the information given.

-- Pets are allowed in some managed buildings.
axiom A1 : ∃ (b : Building), is_managed_building b ∧ ∃ (p : Pet), is_pet p ∧ is_allowed_in p b

-- A deposit is required to rent an apartment in a managed building.
axiom A2 : ∀ (b : Building), is_managed_building b → ∃ (d : ℕ), deposit b d

-- The security deposit can be either equal to one month's rent or more.
axiom A3 : ∀ (b : Building) (d m : ℕ), deposit b d ∧ monthly_rent b m → d ≥ m

-- Fluffy is Tom's cat. Cats are pets.
axiom A4 : is_cat Fluffy
axiom A5 : ∀ (p : Pet), is_cat p → is_pet p

-- The Olive Garden is a managed building.
axiom A6 : is_managed_building OliveGarden

-- The monthly rent at the Olive Garden is $2000.
axiom A7 : monthly_rent OliveGarden 2000

-- Tom will rent an apartment in a managed building if and only if he is allowed to move in with Fluffy, and the security deposit is no more than $1500.
axiom A8 : ∀ (b : Building), rents Tom b ↔ is_managed_building b ∧ is_allowed_in Fluffy b ∧ ∃ (d : ℕ), deposit b d ∧ d ≤ 1500

-- 2000$ is more than $1500.
axiom A9 : 2000 > 1500

-- Formalizing the Questions

-- Question 1
-- Tom will rent an apartment in The Olive Garden.
-- Let's first prove the positive case.

theorem tom_allowed_with_fluffy : is_allowed_in Fluffy OliveGarden :=
begin
  sorry
end


theorem not_tom_allowed_with_fluffy : ¬ is_allowed_in Fluffy OliveGarden :=
begin
  sorry
end
