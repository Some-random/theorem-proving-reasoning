universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Blue : obj → Prop
constant Furry : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop

axiom T1 : Blue Anne
axiom T2 : Furry Anne
axiom T3 : Red Anne
axiom T4 : White Charlie
axiom T5 : Nice Gary
axiom T6 : Rough Gary
axiom T7 : Nice Harry

axiom R1 : ∀ x : obj, Kind x ∧ White x → Furry x
axiom R2 : ∀ x : obj, Blue x → Furry x
axiom R3 : ∀ x : obj, Red x → Blue x
axiom R4 : ∀ x : obj, Kind x → Furry x
axiom R5 : ∀ x : obj, Nice Harry ∧ Rough Harry → Red Harry
axiom R6 : ∀ x : obj, White x ∧ Rough x → Kind x
axiom R7 : ∀ x : obj, Blue x ∧ Red x → White x
axiom R8 : ∀ x : obj, Nice x → Rough x
axiom R9 : ∀ x : obj, Kind x ∧ Furry x → Rough x

theorem not_kind_Harry : ¬ Kind Harry :=
begin
  sorry
end


theorem kind_Harry : Kind Harry :=
begin
  sorry
end
