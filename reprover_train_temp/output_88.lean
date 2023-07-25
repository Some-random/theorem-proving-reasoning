universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Fiona : obj
constant Harry : obj

constant Cold : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop
constant Furry : obj → Prop
constant Green : obj → Prop

axiom T1 : Cold Bob
axiom T2 : Nice Bob
axiom T3 : Red Bob
axiom T4 : White Bob
axiom T5 : White Charlie
axiom T6 : Furry Fiona
axiom T7 : Big Harry
axiom T8 : Cold Harry
axiom T9 : Furry Harry
axiom T10 : Nice Harry
axiom T11 : Red Harry

axiom R1 : White Charlie ∧ Nice Charlie → Big Charlie
axiom R2 : ∀ x : obj, Furry x → Nice x
axiom R3 : ∀ x : obj, Big x ∧ White x → Cold x
axiom R4 : ∀ x : obj, Red x ∧ Nice x → Green x
axiom R5 : ∀ x : obj, White x → Cold x
axiom R6 : ∀ x : obj, White x ∧ Nice x → Red x
axiom R7 : Red Harry → White Harry
axiom R8 : ∀ x : obj, Cold x → Furry x

theorem charlie_is_green : Green Charlie :=
begin
  apply R4,
  split,
  apply R6,
  split,
  exact T5,
  apply R2,
  apply R8,
  apply R5,
  exact T5,
  apply R2,
  apply R8,
  apply R3,
  split,
  apply R1,
  split,
  exact T5,
  apply R2,
  apply R8,
  apply R5,
  exact T5,
  exact T5,
end

-- The answer is True