universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Gary : obj
constant Harry : obj

constant Nice : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop

axiom T1 : Nice Charlie
axiom T2 : Rough Charlie
axiom T3 : Green Dave
axiom T4 : Blue Gary
axiom T5 : Kind Gary
axiom T6 : Smart Gary
axiom T7 : White Harry

axiom R1 : Smart Harry ∧ Green Harry → Rough Harry
axiom R2 : ∀ x : obj, Kind x → Smart x
axiom R3 : ∀ x : obj, Smart x ∧ Green x → White x
axiom R4 : Blue Harry ∧ Green Harry → Smart Harry
axiom R5 : ∀ x : obj, White x ∧ Blue x → Rough x
axiom R6 : ∀ x : obj, White x → Blue x
axiom R7 : ∀ x : obj, Green x → Kind x

theorem dave_is_rough : Rough Dave :=
begin
  apply R5,
  split,
  apply R3,
  split,
  apply R2,
  apply R7,
  exact T3,
  exact T3,
  apply R6,
  apply R3,
  split,
  apply R2,
  apply R7,
  exact T3,
  exact T3,
end

-- The answer is True