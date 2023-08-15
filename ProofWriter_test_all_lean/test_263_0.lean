universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Cold : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Young Anne
axiom A3 : Cold Charlie
axiom A4 : Big Erin
axiom A5 : Blue Fiona
axiom A6 : Red Fiona
axiom A7 : Smart Fiona

-- If something is big and young then it is smart
axiom R1 : ∀ x : obj, Big x ∧ Young x → Smart x
-- If something is big and red then it is young
axiom R2 : ∀ x : obj, Big x ∧ Red x → Young x
-- All cold things are red
axiom R3 : ∀ x : obj, Cold x → Red x
-- If something is green then it is cold
axiom R4 : ∀ x : obj, Green x → Cold x
-- If Anne is blue and Anne is smart then Anne is young
axiom R5 : Blue Anne ∧ Smart Anne → Young Anne
-- All smart, young things are green
axiom R6 : ∀ x : obj, Smart x ∧ Young x → Green x
-- If something is red and big then it is young
axiom R7 : ∀ x : obj, Red x ∧ Big x → Young x
-- If something is big then it is young
axiom R8 : ∀ x : obj, Big x → Young x


theorem not_green_erin : ¬ Green Erin :=
begin
  sorry
end


theorem green_erin : Green Erin :=
begin
  sorry
end
