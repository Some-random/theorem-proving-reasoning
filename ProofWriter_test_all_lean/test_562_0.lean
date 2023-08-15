universe u

constant obj : Type u

constant Bob : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Cold : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop
constant White : obj → Prop

axiom A1 : Cold Bob
axiom A2 : Kind Bob
axiom A3 : Red Bob
axiom A4 : Smart Bob
axiom A5 : Young Bob
axiom A6 : Blue Fiona
axiom A7 : Blue Gary
axiom A8 : Kind Gary
axiom A9 : Kind Harry
axiom A10 : Young Harry

-- All red people are blue
axiom R1 : ∀ x : obj, Red x → Blue x
-- All blue people are smart
axiom R2 : ∀ x : obj, Blue x → Smart x
-- All young people are cold
axiom R3 : ∀ x : obj, Young x → Cold x
-- Cold people are red
axiom R4 : ∀ x : obj, Cold x → Red x
-- If someone is kind and smart then they are white
axiom R5 : ∀ x : obj, Kind x ∧ Smart x → White x


theorem fiona_is_cold : Cold Fiona :=
begin
  sorry
end


theorem not_cold_Fiona : ¬ Cold Fiona :=
begin
  sorry
end
