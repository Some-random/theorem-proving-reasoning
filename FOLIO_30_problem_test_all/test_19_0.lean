-- Introducing basic types for entities in our universe.
constant City : Type
constant State : Type

-- Defining specific instances of cities and states.
constant Billings : City
constant Butte : City
constant Helena : City
constant Missoula : City
constant WhiteSulphurSprings : City
constant Pierre : City
constant Montana : City

-- Defining properties and relations among the entities.
constant is_in : City → City → Prop

-- Providing axioms based on the information given.

-- Billings is a city in Montana.
axiom A1 : is_in Billings Montana
-- Montana includes the cities of Butte, Helena, and Missoula.
axiom A2 : is_in Butte Montana
axiom A3 : is_in Helena Montana
axiom A4 : is_in Missoula Montana
-- White Sulphur Springs and Butte are cities in the same state.
axiom A5 : ∃ s : City, is_in WhiteSulphurSprings s ∧ is_in Butte s
-- The city of Pierre is not in Montana.
axiom A6 : ¬ is_in Pierre Montana
-- Any city in Butte is not in Pierre.
axiom A7 : ∀ c : City, is_in c Butte → ¬ is_in c Pierre

-- Formalizing the Questions

-- Question 1
-- Butte and Pierre are in the same state.
-- Let's first prove the positive case.

theorem butte_and_pierre_same_state : ∃ s : City, is_in Butte s ∧ is_in Pierre s :=
begin
  sorry
end


theorem not_butte_and_pierre_same_state : ¬ ∃ s : City, is_in Butte s ∧ is_in Pierre s :=
begin
  sorry
end
