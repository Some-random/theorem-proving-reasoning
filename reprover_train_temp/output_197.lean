universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Rough : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Rough Anne
axiom T2 : Cold Dave
axiom T3 : Nice Dave
axiom T4 : Rough Dave
axiom T5 : Red Erin
axiom T6 : Red Fiona
axiom T7 : Rough Fiona

axiom R1 : ∀ x : obj, Kind x → Big x
axiom R2 : ∀ x : obj, Rough x → Big x
axiom R3 : ∀ x : obj, Big x → Cold x
axiom R4 : ∀ x : obj, Nice x → Red x
axiom R5 : Rough Fiona → Big Fiona
axiom R6 : ∀ x : obj, Red x → Kind x
axiom R7 : Kind Dave → Red Dave
axiom R8 : Quiet Fiona → ¬ Rough Fiona
axiom R9 : Cold Anne ∧ Big Anne → Nice Anne

theorem anne_is_kind : Kind Anne :=
begin
  apply R6,
  apply R4,
  apply R9,
  split,
  apply R3,
  apply R2,
  exact T1,
  apply R2,
  exact T1,
end

-- The answer is True