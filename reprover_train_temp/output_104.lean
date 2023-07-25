universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Cold : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Round : obj → Prop

axiom T1 : Cold Bob
axiom T2 : Cold Dave
axiom T3 : Kind Dave
axiom T4 : Nice Dave
axiom T5 : Quiet Dave
axiom T6 : Rough Dave
axiom T7 : ¬ White Dave
axiom T8 : Cold Erin
axiom T9 : Kind Erin
axiom T10 : Quiet Erin
axiom T11 : ¬ Cold Fiona

axiom R1 : ∀ x : obj, White x → Quiet x
axiom R2 : ∀ x : obj, Round x ∧ ¬ Cold x → ¬ Quiet x
axiom R3 : ∀ x : obj, Cold x → Round x
axiom R4 : ∀ x : obj, Kind x → Nice x
axiom R5 : ∀ x : obj, Round x ∧ Quiet x → Rough x
axiom R6 : Nice Bob → Quiet Bob
axiom R7 : ∀ x : obj, Round x → Kind x

theorem bob_is_not_rough : ¬ Rough Bob :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Bob is rough

theorem bob_is_rough : Rough Bob :=
begin
  apply R5,
  split,
  apply R3,
  exact T1,
  apply R6,
  apply R4,
  apply R7,
  apply R3,
  exact T1,
end

-- It can be proven in Lean. So
-- The answer is False