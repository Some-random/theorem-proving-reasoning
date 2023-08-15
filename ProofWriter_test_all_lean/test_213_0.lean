universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Fiona : obj
constant Gary : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop

axiom T1 : Big Charlie
axiom T2 : Cold Charlie
axiom T3 : Nice Charlie
axiom T4 : Young Charlie
axiom T5 : Big Dave
axiom T6 : Nice Dave
axiom T7 : Big Fiona
axiom T8 : Nice Fiona
axiom T9 : Cold Gary
axiom T10 : Nice Gary

-- All rough, young things are red
axiom R1 : ∀ x : obj, Rough x ∧ Young x → Red x
-- All rough, cold things are young
axiom R2 : ∀ x : obj, Rough x ∧ Cold x → Young x
-- All nice, red things are round
axiom R3 : ∀ x : obj, Nice x ∧ Red x → Round x
-- If Charlie is cold and Charlie is rough then Charlie is young
axiom R4 : Cold Charlie ∧ Rough Charlie → Young Charlie
-- All round, red things are rough
axiom R5 : ∀ x : obj, Round x ∧ Red x → Rough x
-- All cold, big things are red
axiom R6 : ∀ x : obj, Cold x ∧ Big x → Red x
-- Cold things are big
axiom R7 : ∀ x : obj, Cold x → Big x
-- If Dave is rough then Dave is cold
axiom R8 : ∀ x : obj, Rough Dave → Cold Dave
-- If Fiona is cold then Fiona is red
axiom R9 : ∀ x : obj, Cold Fiona → Red Fiona


theorem gary_is_round : Round Gary :=
begin
  sorry
end


theorem not_round_Gary : ¬ Round Gary :=
begin
  sorry
end
