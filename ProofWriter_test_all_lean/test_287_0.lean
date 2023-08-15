universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Fiona : obj

constant Cold : obj → Prop
constant Kind : obj → Prop
constant Blue : obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop
constant Big : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Kind Anne
axiom A3 : Blue Charlie
axiom A4 : Round Charlie
axiom A5 : Blue Dave
axiom A6 : ¬ Green Fiona
axiom A7 : Kind Fiona

-- If Charlie is cold then Charlie is quiet
axiom R1 : Cold Charlie → Quiet Charlie
-- If Charlie is big then Charlie is not green
axiom R2 : Big Charlie → ¬ Green Charlie
-- If Anne is kind then Anne is big
axiom R3 : Kind Anne → Big Anne
-- All big people are blue
axiom R4 : ∀ x : obj, Big x → Blue x
-- Blue people are quiet
axiom R5 : ∀ x : obj, Blue x → Quiet x
-- If Dave is kind then Dave is cold
axiom R6 : Kind Dave → Cold Dave
-- If someone is round then they are green
axiom R7 : ∀ x : obj, Round x → Green x
-- Quiet people are round
axiom R8 : ∀ x : obj, Quiet x → Round x
-- If someone is kind and not blue then they are round
axiom R9 : ∀ x : obj, Kind x ∧ ¬ Blue x → Round x


theorem not_green_Charlie : ¬ Green Charlie :=
begin
  sorry
end


theorem green_Charlie : Green Charlie :=
begin
  sorry
end
