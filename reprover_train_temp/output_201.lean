universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Erin : obj

constant Blue : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Quiet : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop

axiom T1 : ¬ Blue Bob
axiom T2 : Kind Bob
axiom T3 : Red Bob
axiom T4 : Quiet Charlie
axiom T5 : ¬ Nice Dave
axiom T6 : Red Dave
axiom T7 : Quiet Erin

axiom R1 : ∀ x : obj, Young x → Nice x
axiom R2 : ∀ x : obj, Quiet x → Young x
axiom R3 : ∀ x : obj, Quiet x ∧ Nice x → ¬ Blue x
axiom R4 : ∀ x : obj, Quiet x ∧ Rough x → Kind x
axiom R5 : ∀ x : obj, Nice x ∧ Blue x → Rough x
axiom R6 : ∀ x : obj, Young x ∧ ¬ Blue x → Rough x

theorem erin_is_not_kind : ¬ Kind Erin :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Erin is kind

theorem erin_is_kind : Kind Erin :=
begin
  apply R4,
  split,
  exact T7,
  apply R6,
  split,
  apply R2,
  exact T7,
  apply R3 Erin,
  split,
  exact T7,
  apply R1,
  apply R2,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False