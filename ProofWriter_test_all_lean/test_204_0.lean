universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Erin : obj

constant Green : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop
constant White : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Green Anne
axiom A2 : Young Anne
axiom A3 : Blue Charlie
axiom A4 : Green Charlie
axiom A5 : White Charlie
axiom A6 : White Dave
axiom A7 : White Erin

-- Rule R1: If Dave is kind and Dave is white then Dave is blue
axiom R1 : Kind Dave ∧ White Dave → Blue Dave

-- Rule R2: If someone is white then they are nice
axiom R2 : ∀ x : obj, White x → Nice x

-- Rule R3: All nice, green people are young
axiom R3 : ∀ x : obj, Nice x ∧ Green x → Young x

-- Rule R4: If someone is green then they are quiet
axiom R4 : ∀ x : obj, Green x → Quiet x

-- Rule R5: Nice people are kind
axiom R5 : ∀ x : obj, Nice x → Kind x

-- Rule R6: If Dave is blue then Dave is white
axiom R6 : Blue Dave → White Dave

-- Rule R7: If Anne is nice and Anne is not white then Anne is green
axiom R7 : Nice Anne ∧ ¬ White Anne → Green Anne

-- Rule R8: If Dave is white and Dave is blue then Dave is green
axiom R8 : White Dave ∧ Blue Dave → Green Dave


theorem not_quiet_Erin : ¬ Quiet Erin :=
begin
  sorry
end


theorem quiet_Erin : Quiet Erin :=
begin
  sorry
end
