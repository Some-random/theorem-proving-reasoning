universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Dog : obj
constant Mouse : obj

constant Green : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop

axiom A1 : Green Bear
axiom A2 : Likes Bear Cat
axiom A3 : Likes Bear Dog
axiom A4 : Visits Bear Dog
axiom A5 : Young Cat
axiom A6 : Sees Cat Bear
axiom A7 : Sees Cat Dog
axiom A8 : Visits Cat Bear
axiom A9 : Visits Cat Mouse
axiom A10 : Round Dog
axiom A11 : Likes Dog Bear
axiom A12 : Likes Dog Mouse
axiom A13 : Visits Dog Mouse
axiom A14 : Big Mouse
axiom A15 : Cold Mouse
axiom A16 : Round Mouse

axiom R1 : ∀ x : obj, Visits x Mouse ∧ Visits Mouse Dog → Cold x
axiom R2 : ∀ x : obj, Likes x Cat → Visits x Dog
axiom R3 : ∀ x : obj, Cold x → Likes x Cat
axiom R4 : ∀ x : obj, Green x → Sees x Dog
axiom R5 : ∀ x : obj, Likes x Mouse → Sees x Cat
axiom R6 : ∀ x : obj, Green x ∧ Cold x → Likes x Cat
axiom R7 : ∀ x : obj, Big x ∧ Visits x Bear → Green Bear

theorem not_cold_Cat : ¬ Cold Cat :=
begin
  sorry
end


theorem cold_Cat : Cold Cat :=
begin
  sorry
end
