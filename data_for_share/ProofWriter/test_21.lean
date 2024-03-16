universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Fiona : obj

constant Nice : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Young : obj → Prop
constant Smart : obj → Prop

axiom T1 : Nice Anne
axiom T2 : Big Bob
axiom T3 : Blue Bob
axiom T4 : Cold Bob
axiom T5 : Big Charlie
axiom T6 : Cold Charlie
axiom T7 : Nice Charlie
axiom T8 : Young Charlie
axiom T9 : Furry Fiona
axiom T10 : Young Fiona

axiom R1 : ∀ x : obj, Furry x ∧ Nice x → Cold x
axiom R2 : Blue Bob ∧ Big Bob → Cold Bob
axiom R3 : ∀ x : obj, Blue x ∧ Cold x → Big x
axiom R4 : ∀ x : obj, Nice x → Smart x
axiom R5 : ∀ x : obj, Smart x ∧ Big x → Nice x
axiom R6 : ∀ x : obj, Smart x → Blue x
axiom R7 : ∀ x : obj, Blue x ∧ Smart x → Furry x
axiom R8 : ∀ x : obj, Furry x ∧ Cold x → Smart x
axiom R9 : ∀ x : obj, Cold x → Big x

theorem not_smart_Charlie : ¬ Smart Charlie :=
begin
  sorry
end


theorem smart_Charlie : Smart Charlie :=
begin
  sorry
end
