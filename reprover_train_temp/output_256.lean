universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Cold : obj → Prop

axiom T1 : Quiet Anne
axiom T2 : Green Erin
axiom T3 : Kind Erin
axiom T4 : Quiet Erin
axiom T5 : Rough Erin
axiom T6 : Kind Fiona
axiom T7 : Nice Fiona
axiom T8 : Quiet Fiona
axiom T9 : Red Fiona
axiom T10 : Nice Harry

axiom R1 : ∀ x : obj, Rough x → Green x
axiom R2 : ∀ x : obj, Nice x → Green x
axiom R3 : ∀ x : obj, Quiet x ∧ ¬ Nice x → Cold x
axiom R4 : ∀ x : obj, Quiet x → Rough x
axiom R5 : ∀ x : obj, Kind x → Quiet x
axiom R6 : ∀ x : obj, Green x → Kind x
axiom R7 : ∀ x : obj, Rough x → Red x

theorem harry_is_red : Red Harry :=
begin
  apply R7,
  apply R4,
  apply R5,
  apply R6,
  apply R2,
  exact T10,
end

-- The answer is True