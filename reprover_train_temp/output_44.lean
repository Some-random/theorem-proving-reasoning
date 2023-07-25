universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Harry : obj

constant Green : obj → Prop
constant Quiet : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop

axiom T1 : Green Anne
axiom T2 : Quiet Anne
axiom T3 : White Anne
axiom T4 : Big Bob
axiom T5 : Cold Bob
axiom T6 : Kind Bob
axiom T7 : White Bob
axiom T8 : Big Dave
axiom T9 : Quiet Dave
axiom T10 : Nice Harry

axiom R1 : ∀ x : obj, Green x → Kind x
axiom R2 : ∀ x : obj, Quiet x ∧ Green x → White x
axiom R3 : Big Dave → Cold Dave
axiom R4 : Nice Harry → Green Harry
axiom R5 : ∀ x : obj, Green x ∧ Cold x → Quiet x
axiom R6 : ∀ x : obj, Green x ∧ Kind x → Quiet x
axiom R7 : ∀ x : obj, White x → Big x
axiom R8 : ∀ x : obj, Green x ∧ Big x → Nice x

theorem harry_is_not_big : ¬ Big Harry :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Harry is big

theorem harry_is_big : Big Harry :=
begin
  apply R7,
  apply R2,
  split,
  apply R6,
  split,
  apply R4,
  exact T10,
  apply R1,
  apply R4,
  exact T10,
  apply R4,
  exact T10,
end

-- It can be proven in Lean. So
-- The answer is False