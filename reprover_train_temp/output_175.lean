universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Cold : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Cold Anne
axiom T2 : Kind Anne
axiom T3 : Round Anne
axiom T4 : ¬ Smart Anne
axiom T5 : Young Charlie
axiom T6 : Kind Gary
axiom T7 : Round Gary
axiom T8 : Blue Harry
axiom T9 : ¬ Cold Harry
axiom T10 : Young Harry

axiom R1 : ∀ x : obj, Kind x ∧ Young x → ¬ Quiet x
axiom R2 : ∀ x : obj, Cold x ∧ ¬ Kind x → ¬ Blue x
axiom R3 : ∀ x : obj, Round x → Blue x
axiom R4 : ∀ x : obj, Cold x → Young x
axiom R5 : ∀ x : obj, Kind x ∧ Blue x → Cold x
axiom R6 : ¬ Quiet Gary → Smart Gary

theorem gary_is_not_smart : ¬ Smart Gary :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Gary is smart

theorem gary_is_smart : Smart Gary :=
begin
  apply R6,
  apply R1 Gary,
  split,
  exact T6,
  apply R4,
  apply R5 Gary,
  split,
  exact T6,
  apply R3,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False