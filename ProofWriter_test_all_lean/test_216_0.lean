universe u

constant obj : Type u

constant Charlie : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Blue : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant Red : obj → Prop

axiom T1 : Blue Charlie
axiom T2 : Round Charlie
axiom T3 : Big Fiona
axiom T4 : Cold Fiona
axiom T5 : Nice Gary
axiom T6 : Nice Harry
axiom T7 : Round Harry

-- All rough, blue things are red
axiom R1 : ∀ x : obj, Rough x ∧ Blue x → Red x
-- All nice things are cold
axiom R2 : ∀ x : obj, Nice x → Cold x
-- Big, cold things are rough
axiom R3 : ∀ x : obj, Big x ∧ Cold x → Rough x
-- If something is red and blue then it is rough
axiom R4 : ∀ x : obj, Red x ∧ Blue x → Rough x
-- All blue, cold things are nice
axiom R5 : ∀ x : obj, Blue x ∧ Cold x → Nice x
-- All red things are blue
axiom R6 : ∀ x : obj, Red x → Blue x
-- If something is round and cold then it is blue
axiom R7 : ∀ x : obj, Round x ∧ Cold x → Blue x
-- Blue things are big
axiom R8 : ∀ x : obj, Blue x → Big x
-- If Charlie is big then Charlie is blue
axiom R9 : ∀ x : obj, Big Charlie → Blue Charlie


theorem harry_is_blue : Blue Harry :=
begin
  sorry
end


theorem not_blue_Harry : ¬ Blue Harry :=
begin
  sorry
end
