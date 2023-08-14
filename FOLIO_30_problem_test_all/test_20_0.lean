-- Introducing basic types for entities in our universe.
constant Student : Type
constant Visa : Type

-- Defining specific instances of students and visas.
constant Mike : Student
constant F1 : Visa
constant J1 : Visa

-- Defining properties and relations among the entities.
constant is_international_student : Student → Prop
constant has_visa : Student → Visa → Prop
constant needs_to_apply_for_CPT : Student → Prop

-- Providing axioms based on the information given.

-- Mike is an international student.
axiom A1 : is_international_student Mike

-- Mike needs to apply for CPT if he wants to work in the US.
axiom A2 : needs_to_apply_for_CPT Mike

-- International students in US have either an F1 visa or a J1 visa.
axiom A3 : ∀ (s : Student), is_international_student s → has_visa s F1 ∨ has_visa s J1

-- An international student in US with an F1 visa needs to apply for CPT or OPT if the student wants to work in the US.
axiom A4 : ∀ (s : Student), is_international_student s → has_visa s F1 → needs_to_apply_for_CPT s

-- Formalizing the Questions

-- Question 1
-- Mike has an F1 visa.
-- Let's first prove the positive case.

theorem mike_has_F1_visa : has_visa Mike F1 :=
begin
  sorry
end


theorem not_mike_has_F1_visa : ¬ has_visa Mike F1 :=
begin
  sorry
end
