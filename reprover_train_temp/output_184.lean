universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Furry : obj → Prop
constant Kind : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop
constant Smart : obj → Prop
constant Blue : obj → Prop
constant Young : obj → Prop

axiom T1 : Furry Anne
axiom T2 : Kind Anne
axiom T3 : Kind Charlie
axiom T4 : Big Gary
axiom T5 : Furry Gary
axiom T6 : Rough Gary
axiom T7 : Smart Gary
axiom T8 : Big Harry
axiom T9 : Blue Harry
axiom T10 : Furry Harry
axiom T11 : Kind Harry
axiom T12 : Rough Harry
axiom T13 : Smart Harry
axiom T14 : Young Harry

axiom R1 : ∀ x : obj, Young x → Smart x
axiom R2 : Furry Gary → Big Gary
axiom R3 : ∀ x : obj, Smart x → Big x
axiom R4 : Big Gary ∧ Young Gary → Kind Gary
axiom R5 : ∀ x : obj, Furry x → Young x
axiom R6 : ∀ x : obj, Big x → Rough x
axiom R7 : ∀ x : obj, Kind x ∧ Big x → Rough x
axiom R8 : ∀ x : obj, Kind x → Furry x
axiom R9 : ∀ x : obj, Big x ∧ Blue x → Furry x

theorem charlie_is_rough : Rough Charlie :=
begin
  apply R7,
  split,
  exact T3,
  apply R3,
  apply R1,
  apply R5,
  apply R8,
  exact T3,
end

-- The answer is True