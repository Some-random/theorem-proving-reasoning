universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Gary : obj

constant Green : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant White : obj → Prop

axiom T1 : Green Bob
axiom T2 : Big Charlie
axiom T3 : Blue Charlie
axiom T4 : Furry Charlie
axiom T5 : Green Charlie
axiom T6 : Kind Charlie
axiom T7 : Nice Charlie
axiom T8 : White Charlie
axiom T9 : Kind Erin
axiom T10 : Nice Erin
axiom T11 : Green Gary
axiom T12 : Kind Gary
axiom T13 : Nice Gary
axiom T14 : ¬ White Gary

axiom R1 : Kind Gary ∧ Nice Gary → Blue Gary
axiom R2 : ∀ x : obj, Nice x ∧ ¬ Furry x → Kind x
axiom R3 : ∀ x : obj, Green x → Nice x
axiom R4 : Nice Bob → Kind Bob
axiom R5 : Big Bob → White Bob
axiom R6 : White Bob ∧ Kind Bob → Blue Bob
axiom R7 : ∀ x : obj, Blue x ∧ ¬ Green x → Big x
axiom R8 : ∀ x : obj, Kind x → Big x

theorem bob_is_blue : Blue Bob :=
begin
  apply R6,
  split,
  apply R5,
  apply R8,
  apply R4,
  apply R3,
  exact T1,
  apply R4,
  apply R3,
  exact T1,
end

-- The answer is True