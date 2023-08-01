universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Big : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Green : obj → Prop

axiom A1 : Big Charlie
axiom A2 : Nice Dave
axiom A3 : Round Dave
axiom A4 : Big Erin
axiom A5 : Nice Erin
axiom A6 : Red Fiona
axiom A7 : Rough Fiona

axiom R1 : ∀ x : obj, Red x ∧ Big x → Nice x
axiom R2 : Round Dave ∧ Rough Dave → Big Dave
axiom R3 : ∀ x : obj, Round x ∧ Young x → Big x
axiom R4 : ∀ x : obj, Nice x → Young x
axiom R5 : Round Charlie ∧ Big Charlie → Young Charlie
axiom R6 : ∀ x : obj, Red x → Big x
axiom R7 : ∀ x : obj, Rough x ∧ Green x → Round x
axiom R8 : ∀ x : obj, Big x → Red x
axiom R9 : ∀ x : obj, Young x → Green x

theorem not_nice_Fiona : ¬ Nice Fiona :=
begin
end


theorem nice_Fiona : Nice Fiona :=
begin
end
