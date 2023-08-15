-- Introducing basic types for entities in our universe.
constant Character : Type

-- Defining the property of a character being funny, popular, ugly, loved by children, from The Simpsons, and yellow
constant Funny : Character → Prop
constant Popular : Character → Prop
constant Ugly : Character → Prop
constant Loved_by_children : Character → Prop
constant From_The_Simpsons : Character → Prop
constant Yellow : Character → Prop
-- Ben is a specific character
constant Ben : Character

-- If a cartoon character is funny, then it is popular.
axiom A1 : ∀ (c : Character), Funny c → Popular c
-- If a cartoon character is ugly, then it is not popular.
axiom A2 : ∀ (c : Character), Ugly c → ¬ Popular c
-- If a cartoon character is loved by children, then it is funny.
axiom A3 : ∀ (c : Character), Loved_by_children c → Funny c
-- If a cartoon character is from The Simpsons, then it is loved by children.
axiom A4 : ∀ (c : Character), From_The_Simpsons c → Loved_by_children c
-- If a cartoon character is yellow, then it is from The Simpsons.
axiom A5 : ∀ (c : Character), Yellow c → From_The_Simpsons c
-- Ben is either from The Simpsons or funny.
axiom A6 : From_The_Simpsons Ben ∨ Funny Ben

-- Formalizing the Questions

-- Question 1
-- Ben is loved by children.
-- Let's first prove the positive case.

theorem not_Ben_yellow_ugly : ¬ ((Yellow Ben ∧ Ugly Ben) ∨ (¬ Yellow Ben ∧ ¬ Ugly Ben)) :=
begin
  sorry
end
