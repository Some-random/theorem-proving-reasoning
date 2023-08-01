universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Fiona : obj

constant Quiet : obj → Prop
constant Red : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop

axiom A1 : Quiet Anne
axiom A2 : Red Anne
axiom A3 : Kind Bob
axiom A4 : Nice Bob
axiom A5 : Quiet Bob
axiom A6 : ¬ Red Bob
axiom A7 : Round Bob
axiom A8 : Big Charlie
axiom A9 : Kind Charlie
axiom A10 : Quiet Fiona

axiom R1 : ∀ x : obj, Round x → Nice x
axiom R2 : ∀ x : obj, Kind x ∧ Red x → Rough x
axiom R3 : ∀ x : obj, Big x → Quiet x
axiom R4 : ∀ x : obj, Rough x → Round x
axiom R5 : ∀ x : obj, Nice Charlie ∧ Big Charlie → ¬ Kind Charlie
axiom R6 : ∀ x : obj, Red x → Kind x
axiom R7 : ∀ x : obj, Round x ∧ Nice x → ¬ Big x

theorem bob_is_rough : Rough Bob :=
begin
end


theorem not_rough_Bob : ¬ Rough Bob :=
begin
end
