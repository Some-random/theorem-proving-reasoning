-- Introducing basic types for entities in our universe.
constant Person : Type
constant Test : Type

-- Defining specific instances of persons and tests.
constant Tom : Person
constant GRE : Test

-- Defining properties and relations among the entities.
constant lives_in_single_parent_family : Person → Prop
constant out_of_work_for_more_than_a_year : Person → Prop
constant can_apply_for_financial_aid : Person → Test → Prop
constant costs : Test → ℕ → Prop

-- Providing axioms based on the information given.

-- It costs US $205 to take the GRE test.
axiom A1 : costs GRE 205

-- ETS provides financial aid to those GRE applicants who prove economic hardship.
axiom A2 : ∀ (p : Person), 
    (lives_in_single_parent_family p ∧ ∃ (p' : Person), out_of_work_for_more_than_a_year p') → can_apply_for_financial_aid p GRE

-- Tom lives in a single-parent family. His dad has been out of work for more than a year.
axiom A3 : lives_in_single_parent_family Tom
axiom A4 : ∃ (p : Person), out_of_work_for_more_than_a_year p

-- Formalizing the Questions

-- Question 1
-- Tom can apply for financial aid from ETS to take the GRE test.
-- Let's first prove the positive case.

theorem not_gre_costs_below_300 : ¬ ∃ (n : ℕ), costs GRE n ∧ n < 300 :=
begin
  sorry
end
