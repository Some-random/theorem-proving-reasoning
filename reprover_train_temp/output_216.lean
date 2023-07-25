universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Green : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Round : obj → Prop
constant Kind : obj → Prop

axiom T1 : Green Anne
axiom T2 : Nice Anne
axiom T3 : Quiet Anne
axiom T4 : Big Erin
axiom T5 : Nice Erin
axiom T6 : Quiet Erin
axiom T7 : Blue Gary
axiom T8 : Green Gary
axiom T9 : Blue Harry
axiom T10 : Green Harry
axiom T11 : Kind Harry
axiom T12 : Round Harry

axiom R1 : ∀ x : obj, Kind x ∧ Blue x → Nice x
axiom R2 : ∀ x : obj, Nice x → Round x
axiom R3 : ∀ x : obj, Round x → Quiet x
axiom R4 : ∀ x : obj, Blue x → Round x
axiom R5 : ∀ x : obj, Nice x → Big x
axiom R6 : ∀ x : obj, Round x ∧ Quiet x → Kind x

theorem gary_is_not_big : ¬ Big Gary :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Gary is big

theorem gary_is_big : Big Gary :=
begin
  apply R5,
  apply R1,
  split,
  apply R6,
  split,
  apply R4,
  exact T7,
  apply R3,
  apply R4,
  exact T7,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False