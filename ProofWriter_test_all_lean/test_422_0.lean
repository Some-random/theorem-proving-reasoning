universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Gary : obj

constant Cold : obj → Prop
constant White : obj → Prop
constant Nice : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Quiet : obj → Prop
constant Furry : obj → Prop

axiom A1 : Cold Anne
axiom A2 : White Anne
axiom A3 : Nice Bob
axiom A4 : White Bob
axiom A5 : Blue Dave
axiom A6 : Blue Gary
axiom A7 : Smart Gary

-- All blue people are smart
axiom R1 : ∀ x : obj, Blue x → Smart x
-- If someone is smart then they are cold
axiom R2 : ∀ x : obj, Smart x → Cold x
-- If someone is white then they are quiet
axiom R3 : ∀ x : obj, White x → Quiet x
-- If someone is nice and quiet then they are blue
axiom R4 : ∀ x : obj, Nice x ∧ Quiet x → Blue x
-- All white, furry people are blue
axiom R5 : ∀ x : obj, White x ∧ Furry x → Blue x
-- If Gary is furry then Gary is cold
axiom R6 : ∀ x : obj, Furry Gary → Cold Gary
-- If Bob is not white then Bob is smart
axiom R7 : ∀ x : obj, ¬ White Bob → Smart Bob
-- All cold, blue people are not furry
axiom R8 : ∀ x : obj, Cold x ∧ Blue x → ¬ Furry x


theorem not_blue_Bob : ¬ Blue Bob :=
begin
  sorry
end


theorem blue_Bob : Blue Bob :=
begin
  sorry
end
