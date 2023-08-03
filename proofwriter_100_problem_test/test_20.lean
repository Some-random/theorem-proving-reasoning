universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Gary : obj

constant Blue : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop

axiom T1 : Blue Bob
axiom T2 : White Bob
axiom T3 : Green Charlie
axiom T4 : Quiet Charlie
axiom T5 : Round Charlie
axiom T6 : White Charlie
axiom T7 : Blue Erin
axiom T8 : Cold Erin
axiom T9 : Green Erin
axiom T10 : Big Gary
axiom T11 : Blue Gary
axiom T12 : Cold Gary
axiom T13 : Green Gary
axiom T14 : Quiet Gary
axiom T15 : Round Gary
axiom T16 : White Gary

axiom R1 : ∀ x : obj, White x → Cold x
axiom R2 : ∀ x : obj, Blue x → White x
axiom R3 : ∀ x : obj, Cold x → Round x
axiom R4 : ∀ x : obj, Green x → Quiet x
axiom R5 : ∀ x : obj, Round x ∧ Big x → Green x
axiom R6 : ∀ x : obj, Round Bob → Big Bob
axiom R7 : ∀ x : obj, White x ∧ Quiet x → Big x
axiom R8 : ∀ x : obj, Big x → Cold x
axiom R9 : ∀ x : obj, Blue x ∧ Quiet x → Cold x

theorem not_quiet_Bob : ¬ Quiet Bob :=
begin
  sorry
end


theorem quiet_Bob : Quiet Bob :=
begin
  sorry
end
