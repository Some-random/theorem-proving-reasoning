universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Gary : obj

constant Blue : obj → Prop
constant Furry : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop

axiom A1 : Blue Bob
axiom A2 : Furry Bob
axiom A3 : White Dave
axiom A4 : Green Erin
axiom A5 : White Erin
axiom A6 : Green Gary
axiom A7 : Red Gary

-- If Erin is furry and Erin is blue then Erin is big
axiom R1 : Furry Erin ∧ Blue Erin → Big Erin
-- Red things are round
axiom R2 : ∀ x : obj, Red x → Round x
-- If something is blue and big then it is white
axiom R3 : ∀ x : obj, Blue x ∧ Big x → White x
-- Red, furry things are white
axiom R4 : ∀ x : obj, Red x ∧ Furry x → White x
-- If something is round then it is furry
axiom R5 : ∀ x : obj, Round x → Furry x
-- If something is furry and green then it is blue
axiom R6 : ∀ x : obj, Furry x ∧ Green x → Blue x
-- Blue, white things are furry
axiom R7 : ∀ x : obj, Blue x ∧ White x → Furry x
-- If something is green then it is red
axiom R8 : ∀ x : obj, Green x → Red x


theorem gary_is_furry : Furry Gary :=
begin
  sorry
end


theorem not_furry_Gary : ¬ Furry Gary :=
begin
  sorry
end
