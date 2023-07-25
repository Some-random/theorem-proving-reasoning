universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Fiona : obj

constant Quiet : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Red : obj → Prop
constant Nice : obj → Prop

axiom T1 : Quiet Anne
axiom T2 : Kind Bob
axiom T3 : Round Bob
axiom T4 : Smart Bob
axiom T5 : White Bob
axiom T6 : Kind Erin
axiom T7 : Quiet Erin
axiom T8 : Round Erin
axiom T9 : Smart Erin
axiom T10 : White Erin
axiom T11 : Quiet Fiona

axiom R1 : Red Fiona → Round Fiona
axiom R2 : ∀ x : obj, Round x → Nice x
axiom R3 : Quiet Fiona → Red Fiona
axiom R4 : ∀ x : obj, Round x → Nice x
axiom R5 : ∀ x : obj, Quiet x ∧ Round x → Kind x
axiom R6 : ∀ x : obj, Nice x ∧ White x → Smart x
axiom R7 : ∀ x : obj, Red x ∧ Nice x → White x

theorem fiona_is_smart : Smart Fiona :=
begin
  apply R6,
  split,
  apply R2,
  apply R1,
  apply R3,
  exact T11,
  apply R7,
  split,
  apply R3,
  exact T11,
  apply R2,
  apply R1,
  apply R3,
  exact T11,
end

-- The answer is True