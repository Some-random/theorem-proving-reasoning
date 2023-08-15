universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Blue : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop
constant Big : obj → Prop

axiom T1 : Blue Dave
axiom T2 : Kind Dave
axiom T3 : Rough Dave
axiom T4 : Blue Erin
axiom T5 : Furry Erin
axiom T6 : Quiet Erin
axiom T7 : Smart Erin
axiom T8 : Blue Gary
axiom T9 : Quiet Gary
axiom T10 : Big Harry

-- All blue things are rough
axiom R1 : ∀ x : obj, Blue x → Rough x
-- If something is kind and furry then it is big
axiom R2 : ∀ x : obj, Kind x ∧ Furry x → Big x
-- If something is kind and big then it is rough
axiom R3 : ∀ x : obj, Kind x ∧ Big x → Rough x
-- All quiet, kind things are rough
axiom R4 : ∀ x : obj, Quiet x ∧ Kind x → Rough x
-- All kind things are furry
axiom R5 : ∀ x : obj, Kind x → Furry x
-- If something is big then it is quiet
axiom R6 : ∀ x : obj, Big x → Quiet x
-- Quiet things are blue
axiom R7 : ∀ x : obj, Quiet x → Blue x
-- Rough things are kind
axiom R8 : ∀ x : obj, Rough x → Kind x


theorem not_furry_Harry : ¬ Furry Harry :=
begin
  sorry
end


theorem furry_Harry : Furry Harry :=
begin
  sorry
end
