universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Blue : obj → Prop
constant Quiet : obj → Prop
constant Big : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop

axiom T1 : Blue Anne
axiom T2 : Quiet Erin
axiom T3 : Big Fiona
axiom T4 : Furry Fiona
axiom T5 : Nice Fiona
axiom T6 : Furry Harry
axiom T7 : ¬ Rough Harry

axiom R1 : ∀ x : obj, Round x → Blue x
axiom R2 : ∀ x : obj, Round x ∧ ¬ Big x → ¬ Nice x
axiom R3 : ∀ x : obj, Quiet x → Nice x
axiom R4 : ∀ x : obj, Blue x ∧ Round x → Nice x
axiom R5 : ∀ x : obj, Nice x ∧ Rough x → Round x
axiom R6 : ∀ x : obj, Furry x → Round x
axiom R7 : ∀ x : obj, Furry x ∧ Blue x → Quiet x
axiom R8 : ∀ x : obj, Nice x → Furry x
axiom R9 : ∀ x : obj, Round x ∧ Blue x → ¬ Rough x

theorem erin_is_not_rough : ¬ Rough Erin :=
begin
  apply R9,
  split,
  apply R6,
  apply R8,
  apply R3,
  exact T2,
  apply R1,
  apply R6,
  apply R8,
  apply R3,
  exact T2,
end

-- The answer is True