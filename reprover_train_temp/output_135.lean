universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Gary : obj
constant Harry : obj

constant Green : obj → Prop
constant Nice : obj → Prop
constant White : obj → Prop
constant Kind : obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop

axiom T1 : ¬ Green Anne
axiom T2 : Nice Anne
axiom T3 : White Anne
axiom T4 : Kind Bob
axiom T5 : Nice Gary
axiom T6 : Blue Harry
axiom T7 : Kind Harry

axiom R1 : ∀ x : obj, Kind x ∧ White x → Red x
axiom R2 : ∀ x : obj, Kind x → Nice x
axiom R3 : ∀ x : obj, Blue x ∧ Round x → White x
axiom R4 : ∀ x : obj, Nice x → White x
axiom R5 : ∀ x : obj, Green x ∧ White x → Round x
axiom R6 : ∀ x : obj, Nice x ∧ Red x → Green x

theorem harry_is_not_round : ¬ Round Harry :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Harry is round

theorem harry_is_round : Round Harry :=
begin
  apply R5,
  split,
  apply R6,
  split,
  apply R2,
  exact T7,
  apply R1,
  split,
  exact T7,
  apply R4,
  apply R2,
  exact T7,
  apply R4,
  apply R2,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False