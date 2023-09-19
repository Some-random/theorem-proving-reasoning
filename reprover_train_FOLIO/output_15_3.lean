-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person being a young adult
constant YoungAdult : Person → Prop
-- Defining the property of a person being a college student
constant CollegeStudent : Person → Prop
-- Defining the property of a person being a Yale student
constant YaleStudent : Person → Prop
-- Defining the property of a person being a Harvard student
constant HarvardStudent : Person → Prop
-- Defining the property of a person being diligent
constant Diligent : Person → Prop
-- Defining the property of a person going on a diet
constant Diet : Person → Prop
-- Susan is a specific person
constant Susan : Person

-- All young adults go on a diet
axiom A1 : ∀ (p : Person), YoungAdult p → Diet p
-- All college students are young adults
axiom A2 : ∀ (p : Person), CollegeStudent p → YoungAdult p
-- All Yale students are college students
axiom A3 : ∀ (p : Person), YaleStudent p → CollegeStudent p
-- Someone is either a Yale student or a Harvard student
axiom A4 : YaleStudent Susan ∨ HarvardStudent Susan
-- All Harvard students are diligent
axiom A5 : ∀ (p : Person), HarvardStudent p → Diligent p
-- If Susan is a Harvard student, then she is a young adult
axiom A6 : HarvardStudent Susan → YoungAdult Susan
-- If Susan is a Yale student, then she does not go on a diet
axiom A7 : YaleStudent Susan → ¬ Diet Susan

-- Formalizing the Questions

-- Question 1
-- Susan is a college student.
-- Let's first prove the positive case.

theorem Susan_Diet_Diligent : Diet Susan ∧ Diligent Susan :=
begin
    cases A4 with yale harvard,
    { exfalso, exact A7 yale (A1 Susan (A2 Susan (A3 Susan yale))) },
    { exact ⟨A1 Susan (A6 harvard), A5 Susan harvard⟩ }
end

-- Let's try the negative case.

