universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant White : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop

axiom A1 : White Anne
axiom A2 : Round Erin
axiom A3 : White Erin
axiom A4 : Cold Gary
axiom A5 : Round Gary
axiom A6 : Furry Harry
axiom A7 : Green Harry

-- Furry, white people are green
axiom R1 : ∀ x : obj, Furry x ∧ White x → Green x
-- Nice people are round
axiom R2 : ∀ x : obj, Nice x → Round x
-- All round, furry people are green
axiom R3 : ∀ x : obj, Round x ∧ Furry x → Green x
-- All cold people are white
axiom R4 : ∀ x : obj, Cold x → White x
-- All cold, rough people are round
axiom R5 : ∀ x : obj, Cold x ∧ Rough x → Round x
-- All white people are cold
axiom R6 : ∀ x : obj, White x → Cold x
-- If someone is cold then they are furry
axiom R7 : ∀ x : obj, Cold x → Furry x
-- All furry, green people are rough
axiom R8 : ∀ x : obj, Furry x ∧ Green x → Rough x
-- All round, green people are cold
axiom R9 : ∀ x : obj, Round x ∧ Green x → Cold x


theorem not_white_Harry : ¬ White Harry :=
begin
  sorry
end


theorem white_Harry : White Harry :=
begin
  sorry
end
