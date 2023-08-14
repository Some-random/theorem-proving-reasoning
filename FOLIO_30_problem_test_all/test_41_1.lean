-- Introducing basic types for entities in our universe.
constant Place : Type
constant Island : Type
constant Cove : Type

-- Defining specific instances of places, islands, and coves.
constant Barutin : Place
constant BarutinCove : Cove
constant SnowIsland : Island
constant GreenwichIsland : Island
constant DeceptionIsland : Island
constant SouthShetlandIslands : Island
constant Antarctica : Place

-- Defining properties and relations among the entities.
constant is_named_after : Cove → Place → Prop
constant is_on : Cove → Island → Prop
constant includes : Island → Island → Prop
constant is_part_of : Island → Place → Prop
constant is_located_in : Place → Place → Prop

-- Providing axioms based on the information given.

-- Barutin Cove is named after the Bulgarian settlement of Barutin.
axiom A1 : is_named_after BarutinCove Barutin
-- Barutin Cove is on the southwest coast of Snow Island.
axiom A2 : is_on BarutinCove SnowIsland
-- The South Shetland Islands include Snow Island, Greenwich Island, and Deception Island.
axiom A3 : includes SouthShetlandIslands SnowIsland
axiom A4 : includes SouthShetlandIslands GreenwichIsland
axiom A5 : includes SouthShetlandIslands DeceptionIsland
-- The South Shetland Islands are considered part of Antarctica.
axiom A6 : is_part_of SouthShetlandIslands Antarctica
-- If A is located in B and B is located in C, then A is located in C.
axiom A7 : ∀ (a b c : Place), is_located_in a b → is_located_in b c → is_located_in a c

-- Formalizing the Questions

-- Question 1
-- Barutin is named after all islands in Antarctica.
-- Let's first prove the positive case.

theorem cove_in_antarctica_named_after_bulgaria : ∃ (c : Cove), is_named_after c Barutin ∧ is_on c SnowIsland ∧ includes SouthShetlandIslands SnowIsland ∧ is_part_of SouthShetlandIslands Antarctica :=
begin
  sorry
end


theorem not_cove_in_antarctica_named_after_bulgaria : ¬ ∃ (c : Cove), is_named_after c Barutin ∧ is_on c SnowIsland ∧ includes SouthShetlandIslands SnowIsland ∧ is_part_of SouthShetlandIslands Antarctica :=
begin
  sorry
end
