universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Fiona : obj

constant Big : obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Red : obj → Prop

axiom T1 : Big Anne
axiom T2 : Green Anne
axiom T3 : Rough Anne
axiom T4 : Big Bob
axiom T5 : Blue Bob
axiom T6 : Big Erin
axiom T7 : Nice Erin
axiom T8 : Big Fiona
axiom T9 : Blue Fiona
axiom T10 : Young Fiona

axiom R1 : ¬ Nice Bob → ¬ Blue Bob
axiom R2 : Red Fiona → Blue Fiona
axiom R3 : Red Anne ∧ Blue Anne → Nice Anne
axiom R4 : ∀ x : obj, Blue x → Young x
axiom R5 : ∀ x : obj, Big x ∧ Nice x → Blue x
axiom R6 : ∀ x : obj, Young x ∧ Nice x → Red x
axiom R7 : ∀ x : obj, Red x → ¬ Rough x
axiom R8 : Blue Anne → Young Anne
axiom R9 : ∀ x : obj, Young x ∧ ¬ Rough x → Green x

theorem erin_is_green : Green Erin :=
begin
  apply R9,
  split,
  apply R4,
  apply R5 Erin,
  split,
  exact T6,
  exact T7,
  apply R7,
  apply R6 Erin,
  split,
  apply R4,
  apply R5 Erin,
  split,
  exact T6,
  exact T7,
  exact T7,
end

-- The answer is True