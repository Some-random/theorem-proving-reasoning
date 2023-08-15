universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Fiona : obj

constant Nice : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop
constant Kind : obj → Prop
constant Furry : obj → Prop

axiom A1 : Nice Anne
axiom A2 : Red Anne
axiom A3 : Smart Bob
axiom A4 : Young Bob
axiom A5 : Red Erin
axiom A6 : Round Erin
axiom A7 : Kind Fiona
axiom A8 : Nice Fiona
axiom A9 : Red Fiona
axiom A10 : Smart Fiona

-- Rule R1: If something is round then it is nice
axiom R1 : ∀ x : obj, Round x → Nice x

-- Rule R2: Nice things are round
axiom R2 : ∀ x : obj, Nice x → Round x

-- Rule R3: If Bob is kind then Bob is furry
axiom R3 : ∀ x : obj, Kind Bob → Furry Bob

-- Rule R4: All smart, kind things are nice
axiom R4 : ∀ x : obj, Smart x ∧ Kind x → Nice x

-- Rule R5: All kind, young things are round
axiom R5 : ∀ x : obj, Kind x ∧ Young x → Round x

-- Rule R6: If something is young and smart then it is round
axiom R6 : ∀ x : obj, Young x ∧ Smart x → Round x

-- Rule R7: Red things are kind
axiom R7 : ∀ x : obj, Red x → Kind x

-- Rule R8: If Anne is furry then Anne is red
axiom R8 : ∀ x : obj, Furry Anne → Red Anne

-- Rule R9: If something is nice then it is red
axiom R9 : ∀ x : obj, Nice x → Red x


theorem not_furry_Erin : ¬ Furry Erin :=
begin
  sorry
end


theorem furry_Erin : Furry Erin :=
begin
  sorry
end
