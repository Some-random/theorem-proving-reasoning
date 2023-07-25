universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Erin : obj

constant Round : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop

axiom T1 : Round Anne
axiom T2 : White Anne
axiom T3 : Big Charlie
axiom T4 : Rough Charlie
axiom T5 : Green Dave
axiom T6 : Round Dave
axiom T7 : Young Erin

axiom R1 : ∀ x : obj, Kind x → Green x
axiom R2 : ∀ x : obj, Rough x ∧ White x → Big x
axiom R3 : ∀ x : obj, Green x → Rough x
axiom R4 : ∀ x : obj, Green x ∧ Big x → Young x
axiom R5 : Round Erin ∧ Green Erin → Big Erin
axiom R6 : ∀ x : obj, Round x ∧ White x → Kind x
axiom R7 : Big Dave ∧ Rough Dave → White Dave
axiom R8 : ∀ x : obj, Round x → White x

theorem anne_is_not_young : ¬ Young Anne :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Anne is young

theorem anne_is_young : Young Anne :=
begin
  apply R4,
  split,
  apply R1,
  apply R6,
  split,
  exact T1,
  exact T2,
  apply R2,
  split,
  apply R3,
  apply R1,
  apply R6,
  split,
  exact T1,
  exact T2,
  exact T2,
end

-- It can be proven in Lean. So
-- The answer is False