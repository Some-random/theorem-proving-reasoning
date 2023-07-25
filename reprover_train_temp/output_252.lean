universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Cold : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop

axiom T1 : Cold Charlie
axiom T2 : Red Charlie
axiom T3 : Round Charlie
axiom T4 : White Charlie
axiom T5 : Green Dave
axiom T6 : Red Dave
axiom T7 : White Dave
axiom T8 : Green Erin
axiom T9 : Round Erin
axiom T10 : Green Fiona
axiom T11 : Nice Fiona
axiom T12 : Red Fiona
axiom T13 : Round Fiona
axiom T14 : White Fiona

axiom R1 : ∀ x : obj, Green x → White x
axiom R2 : ∀ x : obj, Nice x → Red x
axiom R3 : ∀ x : obj, Round x ∧ Red x → White x
axiom R4 : White Dave ∧ Young Dave → Cold Dave
axiom R5 : Young Charlie → Nice Charlie
axiom R6 : ∀ x : obj, Young x → Cold x
axiom R7 : ∀ x : obj, Green x ∧ Cold x → Nice x
axiom R8 : ∀ x : obj, Nice x ∧ Young x → Green x
axiom R9 : ∀ x : obj, White x → Young x

theorem erin_is_not_red : ¬ Red Erin :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Erin is red

theorem erin_is_red : Red Erin :=
begin
  apply R2,
  apply R7,
  split,
  exact T8,
  apply R6,
  apply R9,
  apply R1,
  exact T8,
end

-- It can be proven in Lean. So
-- The answer is False