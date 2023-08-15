universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Fiona : obj

constant Blue : obj → Prop
constant Green : obj → Prop
constant Smart : obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop

axiom A1 : Blue Anne
axiom A2 : Blue Bob
axiom A3 : Green Bob
axiom A4 : Smart Bob
axiom A5 : Big Dave
axiom A6 : Nice Dave
axiom A7 : Smart Fiona

-- Rule R1: If something is nice then it is not green
axiom R1 : ∀ x : obj, Nice x → ¬ Green x

-- Rule R2: Quiet and blue things are big
axiom R2 : ∀ x : obj, Quiet x ∧ Blue x → Big x

-- Rule R3: If something is blue then it is young
axiom R3 : ∀ x : obj, Blue x → Young x

-- Rule R4: If something is nice then it is quiet
axiom R4 : ∀ x : obj, Nice x → Quiet x

-- Rule R5: Young things are blue
axiom R5 : ∀ x : obj, Young x → Blue x

-- Rule R6: If Anne is young then Anne is quiet
axiom R6 : Young Anne → Quiet Anne

-- Rule R7: If Dave is young then Dave is green
axiom R7 : Young Dave → Green Dave

-- Rule R8: All big, quiet things are nice
axiom R8 : ∀ x : obj, Big x ∧ Quiet x → Nice x

-- Rule R9: If Fiona is blue then Fiona is not green
axiom R9 : Blue Fiona → ¬ Green Fiona


theorem not_quiet_Anne : ¬ Quiet Anne :=
begin
  sorry
end


theorem quiet_Anne : Quiet Anne :=
begin
  sorry
end
