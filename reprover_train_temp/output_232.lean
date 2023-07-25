universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Harry : obj

constant Nice : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop

axiom T1 : ¬ Nice Anne
axiom T2 : Red Anne
axiom T3 : White Anne
axiom T4 : Young Anne
axiom T5 : Red Bob
axiom T6 : Green Erin
axiom T7 : Nice Erin
axiom T8 : Kind Harry
axiom T9 : Nice Harry
axiom T10 : Rough Harry

axiom R1 : ∀ x : obj, Kind x ∧ Red x → Green x
axiom R2 : ∀ x : obj, Rough x ∧ Young x → Green x
axiom R3 : ∀ x : obj, Green x ∧ Young x → White x
axiom R4 : ∀ x : obj, Rough x ∧ Kind x → White x
axiom R5 : ∀ x : obj, Kind x → Rough x
axiom R6 : ∀ x : obj, Young x → ¬ Nice x
axiom R7 : ∀ x : obj, Red x → Kind x
axiom R8 : White Bob → Young Bob

theorem bob_is_nice : Nice Bob :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Bob is not nice

theorem not_bob_is_nice : ¬ Nice Bob :=
begin
  apply R6,
  apply R8,
  apply R4 Bob,
  split,
  apply R5,
  apply R7,
  exact T5,
  apply R7,
  exact T5,
end

-- It can be proven in Lean. So
-- The answer is False