universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Harry : obj

constant White : obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop

axiom T1 : White Anne
axiom T2 : Round Bob
axiom T3 : Green Erin
axiom T4 : Red Erin
axiom T5 : ¬ Round Erin
axiom T6 : White Erin
axiom T7 : Young Harry

axiom R1 : ∀ x : obj, Red x ∧ Round x → Quiet x
axiom R2 : ∀ x : obj, Young x → White x
axiom R3 : ∀ x : obj, Round x → Young x
axiom R4 : ∀ x : obj, Round x ∧ Smart x → ¬ Red x
axiom R5 : ∀ x : obj, White x → Red x
axiom R6 : ∀ x : obj, Quiet x → Green x
axiom R7 : ∀ x : obj, Red x ∧ ¬ White x → ¬ Green x

theorem bob_is_green : Green Bob :=
begin
  apply R6,
  apply R1,
  split,
  apply R5,
  apply R2,
  apply R3,
  exact T2,
  exact T2,
end

-- The answer is True

-- Now let's try to prove the negation of the theorem, which is Bob is not green

theorem not_bob_is_green : ¬ Green Bob :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean. So
-- The answer is True