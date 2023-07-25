universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Furry : obj → Prop
constant Kind : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant White : obj → Prop

axiom T1 : Furry Dave
axiom T2 : Kind Dave
axiom T3 : Green Erin
axiom T4 : Round Erin
axiom T5 : Young Erin
axiom T6 : Big Fiona
axiom T7 : Furry Fiona
axiom T8 : Green Fiona
axiom T9 : ¬ Kind Fiona
axiom T10 : Round Fiona
axiom T11 : White Fiona
axiom T12 : Furry Gary
axiom T13 : White Gary
axiom T14 : Young Gary

axiom R1 : ∀ x : obj, Young x → Round x
axiom R2 : ∀ x : obj, White x → Big x
axiom R3 : ∀ x : obj, White x ∧ Young x → Big x
axiom R4 : ∀ x : obj, Green x ∧ Furry x → White x
axiom R5 : ∀ x : obj, Furry x → Green x
axiom R6 : ∀ x : obj, Big x → Young x

theorem dave_is_round : Round Dave :=
begin
  apply R1,
  apply R6,
  apply R2,
  apply R4,
  split,
  apply R5,
  exact T1,
  exact T1,
end

-- The answer is True