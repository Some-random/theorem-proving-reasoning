universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Furry : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Kind : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Round Charlie
axiom A3 : Smart Charlie
axiom A4 : White Charlie
axiom A5 : Young Charlie
axiom A6 : Kind Erin
axiom A7 : Nice Erin
axiom A8 : Round Erin
axiom A9 : Smart Erin
axiom A10 : White Erin
axiom A11 : Young Erin
axiom A12 : Furry Harry
axiom A13 : Nice Harry
axiom A14 : Round Harry
axiom A15 : Smart Harry
axiom A16 : Young Harry

-- Rule R1: All round people are nice
axiom R1 : ∀ x : obj, Round x → Nice x

-- Rule R2: Nice, furry people are kind
axiom R2 : ∀ x : obj, Nice x ∧ Furry x → Kind x

-- Rule R3: All kind, white people are round
axiom R3 : ∀ x : obj, Kind x ∧ White x → Round x

-- Rule R4: All white, furry people are kind
axiom R4 : ∀ x : obj, White x ∧ Furry x → Kind x

-- Rule R5: If someone is round and white then they are kind
axiom R5 : ∀ x : obj, Round x ∧ White x → Kind x

-- Rule R6: Nice people are smart
axiom R6 : ∀ x : obj, Nice x → Smart x

-- Rule R7: If Anne is nice and Anne is round then Anne is kind
axiom R7 : ∀ x : obj, Nice Anne ∧ Round Anne → Kind Anne

-- Rule R8: If someone is furry then they are white
axiom R8 : ∀ x : obj, Furry x → White x


theorem erin_is_nice : Nice Erin :=
begin
  sorry
end


theorem not_nice_Erin : ¬ Nice Erin :=
begin
  sorry
end
