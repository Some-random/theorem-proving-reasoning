universe u

constant obj : Type u

constant Anne : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Furry : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Kind : obj → Prop

axiom T1 : Furry Anne
axiom T2 : Nice Anne
axiom T3 : Quiet Anne
axiom T4 : Red Anne
axiom T5 : Rough Anne
axiom T6 : White Anne
axiom T7 : Rough Fiona
axiom T8 : Kind Gary
axiom T9 : Furry Harry
axiom T10 : Kind Harry
axiom T11 : Nice Harry
axiom T12 : Quiet Harry
axiom T13 : Red Harry
axiom T14 : White Harry

axiom R1 : ∀ x : obj, White x → Furry x
axiom R2 : ∀ x : obj, Red x → Kind x
axiom R3 : ∀ x : obj, Kind x → White x
axiom R4 : ∀ x : obj, Rough x ∧ Red x → Nice x
axiom R5 : ∀ x : obj, Furry x → Red x
axiom R6 : ∀ x : obj, Quiet x → Red x
axiom R7 : ∀ x : obj, Rough x → Kind x

theorem fiona_is_not_nice : ¬ Nice Fiona :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Fiona is nice

theorem fiona_is_nice : Nice Fiona :=
begin
  apply R4 Fiona,
  split,
  exact T7,
  apply R5,
  apply R1,
  apply R3,
  apply R7,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False