-- Introducing basic types for entities in our universe.
constant Game : Type
constant Company : Type

-- Defining specific instances of games and companies.
constant LegendOfZelda : Game
constant JapaneseGameCompany : Company
constant FIFA22 : Game

-- Defining properties and relations among the entities.
constant created_by : Game → Company → Prop
constant in_top_10 : Game → Prop
constant sold_more_than_one_million : Game → Prop

-- Providing axioms based on the information given.

-- A Japanese game company created the game the Legend of Zelda.
axiom A1 : created_by LegendOfZelda JapaneseGameCompany

-- All games in the Top 10 list are made by Japanese game companies.
axiom A2 : ∀ (g : Game), in_top_10 g → ∃ (c : Company), created_by g c

-- If a game sells more than one million copies, then it will be selected into the Top 10 list.
axiom A3 : ∀ (g : Game), sold_more_than_one_million g → in_top_10 g

-- The Legend of Zelda sold more than one million copies.
axiom A4 : sold_more_than_one_million LegendOfZelda

-- Formalizing the Questions

-- Question 1
-- The Legend of Zelda is in the Top 10 list.
-- Let's first prove the positive case.

theorem zelda_in_top_10 : in_top_10 LegendOfZelda :=
begin
  sorry
end
