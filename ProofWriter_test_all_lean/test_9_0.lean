universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Kind : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop

axiom A1 : Kind Anne
axiom A2 : ¬ Big Charlie
axiom A3 : ¬ Green Charlie
axiom A4 : White Charlie
axiom A5 : Big Erin
axiom A6 : Green Erin
axiom A7 : White Erin
axiom A8 : Green Fiona
axiom A9 : Kind Fiona
axiom A10 : Quiet Fiona
axiom A11 : Red Fiona
axiom A12 : White Fiona

-- Rule R1: If Erin is big and Erin is red then Erin is kind
axiom R1 : Big Erin ∧ Red Erin → Kind Erin

-- Rule R2: All rough things are green
axiom R2 : ∀ x : obj, Rough x → Green x

-- Rule R3: If something is kind then it is green
axiom R3 : ∀ x : obj, Kind x → Green x

-- Rule R4: Quiet, green things are big
axiom R4 : ∀ x : obj, Quiet x ∧ Green x → Big x

-- Rule R5: If something is rough and green then it is red
axiom R5 : ∀ x : obj, Rough x ∧ Green x → Red x

-- Rule R6: If something is green then it is rough
axiom R6 : ∀ x : obj, Green x → Rough x

-- Rule R7: If Erin is red then Erin is green
axiom R7 : Red Erin → Green Erin

-- Rule R8: All red, rough things are quiet
axiom R8 : ∀ x : obj, Red x ∧ Rough x → Quiet x

-- Rule R9: If something is quiet and not red then it is not white
axiom R9 : ∀ x : obj, Quiet x ∧ ¬ Red x → ¬ White x


theorem not_white_Anne : ¬ White Anne :=
begin
  sorry
end


theorem white_Anne : White Anne :=
begin
  sorry
end
