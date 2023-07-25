universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Fiona : obj
constant Gary : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop

axiom T1 : Big Anne
axiom T2 : Big Charlie
axiom T3 : Blue Charlie
axiom T4 : Cold Charlie
axiom T5 : Green Charlie
axiom T6 : Nice Charlie
axiom T7 : Rough Charlie
axiom T8 : Young Charlie
axiom T9 : Big Fiona
axiom T10 : Green Fiona
axiom T11 : Big Gary
axiom T12 : Cold Gary
axiom T13 : Green Gary
axiom T14 : Nice Gary
axiom T15 : Rough Gary
axiom T16 : Young Gary

axiom R1 : ∀ x : obj, Rough x ∧ Young x → Nice x
axiom R2 : ∀ x : obj, Big x ∧ Cold x → Rough x
axiom R3 : ∀ x : obj, Rough x ∧ Blue x → Young x
axiom R4 : ∀ x : obj, Big x → Cold x
axiom R5 : ∀ x : obj, Rough x → Blue x

theorem fiona_is_not_nice : ¬ Nice Fiona :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Fiona is nice

theorem fiona_is_nice : Nice Fiona :=
begin
  apply R1,
  split,
  apply R2,
  split,
  exact T9,
  apply R4,
  exact T9,
  apply R3,
  split,
  apply R2,
  split,
  exact T9,
  apply R4,
  exact T9,
  apply R5,
  apply R2,
  split,
  exact T9,
  apply R4,
  exact T9,
end

-- It can be proven in Lean. So
-- The answer is False