universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Bear : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Red : obj → Prop
constant Blue : obj → obj → Prop
constant Green : obj → obj → Prop
constant Round : obj → Prop

axiom A1 : Chases BaldEagle Squirrel
axiom A2 : Eats BaldEagle Bear
axiom A3 : ¬ Eats Bear Lion
axiom A4 : Visits Bear Lion
axiom A5 : ¬ Eats Lion BaldEagle
axiom A6 : Red Squirrel
axiom A7 : Visits Squirrel BaldEagle

axiom R1 : ∀ x : obj, Round x → Eats x Squirrel
axiom R2 : ∀ x : obj, Blue x ∧ Green x → Chases x BaldEagle
axiom R3 : ∀ x : obj, Eats x Squirrel → Green Squirrel
axiom R4 : Round BaldEagle → Chases BaldEagle Lion
axiom R5 : ∀ x : obj, Blue x → Chases x Squirrel
axiom R6 : ∀ x : obj, Red x → Blue x
axiom R7 : ∀ x : obj, Chases x Lion → Blue x
axiom R8 : ∀ x : obj, Blue x ∧ Red x → Round x
axiom R9 : ∀ x : obj, Visits x BaldEagle ∧ ¬ Round x → Visits x Lion

theorem not_round_lion : ¬ Round Lion :=
begin
end


theorem round_lion : Round Lion :=
begin
end
