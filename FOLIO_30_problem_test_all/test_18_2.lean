-- Introducing basic types for entities in our universe.
constant Person : Type
constant Team : Type

-- Defining specific instances of persons and teams.
constant RobertLewandowski : Person
constant BayernMunchen : Team

-- Defining properties and relations among the entities.
constant is_striker : Person → Prop
constant is_soccer_player : Person → Prop
constant left_team : Person → Team → Prop
constant plays_for : Person → Team → Prop
constant is_star : Person → Prop

-- Providing axioms based on the information given.

-- Robert Lewandowski is a striker.
axiom A1 : is_striker RobertLewandowski

-- Strikers are soccer players.
axiom A2 : ∀ (p : Person), is_striker p → is_soccer_player p

-- Robert Lewandowski left Bayern Munchen.
axiom A3 : left_team RobertLewandowski BayernMunchen

-- If a player left a team they no longer play for that team.
axiom A4 : ∀ (p : Person) (t : Team), left_team p t → ¬ plays_for p t

-- Formalizing the Questions

-- Question 1
-- Robert Lewandowski is a soccer player.
-- Let's first prove the positive case.

theorem lewandowski_is_star : is_star RobertLewandowski :=
begin
  sorry
end


theorem not_lewandowski_is_star : ¬ is_star RobertLewandowski :=
begin
  sorry
end
