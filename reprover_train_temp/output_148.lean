universe u

constant obj : Type u

constant Erin : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Smart : obj → Prop

axiom T1 : Furry Erin
axiom T2 : Quiet Erin
axiom T3 : Red Fiona
axiom T4 : Quiet Gary
axiom T5 : Smart Gary
axiom T6 : Blue Harry
axiom T7 : Furry Harry
axiom T8 : Nice Harry
axiom T9 : Quiet Harry
axiom T10 : Red Harry

axiom R1 : Blue Gary → Furry Gary
axiom R2 : ∀ x : obj, Nice x → Young x
axiom R3 : ∀ x : obj, Red x → Nice x
axiom R4 : ∀ x : obj, Young x ∧ Blue x → Quiet x
axiom R5 : ∀ x : obj, Nice x ∧ Quiet x → Red x
axiom R6 : ∀ x : obj, Smart x ∧ Quiet x → Red x
axiom R7 : ∀ x : obj, Red x → Quiet x
axiom R8 : ∀ x : obj, Red x ∧ Young x → Blue x
axiom R9 : Quiet Harry → Furry Harry

theorem gary_is_not_furry : ¬ Furry Gary :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Gary is furry

theorem gary_is_furry : Furry Gary :=
begin
  apply R1,
  apply R8,
  split,
  apply R6,
  split,
  exact T5,
  exact T4,
  apply R2,
  apply R3,
  apply R6,
  split,
  exact T5,
  exact T4,
end

-- It can be proven in Lean. So
-- The answer is False