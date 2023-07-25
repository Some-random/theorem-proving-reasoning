universe u

constant obj : Type u

constant Bob : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Green : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Furry : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop

axiom T1 : Green Bob
axiom T2 : Kind Bob
axiom T3 : ¬ Quiet Bob
axiom T4 : Furry Erin
axiom T5 : Kind Erin
axiom T6 : Quiet Fiona
axiom T7 : Rough Gary

axiom R1 : ∀ x : obj, Rough x → Cold x
axiom R2 : Green Fiona → ¬ Smart Fiona
axiom R3 : Kind Bob → ¬ Rough Bob
axiom R4 : ∀ x : obj, Smart x → Green x
axiom R5 : ∀ x : obj, Furry x → ¬ Smart x
axiom R6 : ∀ x : obj, Cold x → Smart x
axiom R7 : Kind Gary → Quiet Gary
axiom R8 : ∀ x : obj, Green x ∧ Rough x → Kind x

theorem gary_is_not_quiet : ¬ Quiet Gary :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Gary is quiet

theorem gary_is_quiet : Quiet Gary :=
begin
  apply R7,
  apply R8 Gary,
  split,
  apply R4,
  apply R6,
  apply R1,
  exact T7,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False