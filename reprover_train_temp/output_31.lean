universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Harry : obj

constant Green : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop

axiom T1 : Green Anne
axiom T2 : Red Anne
axiom T3 : Big Bob
axiom T4 : Red Bob
axiom T5 : Green Dave
axiom T6 : Blue Harry
axiom T7 : Green Harry

axiom R1 : ∀ x : obj, Furry x ∧ Big x → Red x
axiom R2 : ∀ x : obj, Big x → Rough x
axiom R3 : ∀ x : obj, Blue x → Nice x
axiom R4 : ∀ x : obj, Nice x → Furry x
axiom R5 : ∀ x : obj, Rough x → Blue x
axiom R6 : ∀ x : obj, Nice x ∧ Furry x → Green x

theorem bob_is_green : Green Bob :=
begin
  apply R6,
  split,
  apply R3,
  apply R5,
  apply R2,
  exact T3,
  apply R4,
  apply R3,
  apply R5,
  apply R2,
  exact T3,
end

-- The answer is True

-- Now let's try to prove the negation of the theorem, which is Bob is not green

theorem not_bob_is_green : ¬ Green Bob :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean. So
-- The answer is True