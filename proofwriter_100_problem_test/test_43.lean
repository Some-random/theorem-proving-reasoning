universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Erin : obj

constant Big : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Rough : obj → Prop

axiom A1 : Big Anne
axiom A2 : Nice Anne
axiom A3 : Round Anne
axiom A4 : Nice Bob
axiom A5 : Round Bob
axiom A6 : Blue Dave
axiom A7 : Red Dave
axiom A8 : Smart Dave
axiom A9 : Red Erin
axiom A10 : Round Erin

axiom R1 : ∀ x : obj, Big x ∧ Round x → Smart x
axiom R2 : ∀ x : obj, Rough x → Blue x
axiom R3 : ∀ x : obj, Nice x → Big x
axiom R4 : ∀ x : obj, Nice x → Round x
axiom R5 : ∀ x : obj, Round x ∧ Red x → Rough x
axiom R6 : ∀ x : obj, Round x ∧ Smart x → Red x

theorem dave_is_rough : Rough Dave :=
begin
  sorry
end


theorem not_rough_Dave : ¬ Rough Dave :=
begin
  sorry
end
