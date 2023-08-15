-- Introducing basic types for entities in our universe.
constant Event : Type
constant Country : Type

-- Defining specific instances of events and countries.
constant OlympicGames : Event
constant WorldChampionships : Event
constant Tokyo : Event
constant UnitedStates : Country

-- Defining properties and relations among the entities.
constant is_sporting_event : Event → Prop
constant last_event : Event → Prop
constant won_most_medals : Country → Event → Prop

-- Providing axioms based on the information given.

-- The Olympic games is a sporting event.
axiom A1 : is_sporting_event OlympicGames

-- The last Olympic games was in Tokyo.
axiom A2 : last_event Tokyo

-- The United States won the most medals in Tokyo.
axiom A3 : won_most_medals UnitedStates Tokyo

-- Formalizing the Questions

-- Question 1
-- The world championships is a sporting event.
-- Let's first prove the positive case.

theorem us_won_most_medals_last_olympics : won_most_medals UnitedStates OlympicGames :=
begin
  sorry
end
