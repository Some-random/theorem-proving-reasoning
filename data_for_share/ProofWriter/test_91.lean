universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Harry : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Cold : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Big Anne
axiom T2 : Blue Anne
axiom T3 : Kind Anne
axiom T4 : Nice Anne
axiom T5 : Big Charlie
axiom T6 : Blue Charlie
axiom T7 : Nice Charlie
axiom T8 : Blue Dave
axiom T9 : Cold Dave
axiom T10 : Nice Dave
axiom T11 : Blue Harry

axiom R1 : Cold Charlie → Nice Charlie
axiom R2 : Kind Harry ∧ Nice Harry → Quiet Harry
axiom R3 : ∀ x : obj, Blue x → Cold x
axiom R4 : ∀ x : obj, Quiet x → Kind x
axiom R5 : ∀ x : obj, Kind x → Big x
axiom R6 : ∀ x : obj, Cold x → Nice x
axiom R7 : ∀ x : obj, Nice Harry ∧ Big Harry → Kind Harry
axiom R8 : ∀ x : obj, Nice x → Quiet x

theorem charlie_is_kind : Kind Charlie :=
begin
  sorry
end


theorem not_kind_Charlie : ¬ Kind Charlie :=
begin
  sorry
end
