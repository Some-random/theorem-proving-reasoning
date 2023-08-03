universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop
constant Quiet : obj → Prop
constant Rough : obj → Prop

axiom T1 : Big Dave
axiom T2 : Furry Dave
axiom T3 : Blue Erin
axiom T4 : Cold Erin
axiom T5 : Round Erin
axiom T6 : Quiet Fiona
axiom T7 : Rough Gary

axiom R1 : ∀ x : obj, Rough x ∧ Cold x → Furry x
axiom R2 : ∀ x : obj, Quiet x ∧ Big x → ¬ Round x
axiom R3 : Blue Dave → Furry Dave
axiom R4 : ∀ x : obj, Quiet x ∧ Blue x → Big x
axiom R5 : Furry Fiona → Blue Fiona
axiom R6 : ∀ x : obj, Quiet x → Cold x
axiom R7 : ∀ x : obj, Big x → Cold x
axiom R8 : ∀ x : obj, Blue x ∧ Round x → ¬ Quiet x
axiom R9 : ∀ x : obj, Cold x → Rough x

theorem not_blue_Dave : ¬ Blue Dave :=
begin
  sorry
end


theorem blue_Dave : Blue Dave :=
begin
  sorry
end
