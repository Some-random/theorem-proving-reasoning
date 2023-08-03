universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Round : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Young : obj → Prop

axiom T1 : ¬ Round Bob
axiom T2 : Furry Charlie
axiom T3 : Nice Charlie
axiom T4 : Smart Charlie
axiom T5 : Red Erin
axiom T6 : Furry Fiona
axiom T7 : Young Fiona

axiom R1 : ∀ x : obj, Red x → ¬ Round x
axiom R2 : ∀ x : obj, Red x → ¬ Blue x
axiom R3 : ∀ x : obj, Young x → Furry x
axiom R4 : ∀ x : obj, Red x ∧ ¬ Round x → Nice x
axiom R5 : ∀ x : obj, Round x ∧ Nice x → ¬ Young x
axiom R6 : ∀ x : obj, Smart x → Young x
axiom R7 : ∀ x : obj, Nice x → Smart x

theorem not_furry_Erin : ¬ Furry Erin :=
begin
  sorry
end


theorem furry_Erin : Furry Erin :=
begin
  sorry
end
