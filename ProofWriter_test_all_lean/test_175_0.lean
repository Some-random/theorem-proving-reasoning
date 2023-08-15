universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Rough : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Furry : obj → Prop

axiom A1 : Rough Anne
axiom A2 : Quiet Charlie
axiom A3 : Smart Charlie
axiom A4 : White Charlie
axiom A5 : Quiet Erin
axiom A6 : Red Erin
axiom A7 : Quiet Fiona
axiom A8 : Red Fiona
axiom A9 : Round Fiona
axiom A10 : Smart Fiona
axiom A11 : White Fiona

-- Rule R1: If someone is furry and round then they are smart
axiom R1 : ∀ x : obj, Furry x ∧ Round x → Smart x

-- Rule R2: All round, red people are furry
axiom R2 : ∀ x : obj, Round x ∧ Red x → Furry x

-- Rule R3: All smart, furry people are rough
axiom R3 : ∀ x : obj, Smart x ∧ Furry x → Rough x

-- Rule R4: If Erin is red then Erin is white
axiom R4 : ∀ x : obj, Red Erin → White Erin

-- Rule R5: All smart, rough people are furry
axiom R5 : ∀ x : obj, Smart x ∧ Rough x → Furry x

-- Rule R6: All furry, rough people are round
axiom R6 : ∀ x : obj, Furry x ∧ Rough x → Round x

-- Rule R7: If someone is white then they are rough
axiom R7 : ∀ x : obj, White x → Rough x

-- Rule R8: If someone is red and rough then they are smart
axiom R8 : ∀ x : obj, Red x ∧ Rough x → Smart x

-- Rule R9: All red, rough people are white
axiom R9 : ∀ x : obj, Red x ∧ Rough x → White x


theorem anne_is_white : White Anne :=
begin
  sorry
end


theorem not_white_Anne : ¬ White Anne :=
begin
  sorry
end
