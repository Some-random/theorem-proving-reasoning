universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Fiona : obj
constant Gary : obj

constant Big : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop

axiom T1 : Big Bob
axiom T2 : Green Bob
axiom T3 : Quiet Bob
axiom T4 : Round Bob
axiom T5 : Cold Dave
axiom T6 : ¬ Quiet Dave
axiom T7 : Round Fiona
axiom T8 : Big Gary
axiom T9 : Red Gary
axiom T10 : ¬ Round Gary
axiom T11 : Young Gary

axiom R1 : ∀ x : obj, Green x → Quiet x
axiom R2 : ∀ x : obj, Big x ∧ ¬ Round x → Young x
axiom R3 : ∀ x : obj, Round x → Young x
axiom R4 : Round Fiona ∧ Quiet Fiona → Big Fiona
axiom R5 : ∀ x : obj, Round x → Green x
axiom R6 : ∀ x : obj, Green x ∧ Cold x → ¬ Red x
axiom R7 : ∀ x : obj, Big x → Cold x
axiom R8 : Big Bob ∧ Cold Bob → Quiet Bob

theorem fiona_is_not_red : ¬ Red Fiona :=
begin
  apply R6 Fiona,
  split,
  apply R5,
  exact T7,
  apply R7,
  apply R4,
  split,
  exact T7,
  apply R1,
  apply R5,
  exact T7,
end

-- The answer is True