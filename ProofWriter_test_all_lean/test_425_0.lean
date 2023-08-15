universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop

axiom T1 : Quiet Charlie
axiom T2 : Big Dave
axiom T3 : Red Dave
axiom T4 : Smart Dave
axiom T5 : Young Dave
axiom T6 : Big Erin
axiom T7 : Blue Erin
axiom T8 : Quiet Erin
axiom T9 : Smart Erin
axiom T10 : Big Harry
axiom T11 : Furry Harry
axiom T12 : Young Harry

-- If someone is quiet then they are big
axiom R1 : ∀ x : obj, Quiet x → Big x
-- If someone is furry then they are quiet
axiom R2 : ∀ x : obj, Furry x → Quiet x
-- All quiet, big people are furry
axiom R3 : ∀ x : obj, Quiet x ∧ Big x → Furry x
-- If someone is young then they are blue
axiom R4 : ∀ x : obj, Young x → Blue x
-- If someone is young then they are quiet
axiom R5 : ∀ x : obj, Young x → Quiet x
-- If Erin is furry then Erin is young
axiom R6 : Furry Erin → Young Erin
-- Blue people are quiet
axiom R7 : ∀ x : obj, Blue x → Quiet x
-- If someone is furry then they are young
axiom R8 : ∀ x : obj, Furry x → Young x
-- Blue people are red
axiom R9 : ∀ x : obj, Blue x → Red x


theorem not_red_Erin : ¬ Red Erin :=
begin
  sorry
end


theorem red_Erin : Red Erin :=
begin
  sorry
end
