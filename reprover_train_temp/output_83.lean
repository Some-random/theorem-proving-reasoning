universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Fiona : obj
constant Gary : obj

constant Furry : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Kind : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop

axiom T1 : Furry Charlie
axiom T2 : Green Charlie
axiom T3 : Red Charlie
axiom T4 : Round Charlie
axiom T5 : Green Dave
axiom T6 : Furry Fiona
axiom T7 : Round Fiona
axiom T8 : Green Gary
axiom T9 : Kind Gary
axiom T10 : Smart Gary

axiom R1 : ∀ x : obj, Round x → Cold x
axiom R2 : ∀ x : obj, Green x → Round x
axiom R3 : ∀ x : obj, Red x ∧ Furry x → Green x
axiom R4 : ∀ x : obj, Green x ∧ Kind x → Cold x
axiom R5 : ∀ x : obj, Cold x → Furry x
axiom R6 : ∀ x : obj, Furry x → Smart x
axiom R7 : ∀ x : obj, Smart x → Kind x

theorem dave_is_kind : Kind Dave :=
begin
  apply R7,
  apply R6,
  apply R5,
  apply R1,
  apply R2,
  exact T5,
end

-- The answer is True