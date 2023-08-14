-- Introducing basic types for entities in our universe.
constant University : Type
constant College : Type

-- Defining specific instances of universities and colleges.
constant Yale : University
constant Pierson : College

-- Defining properties and relations among the entities.
constant is_private_ivy_league_research_university : University → Prop
constant moved_to_New_Haven : University → Prop
constant has_endowment : University → ℕ → Prop
constant is_constituent_college_or_school : University → College → Prop
constant is_residential_college_at_Yale : College → Prop

-- Providing axioms based on the information given.

-- Yale University is a private Ivy League research university.
axiom A1 : is_private_ivy_league_research_university Yale

-- Yale University moved to New Haven in 1716.
axiom A2 : moved_to_New_Haven Yale

-- Yale university's endowment was valued at $42.3 billion.
axiom A3 : has_endowment Yale 42300000000

-- Pierson College is a residential college at Yale.
axiom A4 : is_residential_college_at_Yale Pierson

-- Formalizing the Questions

-- Question 1
-- A private Ivy League research university moved to New Haven.
-- Let's first prove the positive case.

theorem private_ivy_league_research_university_moved_to_New_Haven : ∃ (u : University), is_private_ivy_league_research_university u ∧ moved_to_New_Haven u :=
begin
  sorry
end


theorem not_private_ivy_league_research_university_moved_to_New_Haven : ¬ ∃ (u : University), is_private_ivy_league_research_university u ∧ moved_to_New_Haven u :=
begin
  sorry
end
