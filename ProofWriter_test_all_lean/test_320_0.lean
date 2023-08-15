universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Erin : obj
constant Harry : obj

constant Furry : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant Big : obj → Prop
constant Round : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Nice Anne
axiom A3 : Furry Dave
axiom A4 : ¬ Nice Dave
axiom A5 : Smart Erin
axiom A6 : Furry Harry
axiom A7 : Nice Harry

-- Rule R1: All round people are quiet
axiom R1 : ∀ x : obj, Round x → Quiet x

-- Rule R2: All round people are green
axiom R2 : ∀ x : obj, Round x → Green x

-- Rule R3: All quiet, furry people are green
axiom R3 : ∀ x : obj, Quiet x ∧ Furry x → Green x

-- Rule R4: Furry people are green
axiom R4 : ∀ x : obj, Furry x → Green x

-- Rule R5: Big, quiet people are not smart
axiom R5 : ∀ x : obj, Big x ∧ Quiet x → ¬ Smart x

-- Rule R6: Smart people are nice
axiom R6 : ∀ x : obj, Smart x → Nice x

-- Rule R7: All green people are big
axiom R7 : ∀ x : obj, Green x → Big x

-- Rule R8: If Anne is big and Anne is green then Anne is round
axiom R8 : Big Anne ∧ Green Anne → Round Anne

-- Rule R9: If someone is quiet and smart then they are round
axiom R9 : ∀ x : obj, Quiet x ∧ Smart x → Round x


theorem not_furry_erin : ¬ Furry Erin :=
begin
  sorry
end


theorem furry_erin : Furry Erin :=
begin
  sorry
end
