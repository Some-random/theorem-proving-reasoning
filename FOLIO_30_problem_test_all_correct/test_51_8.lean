-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person being a student
constant Student : Person → Prop
-- Defining the property of a person being a human
constant Human : Person → Prop
-- Defining the property of a person studying
constant Studies : Person → Prop
-- Defining the property of a person teaching
constant Teaches : Person → Prop
-- Defining the property of a person being young
constant Young : Person → Prop
-- Defining the property of a person being a manager
constant Manager : Person → Prop
-- Jerry and Rose are specific people
constant Jerry : Person
constant Rose : Person

-- All students are humans
axiom A1 : ∀ (p : Person), Student p → Human p
-- If someone studies, then they are a student
axiom A2 : ∀ (p : Person), Studies p → Student p
-- A person either studies or teaches
axiom A3 : ∀ (p : Person), (Studies p ∧ ¬ Teaches p) ∨ (¬ Studies p ∧ Teaches p)
-- No young person teaches
axiom A4 : ∀ (p : Person), Young p → ¬ Teaches p
-- Jerry neither teaches nor is a manager
axiom A5 : ¬ Teaches Jerry ∧ ¬ Manager Jerry
-- Rose is young or a student
axiom A6 : Young Rose ∨ Student Rose

-- Formalizing the Questions

-- Question 1
-- Jerry is young.
-- Let's first prove the positive case.

theorem not_Rose_is_human_or_Jerry_is_manager : ¬ (Human Rose ∨ Manager Jerry) :=
begin
  sorry
end
