universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Erin : obj
constant Gary : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop

axiom A1 : Big Anne
axiom A2 : Cold Anne
axiom A3 : Young Anne
axiom A4 : Round Dave
axiom A5 : White Dave
axiom A6 : Cold Erin
axiom A7 : White Erin
axiom A8 : Young Erin
axiom A9 : Cold Gary
axiom A10 : Young Gary

-- Rule R1: If something is big then it is cold
axiom R1 : ∀ x : obj, Big x → Cold x

-- Rule R2: Round things are big
axiom R2 : ∀ x : obj, Round x → Big x

-- Rule R3: Furry, round things are big
axiom R3 : ∀ x : obj, Furry x ∧ Round x → Big x

-- Rule R4: All cold things are furry
axiom R4 : ∀ x : obj, Cold x → Furry x

-- Rule R5: If Erin is round then Erin is young
axiom R5 : ∀ x : obj, Round Erin → Young Erin

-- Rule R6: All furry, big things are young
axiom R6 : ∀ x : obj, Furry x ∧ Big x → Young x

-- Rule R7: White things are round
axiom R7 : ∀ x : obj, White x → Round x

-- Rule R8: If Gary is cold then Gary is white
axiom R8 : ∀ x : obj, Cold Gary → White Gary

-- Rule R9: All white, young things are nice
axiom R9 : ∀ x : obj, White x ∧ Young x → Nice x


theorem dave_is_furry : Furry Dave :=
begin
  sorry
end


theorem not_furry_Dave : ¬ Furry Dave :=
begin
  sorry
end
