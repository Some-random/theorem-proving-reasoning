universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Harry : obj

constant Kind : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Kind Bob
axiom T2 : Nice Bob
axiom T3 : Red Bob
axiom T4 : Smart Bob
axiom T5 : White Bob
axiom T6 : Nice Charlie
axiom T7 : Smart Charlie
axiom T8 : White Charlie
axiom T9 : Green Dave
axiom T10 : Kind Dave
axiom T11 : Quiet Dave
axiom T12 : Red Dave
axiom T13 : Red Harry
axiom T14 : White Harry

axiom R1 : ∀ x : obj, Kind x ∧ Red x → Quiet x
axiom R2 : ∀ x : obj, Smart x → Green x
axiom R3 : ∀ x : obj, Green x ∧ Quiet x → Red x
axiom R4 : Green Harry → Smart Harry
axiom R5 : ∀ x : obj, White x → Nice x
axiom R6 : ∀ x : obj, White x ∧ Nice x → Kind x
axiom R7 : ∀ x : obj, Quiet x → Smart x
axiom R8 : ∀ x : obj, Quiet x → Kind x

theorem harry_is_green : Green Harry :=
begin
  apply R2,
  apply R7,
  apply R1,
  split,
  apply R6,
  split,
  exact T14,
  apply R5,
  exact T14,
  exact T13,
end

-- The answer is True

-- Now let's try to prove the negation of the theorem, which is Harry is not green

theorem not_harry_is_green : ¬ Green Harry :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean. So
-- The answer is True