universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Cold : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Furry : obj → Prop
constant Round : obj → Prop

axiom A1 : Cold Charlie
axiom A2 : Rough Charlie
axiom A3 : White Charlie
axiom A4 : Cold Erin
axiom A5 : Smart Erin
axiom A6 : Blue Fiona
axiom A7 : Cold Fiona
axiom A8 : Furry Fiona
axiom A9 : White Fiona
axiom A10 : Round Gary

-- Rule R1: If Erin is white then Erin is blue
axiom R1 : White Erin → Blue Erin

-- Rule R2: If someone is round then they are blue
axiom R2 : ∀ x : obj, Round x → Blue x

-- Rule R3: Smart, cold people are white
axiom R3 : ∀ x : obj, Smart x ∧ Cold x → White x

-- Rule R4: All smart people are furry
axiom R4 : ∀ x : obj, Smart x → Furry x

-- Rule R5: Furry people are cold
axiom R5 : ∀ x : obj, Furry x → Cold x

-- Rule R6: Smart, furry people are round
axiom R6 : ∀ x : obj, Smart x ∧ Furry x → Round x

-- Rule R7: If someone is blue then they are smart
axiom R7 : ∀ x : obj, Blue x → Smart x

-- Rule R8: If someone is smart and not cold then they are rough
axiom R8 : ∀ x : obj, Smart x ∧ ¬ Cold x → Rough x


theorem not_round_Erin : ¬ Round Erin :=
begin
  sorry
end


theorem round_Erin : Round Erin :=
begin
  sorry
end
