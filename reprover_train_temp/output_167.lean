universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Fiona : obj
constant Gary : obj

constant Big : obj → Prop
constant Green : obj → Prop
constant Smart : obj → Prop
constant Nice : obj → Prop
constant Cold : obj → Prop
constant White : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Big Anne
axiom T2 : Green Anne
axiom T3 : Smart Anne
axiom T4 : Nice Dave
axiom T5 : Smart Dave
axiom T6 : Green Fiona
axiom T7 : Nice Fiona
axiom T8 : Cold Gary
axiom T9 : Green Gary
axiom T10 : Nice Gary

axiom R1 : ∀ x : obj, White x → Big x
axiom R2 : ∀ x : obj, White x → Cold x
axiom R3 : Green Anne → Big Anne
axiom R4 : ∀ x : obj, Green x → Cold x
axiom R5 : Green Fiona ∧ Cold Fiona → Smart Fiona
axiom R6 : ∀ x : obj, Big x ∧ Cold x → Quiet x
axiom R7 : ∀ x : obj, Smart x → White x

theorem fiona_is_quiet : Quiet Fiona :=
begin
  apply R6,
  split,
  apply R1,
  apply R7,
  apply R5,
  split,
  exact T6,
  apply R4,
  exact T6,
  apply R4,
  exact T6,
end

-- The answer is True