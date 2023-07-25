universe u

constant obj : Type u

constant Bob : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Rough : obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Smart : obj → Prop

axiom T1 : Rough Bob
axiom T2 : Blue Erin
axiom T3 : Nice Erin
axiom T4 : Red Erin
axiom T5 : Blue Fiona
axiom T6 : Red Fiona
axiom T7 : Rough Fiona
axiom T8 : Round Fiona
axiom T9 : Red Gary
axiom T10 : Round Gary

axiom R1 : ∀ x : obj, Rough x → Round x
axiom R2 : Rough Bob ∧ Blue Bob → White Bob
axiom R3 : ∀ x : obj, Smart x → Round x
axiom R4 : ∀ x : obj, Red x → Smart x
axiom R5 : ∀ x : obj, White x ∧ Nice x → Round x
axiom R6 : ∀ x : obj, Smart x ∧ Nice x → Round x
axiom R7 : ∀ x : obj, Rough x ∧ Round x → Red x
axiom R8 : ∀ x : obj, Blue x → Nice x
axiom R9 : ∀ x : obj, Smart x → Blue x

theorem bob_is_white : White Bob :=
begin
  apply R2,
  split,
  exact T1,
  apply R9,
  apply R4,
  apply R7,
  split,
  exact T1,
  apply R1,
  exact T1,
end

-- The answer is True