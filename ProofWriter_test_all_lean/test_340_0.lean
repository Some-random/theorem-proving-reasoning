universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Cold : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant White : obj → Prop
constant Rough : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Kind Anne
axiom A3 : Round Anne
axiom A4 : Smart Anne
axiom A5 : Young Anne
axiom A6 : Cold Erin
axiom A7 : Round Erin
axiom A8 : Smart Erin
axiom A9 : Cold Gary
axiom A10 : Kind Gary
axiom A11 : Rough Gary
axiom A12 : Round Gary
axiom A13 : Smart Gary
axiom A14 : White Gary
axiom A15 : Young Gary
axiom A16 : Cold Harry

-- Rule R1: If someone is kind then they are round
axiom R1 : ∀ x : obj, Kind x → Round x

-- Rule R2: Young, cold people are white
axiom R2 : ∀ x : obj, Young x ∧ Cold x → White x

-- Rule R3: All white people are young
axiom R3 : ∀ x : obj, White x → Young x

-- Rule R4: All cold people are white
axiom R4 : ∀ x : obj, Cold x → White x

-- Rule R5: All round people are smart
axiom R5 : ∀ x : obj, Round x → Smart x

-- Rule R6: If someone is young and cold then they are kind
axiom R6 : ∀ x : obj, Young x ∧ Cold x → Kind x

-- Rule R7: All round people are kind
axiom R7 : ∀ x : obj, Round x → Kind x

-- Rule R8: All young people are rough
axiom R8 : ∀ x : obj, Young x → Rough x


theorem erin_is_kind : Kind Erin :=
begin
  sorry
end


theorem not_kind_Erin : ¬ Kind Erin :=
begin
  sorry
end
