universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Lion : obj
constant Squirrel : obj

constant Big : obj → Prop
constant Green : obj → Prop
constant Likes : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop

axiom A1 : Big BaldEagle
axiom A2 : ¬ Green BaldEagle
axiom A3 : Likes BaldEagle Bear
axiom A4 : Likes BaldEagle Squirrel
axiom A5 : Chases Bear Lion
axiom A6 : Green Bear
axiom A7 : Visits Bear BaldEagle
axiom A8 : Visits Bear Squirrel
axiom A9 : ¬ Green Lion
axiom A10 : Likes Lion Bear
axiom A11 : Visits Lion Squirrel
axiom A12 : Chases Squirrel BaldEagle
axiom A13 : Cold Squirrel
axiom A14 : Visits Squirrel BaldEagle

axiom R1 : ∀ x : obj, Cold x → ¬ Young x
axiom R2 : ∀ x : obj, Big x → ¬ Green x
axiom R3 : ∀ x : obj, Big Lion ∧ Green Lion → Chases Lion BaldEagle
axiom R4 : ∀ x : obj, Chases x BaldEagle → Likes x Bear
axiom R5 : ∀ x : obj, Round x ∧ Visits x BaldEagle → Likes BaldEagle Squirrel
axiom R6 : ∀ x : obj, Visits x Lion → Likes x BaldEagle
axiom R7 : ∀ x : obj, Visits Lion Squirrel ∧ Chases Squirrel Bear → Chases Bear BaldEagle
axiom R8 : ∀ x : obj, Visits x Lion → Cold x
axiom R9 : ∀ x : obj, Likes x Bear → Chases x Bear

theorem bald_eagle_is_cold : Cold BaldEagle :=
begin
  sorry
end


theorem not_cold_BaldEagle : ¬ Cold BaldEagle :=
begin
  sorry
end
