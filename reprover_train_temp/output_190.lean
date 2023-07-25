universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Fiona : obj

constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop

axiom T1 : Furry Anne
axiom T2 : Quiet Anne
axiom T3 : Red Anne
axiom T4 : Quiet Charlie
axiom T5 : Furry Dave
axiom T6 : Furry Fiona
axiom T7 : Red Fiona

axiom R1 : ∀ x : obj, Big x → Rough x
axiom R2 : Big Fiona → Red Fiona
axiom R3 : ∀ x : obj, Young x ∧ Red x → Quiet x
axiom R4 : ∀ x : obj, Red x → Furry x
axiom R5 : ∀ x : obj, Rough x → Young x
axiom R6 : ∀ x : obj, Big x → Quiet x
axiom R7 : ∀ x : obj, Quiet x → Big x
axiom R8 : Furry Charlie ∧ Big Charlie → Quiet Charlie
axiom R9 : ∀ x : obj, Young x → Red x

theorem charlie_is_furry : Furry Charlie :=
begin
  apply R4,
  apply R9,
  apply R5,
  apply R1,
  apply R7,
  exact T4,
end

-- The answer is True