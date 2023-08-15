universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Harry : obj

constant Furry : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Green : obj → Prop
constant Big : obj → Prop
constant Round : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Nice Anne
axiom A3 : Smart Anne
axiom A4 : Young Bob
axiom A5 : Nice Erin
axiom A6 : Smart Harry
axiom A7 : Young Harry

-- Young things are furry
axiom R1 : ∀ x : obj, Young x → Furry x
-- Nice, furry things are green
axiom R2 : ∀ x : obj, Nice x ∧ Furry x → Green x
-- All green things are nice
axiom R3 : ∀ x : obj, Green x → Nice x
-- Nice, green things are big
axiom R4 : ∀ x : obj, Nice x ∧ Green x → Big x
-- All green things are smart
axiom R5 : ∀ x : obj, Green x → Smart x
-- If something is big and young then it is round
axiom R6 : ∀ x : obj, Big x ∧ Young x → Round x
-- All green things are big
axiom R7 : ∀ x : obj, Green x → Big x
-- If Harry is young then Harry is furry
axiom R8 : ∀ x : obj, Young Harry → Furry Harry
-- Furry, smart things are nice
axiom R9 : ∀ x : obj, Furry x ∧ Smart x → Nice x


theorem not_green_Harry : ¬ Green Harry :=
begin
  sorry
end


theorem green_Harry : Green Harry :=
begin
  sorry
end
