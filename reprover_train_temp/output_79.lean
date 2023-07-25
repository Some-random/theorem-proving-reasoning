universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Kind : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Kind Anne
axiom T2 : Nice Anne
axiom T3 : Red Anne
axiom T4 : Smart Anne
axiom T5 : Young Anne
axiom T6 : Big Charlie
axiom T7 : Kind Charlie
axiom T8 : Nice Charlie
axiom T9 : Quiet Charlie
axiom T10 : Young Charlie
axiom T11 : Big Erin
axiom T12 : Kind Erin
axiom T13 : Quiet Erin
axiom T14 : Red Erin
axiom T15 : Smart Erin
axiom T16 : Young Harry

axiom R1 : ∀ x : obj, Red x → Young x
axiom R2 : ∀ x : obj, Young x → Quiet x
axiom R3 : ∀ x : obj, Quiet x ∧ Young x → Kind x
axiom R4 : ∀ x : obj, Big x → Smart x
axiom R5 : ∀ x : obj, Kind x → Red x
axiom R6 : ∀ x : obj, Young x → Quiet x
axiom R7 : ∀ x : obj, Kind x ∧ Nice x → Big x
axiom R8 : ∀ x : obj, Kind x ∧ Smart x → Nice x
axiom R9 : ∀ x : obj, Kind x → Big x

theorem harry_is_not_nice : ¬ Nice Harry :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Harry is nice

theorem harry_is_nice : Nice Harry :=
begin
  apply R8,
  split,
  apply R3,
  split,
  apply R2,
  exact T16,
  exact T16,
  apply R4,
  apply R9,
  apply R3,
  split,
  apply R2,
  exact T16,
  exact T16,
end

-- It can be proven in Lean. So
-- The answer is False