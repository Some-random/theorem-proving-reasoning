universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Smart : obj → Prop

axiom T1 : Big Charlie
axiom T2 : Cold Charlie
axiom T3 : Kind Charlie
axiom T4 : Quiet Charlie
axiom T5 : Red Charlie
axiom T6 : Rough Charlie
axiom T7 : Smart Charlie
axiom T8 : Kind Erin
axiom T9 : Quiet Fiona
axiom T10 : Rough Fiona
axiom T11 : Kind Harry
axiom T12 : Rough Harry

axiom R1 : ∀ x : obj, Kind x → Big x
axiom R2 : ∀ x : obj, Kind x ∧ Smart x → Rough x
axiom R3 : ∀ x : obj, Red x ∧ Quiet x → Big x
axiom R4 : ∀ x : obj, Red x → Cold x
axiom R5 : ∀ x : obj, Cold x ∧ Quiet x → Smart x
axiom R6 : ∀ x : obj, Big x ∧ Smart x → Cold x
axiom R7 : ∀ x : obj, Quiet x → Cold x
axiom R8 : ∀ x : obj, Kind x ∧ Big x → Red x
axiom R9 : ∀ x : obj, Cold x ∧ Smart x → Kind x

theorem harry_is_quiet : Quiet Harry :=
begin
  sorry
end


theorem not_quiet_Harry : ¬ Quiet Harry :=
begin
  sorry
end
