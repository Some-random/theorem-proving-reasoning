universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Fiona : obj
constant Harry : obj

constant Furry : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop

axiom T1 : Furry Anne
axiom T2 : Rough Anne
axiom T3 : White Anne
axiom T4 : Rough Bob
axiom T5 : White Bob
axiom T6 : Big Fiona
axiom T7 : Red Harry

axiom R1 : ∀ x : obj, Red x ∧ White x → Rough x
axiom R2 : ∀ x : obj, White x ∧ Quiet x → Big x
axiom R3 : ∀ x : obj, Big x ∧ Red x → Rough x
axiom R4 : ∀ x : obj, Big x ∧ Red x → Quiet x
axiom R5 : ∀ x : obj, Big x ∧ Rough x → Furry x
axiom R6 : ∀ x : obj, Big x ∧ Furry x → White x
axiom R7 : ∀ x : obj, Red x → Round x
axiom R8 : ∀ x : obj, Furry x ∧ Round x → Big x
axiom R9 : ∀ x : obj, Round x → Big x

theorem harry_is_not_white : ¬ White Harry :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Harry is white

theorem harry_is_white : White Harry :=
begin
  apply R6,
  split,
  apply R9,
  apply R7,
  exact T7,
  apply R5,
  split,
  apply R9,
  apply R7,
  exact T7,
  apply R3,
  split,
  apply R9,
  apply R7,
  exact T7,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False