-- Introducing basic types for entities in our universe.
constant Team : Type
constant Year : Type

-- Defining specific instances of teams and years.
constant RealMadrid : Team
constant Barcelona : Team
constant Y2021_2022 : Year

-- Defining properties and relations among the entities.
constant is_LaLiga_team : Team → Prop
constant receives_points : Team → Year → ℕ → Prop
constant ranks_higher_than : Team → Team → Year → Prop

-- Providing axioms based on the information given.

-- Real Madrid and Barcelona are both La Liga soccer teams.
axiom A1 : is_LaLiga_team RealMadrid
axiom A2 : is_LaLiga_team Barcelona

-- In La Liga 2021-2022, Real Madrid recieves 86 points and Barcelon recieves 73 points.
axiom A3 : receives_points RealMadrid Y2021_2022 86
axiom A4 : receives_points Barcelona Y2021_2022 73

-- In La Liga 2021-2022, Real Madrid and Barcelona both recieve 3 points from the games between them.
axiom A5 : receives_points RealMadrid Y2021_2022 3
axiom A6 : receives_points Barcelona Y2021_2022 3

-- Formalizing the Questions

-- Question 1
-- In La Liga 2021-2022, Real Madrid ranks higher than Barcelona.
-- Let's first prove the positive case.

theorem barcelona_ranks_higher : ranks_higher_than Barcelona RealMadrid Y2021_2022 :=
begin
  sorry
end


theorem not_barcelona_ranks_higher : ¬ ranks_higher_than Barcelona RealMadrid Y2021_2022 :=
begin
  sorry
end
