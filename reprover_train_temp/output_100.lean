universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Rough : obj → Prop
constant Young : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Cold : obj → Prop

axiom T1 : Rough Dave
axiom T2 : Young Erin
axiom T3 : ¬ Green Fiona
axiom T4 : Nice Fiona
axiom T5 : Green Gary
axiom T6 : Red Gary
axiom T7 : White Gary

axiom R1 : ∀ x : obj, Cold x → ¬ Red x
axiom R2 : ∀ x : obj, Young x → White x
axiom R3 : ∀ x : obj, Rough x → Nice x
axiom R4 : ∀ x : obj, White x ∧ Nice x → Cold x
axiom R5 : ∀ x : obj, Nice x → Young x
axiom R6 : ∀ x : obj, Young x → Rough x

theorem dave_is_not_red : ¬ Red Dave :=
begin
  apply R1,
  apply R4,
  split,
  apply R2,
  apply R5,
  apply R3,
  exact T1,
  apply R3,
  exact T1,
end

-- The answer is True