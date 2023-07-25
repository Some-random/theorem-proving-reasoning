universe u

constant obj : Type u

constant Bob : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Green : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Quiet : obj → Prop
constant Blue : obj → Prop

axiom T1 : Green Bob
axiom T2 : Rough Erin
axiom T3 : Cold Gary
axiom T4 : Smart Gary
axiom T5 : Green Harry
axiom T6 : Smart Harry
axiom T7 : White Harry

axiom R1 : ∀ x : obj, White x → Green x
axiom R2 : ∀ x : obj, Rough x → Quiet x
axiom R3 : ∀ x : obj, Green x ∧ Smart x → Cold x
axiom R4 : ∀ x : obj, Quiet x → Blue x
axiom R5 : ∀ x : obj, Quiet x → White x
axiom R6 : ∀ x : obj, White x → Rough x
axiom R7 : ∀ x : obj, Quiet x ∧ Green x → Smart x

theorem erin_is_cold : Cold Erin :=
begin
  apply R3,
  split,
  apply R1,
  apply R5,
  apply R2,
  exact T2,
  apply R7,
  split,
  apply R2,
  exact T2,
  apply R1,
  apply R5,
  apply R2,
  exact T2,
end

-- The answer is True

-- Now let's try to prove the negation of the theorem, which is Erin is not cold

theorem not_erin_is_cold : ¬ Cold Erin :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean. So
-- The answer is True