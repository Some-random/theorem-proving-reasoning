universe u

constant obj : Type u

constant Charlie : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Young : obj → Prop
constant Blue : obj → Prop
constant White : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant Quiet : obj → Prop
constant Big : obj → Prop

axiom T1 : Young Charlie
axiom T2 : Blue Fiona
axiom T3 : Blue Gary
axiom T4 : White Gary
axiom T5 : Blue Harry
axiom T6 : Round Harry
axiom T7 : Smart Harry

-- If Charlie is round and Charlie is quiet then Charlie is not young
axiom R1 : Round Charlie ∧ Quiet Charlie → ¬ Young Charlie
-- If something is quiet then it is smart
axiom R2 : ∀ x : obj, Quiet x → Smart x
-- All blue things are young
axiom R3 : ∀ x : obj, Blue x → Young x
-- Big, blue things are quiet
axiom R4 : ∀ x : obj, Big x ∧ Blue x → Quiet x
-- Young, white things are round
axiom R5 : ∀ x : obj, Young x ∧ White x → Round x
-- If Fiona is big and Fiona is not white then Fiona is blue
axiom R6 : Big Fiona ∧ ¬ White Fiona → Blue Fiona
-- If Charlie is big and Charlie is young then Charlie is not smart
axiom R7 : Big Charlie ∧ Young Charlie → ¬ Smart Charlie
-- Round things are big
axiom R8 : ∀ x : obj, Round x → Big x


theorem not_round_Gary : ¬ Round Gary :=
begin
  sorry
end


theorem round_Gary : Round Gary :=
begin
  sorry
end
