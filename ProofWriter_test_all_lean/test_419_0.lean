universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Gary : obj

constant Blue : obj → Prop
constant Quiet : obj → Prop
constant Cold : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop

axiom A1 : Blue Charlie
axiom A2 : Quiet Charlie
axiom A3 : Blue Dave
axiom A4 : Cold Dave
axiom A5 : Young Dave
axiom A6 : Blue Erin
axiom A7 : Quiet Erin
axiom A8 : White Erin
axiom A9 : Young Erin
axiom A10 : Cold Gary
axiom A11 : Quiet Gary
axiom A12 : Young Gary

-- Rule R1: All quiet things are furry
axiom R1 : ∀ x : obj, Quiet x → Furry x

-- Rule R2: If Charlie is cold then Charlie is young
axiom R2 : Cold Charlie → Young Charlie

-- Rule R3: White things are cold
axiom R3 : ∀ x : obj, White x → Cold x

-- Rule R4: All young things are nice
axiom R4 : ∀ x : obj, Young x → Nice x

-- Rule R5: If Gary is nice then Gary is young
axiom R5 : Nice Gary → Young Gary

-- Rule R6: If something is young then it is nice
axiom R6 : ∀ x : obj, Young x → Nice x

-- Rule R7: If something is furry and blue then it is white
axiom R7 : ∀ x : obj, Furry x ∧ Blue x → White x

-- Rule R8: If something is young and furry then it is nice
axiom R8 : ∀ x : obj, Young x ∧ Furry x → Nice x


theorem charlie_is_cold : Cold Charlie :=
begin
  sorry
end


theorem not_cold_Charlie : ¬ Cold Charlie :=
begin
  sorry
end
