universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Kind : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop

axiom T1 : Kind Charlie
axiom T2 : Blue Erin
axiom T3 : Furry Erin
axiom T4 : Kind Erin
axiom T5 : Quiet Erin
axiom T6 : Furry Gary
axiom T7 : Red Gary
axiom T8 : Big Harry
axiom T9 : Furry Harry
axiom T10 : Kind Harry
axiom T11 : Nice Harry
axiom T12 : Quiet Harry

axiom R1 : ∀ x : obj, Nice x ∧ Big x → Quiet x
axiom R2 : ∀ x : obj, Blue x → Big x
axiom R3 : ∀ x : obj, Big x ∧ Red x → Kind x
axiom R4 : ∀ x : obj, Big x → Kind x
axiom R5 : ∀ x : obj, Red x ∧ Kind x → Nice x
axiom R6 : ∀ x : obj, Red x → Blue x
axiom R7 : ∀ x : obj, Quiet x ∧ Kind x → Big x
axiom R8 : Nice Erin ∧ Big Erin → Red Erin

theorem gary_is_quiet : Quiet Gary :=
begin
  apply R1,
  split,
  apply R5,
  split,
  exact T7,
  apply R3,
  split,
  apply R2,
  apply R6,
  exact T7,
  exact T7,
  apply R2,
  apply R6,
  exact T7,
end

-- The answer is True