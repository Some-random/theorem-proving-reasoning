universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Harry : obj

constant Blue : obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Red : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Blue Charlie
axiom T2 : Green Charlie
axiom T3 : Rough Dave
axiom T4 : ¬ Cold Erin
axiom T5 : Green Erin
axiom T6 : Rough Erin
axiom T7 : Young Erin
axiom T8 : Green Harry
axiom T9 : Red Harry
axiom T10 : Rough Harry
axiom T11 : ¬ Young Harry

axiom R1 : ∀ x : obj, Rough x → Red x
axiom R2 : ∀ x : obj, Blue x → Rough x
axiom R3 : ∀ x : obj, Green x → Rough x
axiom R4 : ∀ x : obj, Quiet x → Cold x
axiom R5 : Blue Harry → Green Harry
axiom R6 : Blue Dave ∧ Red Dave → Quiet Dave
axiom R7 : ∀ x : obj, Rough x ∧ Red x → Blue x
axiom R8 : ∀ x : obj, Green x ∧ Cold x → ¬ Quiet x
axiom R9 : ∀ x : obj, Cold x → ¬ Young x

theorem dave_is_not_young : ¬ Young Dave :=
begin
  apply R9,
  apply R4,
  apply R6,
  split,
  apply R7,
  split,
  exact T3,
  apply R1,
  exact T3,
  apply R1,
  exact T3,
end

-- The answer is True