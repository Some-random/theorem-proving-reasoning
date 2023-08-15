universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Harry : obj

constant Blue : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Kind : obj → Prop

axiom A1 : Blue Anne
axiom A2 : Smart Anne
axiom A3 : Green Bob
axiom A4 : Round Bob
axiom A5 : Rough Erin
axiom A6 : Cold Harry
axiom A7 : Kind Harry

-- Rule R1: All kind things are round
axiom R1 : ∀ x : obj, Kind x → Round x

-- Rule R2: If something is rough then it is round
axiom R2 : ∀ x : obj, Rough x → Round x

-- Rule R3: All cold things are round
axiom R3 : ∀ x : obj, Cold x → Round x

-- Rule R4: Round things are cold
axiom R4 : ∀ x : obj, Round x → Cold x

-- Rule R5: All kind things are green
axiom R5 : ∀ x : obj, Kind x → Green x

-- Rule R6: If something is smart then it is rough
axiom R6 : ∀ x : obj, Smart x → Rough x

-- Rule R7: If something is cold and not blue then it is rough
axiom R7 : ∀ x : obj, Cold x ∧ ¬ Blue x → Rough x

-- Rule R8: If Bob is smart then Bob is not green
axiom R8 : ∀ x : obj, Smart Bob → ¬ Green Bob

-- Rule R9: All smart, cold things are kind
axiom R9 : ∀ x : obj, Smart x ∧ Cold x → Kind x


theorem erin_is_smart : Smart Erin :=
begin
  sorry
end


theorem not_smart_Erin : ¬ Smart Erin :=
begin
  sorry
end
