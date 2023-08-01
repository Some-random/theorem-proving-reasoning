universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Nice : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant Kind : obj → Prop
constant Big : obj → Prop

axiom A1 : Nice Anne
axiom A2 : White Anne
axiom A3 : Young Anne
axiom A4 : Cold Dave
axiom A5 : Nice Dave
axiom A6 : Smart Dave
axiom A7 : Cold Erin
axiom A8 : ¬ Kind Erin
axiom A9 : ¬ Nice Erin
axiom A10 : Smart Erin
axiom A11 : Young Erin
axiom A12 : Kind Fiona

axiom R1 : ∀ x : obj, Smart x → White x
axiom R2 : ∀ x : obj, Kind x ∧ Cold x → Smart x
axiom R3 : ∀ x : obj, Kind x → Big x
axiom R4 : ∀ x : obj, Cold Fiona ∧ Big Fiona → Nice Fiona
axiom R5 : ∀ x : obj, Nice x ∧ Big x → Cold x
axiom R6 : ∀ x : obj, Young x ∧ White x → Cold x
axiom R7 : Nice Anne → Cold Anne
axiom R8 : ∀ x : obj, Big x ∧ Young x → Nice x
axiom R9 : ∀ x : obj, Big x → Young x

theorem not_big_Fiona : ¬ Big Fiona :=
begin
end


theorem big_Fiona : Big Fiona :=
begin
end
