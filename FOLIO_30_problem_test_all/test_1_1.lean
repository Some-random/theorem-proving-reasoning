-- Introducing basic types for entities in our universe.
constant Employee : Type
constant James : Employee

-- Defining properties for the employees in our universe.
constant schedules_meeting : Employee → Prop
constant appears_in_company : Employee → Prop
constant has_lunch_in_company : Employee → Prop
constant has_lunch_at_home : Employee → Prop
constant works_remotely : Employee → Prop
constant is_in_other_countries : Employee → Prop
constant is_manager : Employee → Prop

-- Context from the information

-- All employees who schedule a meeting with their customers will appear in the company today.
axiom A1 : ∀ (e : Employee), schedules_meeting e → appears_in_company e
-- Everyone who has lunch in the company schedules meetings with their customers.
axiom A2 : ∀ (e : Employee), has_lunch_in_company e → schedules_meeting e
-- Employees will either have lunch in the company or have lunch at home.
axiom A3 : ∀ (e : Employee), has_lunch_in_company e ∨ has_lunch_at_home e
-- If an employee has lunch at home, then he/she is working remotely from home.
axiom A4 : ∀ (e : Employee), has_lunch_at_home e → works_remotely e
-- All employees who are in other countries work remotely from home.
axiom A5 : ∀ (e : Employee), is_in_other_countries e → works_remotely e
-- No managers work remotely from home.
axiom A6 : ∀ (e : Employee), is_manager e → ¬ works_remotely e
-- James is either a manager and appears in the company today or neither a manager nor appears in the company today.
axiom A7 : (is_manager James ∧ appears_in_company James) ∨ (¬ is_manager James ∧ ¬ appears_in_company James)

-- Formalizing the Questions

-- Question 1
-- James has lunch in the company.
-- Let's first prove the positive case.

theorem james_not_lunch_in_company : ¬ has_lunch_in_company James :=
begin
  sorry
end


theorem not_james_not_lunch_in_company : has_lunch_in_company James :=
begin
  sorry
end
