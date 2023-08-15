universe u

constant obj : Type u

constant Bob : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Round : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop

axiom A1 : Round Bob
axiom A2 : Quiet Erin
axiom A3 : Smart Erin
axiom A4 : ¬ White Erin
axiom A5 : Green Fiona
axiom A6 : Quiet Fiona
axiom A7 : Smart Fiona
axiom A8 : Big Gary
axiom A9 : Green Gary
axiom A10 : Quiet Gary
axiom A11 : White Gary

-- Rule R1: All quiet things are smart
axiom R1 : ∀ x : obj, Quiet x → Smart x

-- Rule R2: Round things are quiet
axiom R2 : ∀ x : obj, Round x → Quiet x

-- Rule R3: All green, round things are white
axiom R3 : ∀ x : obj, Green x ∧ Round x → White x

-- Rule R4: If Fiona is not quiet then Fiona is white
axiom R4 : ¬ Quiet Fiona → White Fiona

-- Rule R5: Smart, white things are big
axiom R5 : ∀ x : obj, Smart x ∧ White x → Big x

-- Rule R6: If something is nice and quiet then it is big
axiom R6 : ∀ x : obj, Nice x ∧ Quiet x → Big x

-- Rule R7: If something is quiet and not smart then it is not green
axiom R7 : ∀ x : obj, Quiet x ∧ ¬ Smart x → ¬ Green x

-- Rule R8: All quiet, smart things are green
axiom R8 : ∀ x : obj, Quiet x ∧ Smart x → Green x

-- Rule R9: If something is big then it is nice
axiom R9 : ∀ x : obj, Big x → Nice x


theorem bob_is_green : Green Bob :=
begin
  sorry
end


theorem not_green_Bob : ¬ Green Bob :=
begin
  sorry
end
