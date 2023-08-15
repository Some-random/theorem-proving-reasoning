universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Smart : obj → Prop
constant Nice : obj → Prop
constant Furry : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop

axiom A1 : Smart Anne
axiom A2 : Nice Charlie
axiom A3 : Furry Erin
axiom A4 : White Erin
axiom A5 : Smart Fiona
axiom A6 : White Fiona
axiom A7 : Young Fiona

-- Nice, smart things are young
axiom R1 : ∀ x : obj, Nice x ∧ Smart x → Young x
-- All young, white things are cold
axiom R2 : ∀ x : obj, Young x ∧ White x → Cold x
-- White things are red
axiom R3 : ∀ x : obj, White x → Red x
-- All furry, red things are nice
axiom R4 : ∀ x : obj, Furry x ∧ Red x → Nice x
-- All young things are white
axiom R5 : ∀ x : obj, Young x → White x
-- All smart, cold things are furry
axiom R6 : ∀ x : obj, Smart x ∧ Cold x → Furry x
-- If something is nice and white then it is smart
axiom R7 : ∀ x : obj, Nice x ∧ White x → Smart x
-- If Anne is furry and Anne is white then Anne is red
axiom R8 : Furry Anne ∧ White Anne → Red Anne


theorem erin_is_cold : Cold Erin :=
begin
  sorry
end


theorem not_cold_Erin : ¬ Cold Erin :=
begin
  sorry
end
