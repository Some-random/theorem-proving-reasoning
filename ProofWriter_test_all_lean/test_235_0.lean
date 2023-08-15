universe u

constant obj : Type u

constant Charlie : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Nice : obj → Prop
constant Rough : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop

axiom T1 : Nice Charlie
axiom T2 : Rough Charlie
axiom T3 : Smart Charlie
axiom T4 : Young Charlie
axiom T5 : Cold Fiona
axiom T6 : Kind Fiona
axiom T7 : Rough Fiona
axiom T8 : Cold Gary
axiom T9 : Young Gary
axiom T10 : Nice Harry

-- If something is young then it is smart
axiom R1 : ∀ x : obj, Young x → Smart x
-- If something is cold and round then it is kind
axiom R2 : ∀ x : obj, Cold x ∧ Round x → Kind x
-- If Gary is kind and Gary is cold then Gary is rough
axiom R3 : Kind Gary ∧ Cold Gary → Rough Gary
-- If Harry is round then Harry is smart
axiom R4 : Round Harry → Smart Harry
-- If Fiona is round and Fiona is kind then Fiona is young
axiom R5 : Round Fiona ∧ Kind Fiona → Young Fiona
-- If Charlie is cold then Charlie is round
axiom R6 : Cold Charlie → Round Charlie
-- All smart, young things are nice
axiom R7 : ∀ x : obj, Smart x ∧ Young x → Nice x
-- If something is nice and smart then it is round
axiom R8 : ∀ x : obj, Nice x ∧ Smart x → Round x


theorem gary_is_nice : Nice Gary :=
begin
  sorry
end


theorem not_nice_Gary : ¬ Nice Gary :=
begin
  sorry
end
