universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Nice : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant Smart : obj → Prop

axiom T1 : Nice Dave
axiom T2 : Red Dave
axiom T3 : Red Erin
axiom T4 : Rough Fiona
axiom T5 : Round Fiona
axiom T6 : Cold Gary
axiom T7 : Green Gary
axiom T8 : Red Gary
axiom T9 : Rough Gary
axiom T10 : ¬ Smart Gary

-- Smart, round things are nice
axiom R1 : ∀ x : obj, Smart x ∧ Round x → Nice x
-- Red things are nice
axiom R2 : ∀ x : obj, Red x → Nice x
-- Rough, nice things are round
axiom R3 : ∀ x : obj, Rough x ∧ Nice x → Round x
-- Cold things are rough
axiom R4 : ∀ x : obj, Cold x → Rough x
-- If something is red and nice then it is cold
axiom R5 : ∀ x : obj, Red x ∧ Nice x → Cold x
-- All round things are green
axiom R6 : ∀ x : obj, Round x → Green x
-- If something is nice and not cold then it is green
axiom R7 : ∀ x : obj, Nice x ∧ ¬ Cold x → Green x


theorem erin_is_round : Round Erin :=
begin
  sorry
end


theorem not_round_Erin : ¬ Round Erin :=
begin
  sorry
end
