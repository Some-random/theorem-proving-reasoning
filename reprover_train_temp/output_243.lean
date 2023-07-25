universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Rough : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant White : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop

axiom T1 : Rough Anne
axiom T2 : Red Charlie
axiom T3 : Rough Charlie
axiom T4 : Blue Erin
axiom T5 : White Erin
axiom T6 : Blue Harry
axiom T7 : White Harry

axiom R1 : ∀ x : obj, Blue x ∧ Nice x → White x
axiom R2 : Round Charlie ∧ Rough Charlie → Young Charlie
axiom R3 : ∀ x : obj, Nice x ∧ White x → Rough x
axiom R4 : ∀ x : obj, Round x → Rough x
axiom R5 : ∀ x : obj, Young x → Red x
axiom R6 : ∀ x : obj, Nice x → Round x
axiom R7 : ∀ x : obj, Rough x ∧ Blue x → Round x
axiom R8 : ∀ x : obj, Young x → Nice x
axiom R9 : Red Charlie → Blue Charlie

theorem charlie_is_not_white : ¬ White Charlie :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Charlie is white

theorem charlie_is_white : White Charlie :=
begin
  apply R1,
  split,
  apply R9,
  exact T2,
  apply R8,
  apply R2,
  split,
  apply R7 Charlie,
  split,
  exact T3,
  apply R9,
  exact T2,
  exact T3,
end

-- It can be proven in Lean. So
-- The answer is False