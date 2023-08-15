universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Fiona : obj
constant Harry : obj

constant Red : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Quiet : obj → Prop
constant Furry : obj → Prop
constant Kind : obj → Prop

axiom T1 : Red Charlie
axiom T2 : Red Dave
axiom T3 : Rough Dave
axiom T4 : Round Dave
axiom T5 : Young Dave
axiom T6 : Quiet Fiona
axiom T7 : Red Fiona
axiom T8 : Furry Harry
axiom T9 : Kind Harry
axiom T10 : Young Harry

-- All rough things are round
axiom R1 : ∀ x : obj, Rough x → Round x
-- All round, rough things are young
axiom R2 : ∀ x : obj, Round x ∧ Rough x → Young x
-- All red things are young
axiom R3 : ∀ x : obj, Red x → Young x
-- If Fiona is young and Fiona is not furry then Fiona is kind
axiom R4 : Young Fiona ∧ ¬ Furry Fiona → Kind Fiona
-- If something is furry then it is rough
axiom R5 : ∀ x : obj, Furry x → Rough x
-- Quiet, kind things are rough
axiom R6 : ∀ x : obj, Quiet x ∧ Kind x → Rough x
-- All quiet, young things are kind
axiom R7 : ∀ x : obj, Quiet x ∧ Young x → Kind x
-- Young things are quiet
axiom R8 : ∀ x : obj, Young x → Quiet x


theorem fiona_is_round : Round Fiona :=
begin
  sorry
end


theorem not_round_Fiona : ¬ Round Fiona :=
begin
  sorry
end
