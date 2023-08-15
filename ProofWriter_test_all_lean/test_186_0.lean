universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Dave : obj

constant Red : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant Furry : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Red Anne
axiom A2 : Big Bob
axiom A3 : Green Bob
axiom A4 : Red Bob
axiom A5 : Furry Charlie
axiom A6 : Big Dave
axiom A7 : Blue Dave

-- If something is big then it is smart
axiom R1 : ∀ x : obj, Big x → Smart x
-- If something is blue then it is green
axiom R2 : ∀ x : obj, Blue x → Green x
-- All furry things are big
axiom R3 : ∀ x : obj, Furry x → Big x
-- Smart things are blue
axiom R4 : ∀ x : obj, Smart x → Blue x
-- If something is green then it is furry
axiom R5 : ∀ x : obj, Green x → Furry x
-- Green things are smart
axiom R6 : ∀ x : obj, Green x → Smart x
-- All green things are quiet
axiom R7 : ∀ x : obj, Green x → Quiet x


theorem charlie_is_red : Red Charlie :=
begin
  sorry
end


theorem not_red_Charlie : ¬ Red Charlie :=
begin
  sorry
end
