universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Kind : obj → Prop
constant Nice : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop

axiom A1 : Kind Anne
axiom A2 : Nice Anne
axiom A3 : ¬ Big Charlie
axiom A4 : Cold Charlie
axiom A5 : Kind Charlie
axiom A6 : Smart Charlie
axiom A7 : Young Charlie
axiom A8 : Cold Erin
axiom A9 : Kind Erin
axiom A10 : Nice Erin
axiom A11 : Young Erin
axiom A12 : Big Fiona

-- If Fiona is young then Fiona is nice
axiom R1 : Young Fiona → Nice Fiona
-- If something is nice and kind then it is smart
axiom R2 : ∀ x : obj, Nice x ∧ Kind x → Smart x
-- Big, kind things are young
axiom R3 : ∀ x : obj, Big x ∧ Kind x → Young x
-- All big things are round
axiom R4 : ∀ x : obj, Big x → Round x
-- If something is round then it is kind
axiom R5 : ∀ x : obj, Round x → Kind x
-- If Charlie is big then Charlie is young
axiom R6 : Big Charlie → Young Charlie
-- If something is smart and not round then it is not cold
axiom R7 : ∀ x : obj, Smart x ∧ ¬ Round x → ¬ Cold x
-- All round, smart things are cold
axiom R8 : ∀ x : obj, Round x ∧ Smart x → Cold x
-- Nice things are cold
axiom R9 : ∀ x : obj, Nice x → Cold x


theorem not_kind_Fiona : ¬ Kind Fiona :=
begin
  sorry
end


theorem kind_Fiona : Kind Fiona :=
begin
  sorry
end
