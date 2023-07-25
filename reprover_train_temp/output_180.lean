universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop

axiom T1 : Kind Anne
axiom T2 : Quiet Anne
axiom T3 : Round Anne
axiom T4 : Big Erin
axiom T5 : Blue Erin
axiom T6 : Quiet Erin
axiom T7 : Round Erin
axiom T8 : Smart Erin
axiom T9 : Young Erin
axiom T10 : Big Fiona
axiom T11 : Blue Fiona
axiom T12 : Quiet Fiona
axiom T13 : Smart Fiona
axiom T14 : Young Fiona
axiom T15 : Round Harry
axiom T16 : Young Harry

axiom R1 : ∀ x : obj, Quiet x ∧ Smart x → Blue x
axiom R2 : ∀ x : obj, Blue x → Kind x
axiom R3 : ∀ x : obj, Smart x → Round x
axiom R4 : ∀ x : obj, Quiet x → Smart x
axiom R5 : ∀ x : obj, Smart x ∧ Young x → Round x
axiom R6 : ∀ x : obj, Round x → Quiet x
axiom R7 : ∀ x : obj, Smart x ∧ Kind x → Big x

theorem harry_is_not_big : ¬ Big Harry :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Harry is big

theorem harry_is_big : Big Harry :=
begin
  apply R7,
  split,
  apply R4,
  apply R6,
  exact T15,
  apply R2,
  apply R1,
  split,
  apply R6,
  exact T15,
  apply R4,
  apply R6,
  exact T15,
end

-- It can be proven in Lean. So
-- The answer is False