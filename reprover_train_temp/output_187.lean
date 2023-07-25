universe u

constant obj : Type u

constant Dave : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop
constant White : obj → Prop

axiom T1 : Furry Dave
axiom T2 : Quiet Dave
axiom T3 : Big Fiona
axiom T4 : Furry Fiona
axiom T5 : Nice Fiona
axiom T6 : Rough Gary
axiom T7 : Furry Harry

axiom R1 : ∀ x : obj, Kind x ∧ Rough x → Furry x
axiom R2 : ∀ x : obj, Big x ∧ Quiet x → Rough x
axiom R3 : ∀ x : obj, Nice x → Rough x
axiom R4 : ∀ x : obj, Quiet x → Kind x
axiom R5 : ∀ x : obj, Rough x → Nice x
axiom R6 : ∀ x : obj, Furry x → White x
axiom R7 : ∀ x : obj, Nice x → Quiet x

theorem gary_is_not_white : ¬ White Gary :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Gary is white

theorem gary_is_white : White Gary :=
begin
  apply R6,
  apply R1,
  split,
  apply R4,
  apply R7,
  apply R5,
  exact T6,
  exact T6,
end

-- It can be proven in Lean. So
-- The answer is False