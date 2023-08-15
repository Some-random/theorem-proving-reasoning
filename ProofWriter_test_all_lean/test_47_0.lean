universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Blue : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Nice : obj → Prop

axiom A1 : Blue Anne
axiom A2 : Young Anne
axiom A3 : Cold Dave
axiom A4 : Furry Dave
axiom A5 : Kind Erin
axiom A6 : Red Erin
axiom A7 : Blue Fiona
axiom A8 : Kind Fiona
axiom A9 : Red Fiona
axiom A10 : Young Fiona

-- Rule R1: If Dave is furry and Dave is cold then Dave is young
axiom R1 : Furry Dave ∧ Cold Dave → Young Dave

-- Rule R2: All nice, cold people are red
axiom R2 : ∀ x : obj, Nice x ∧ Cold x → Red x

-- Rule R3: Red, young people are blue
axiom R3 : ∀ x : obj, Red x ∧ Young x → Blue x

-- Rule R4: If Anne is furry then Anne is young
axiom R4 : Furry Anne → Young Anne

-- Rule R5: If someone is young then they are kind
axiom R5 : ∀ x : obj, Young x → Kind x

-- Rule R6: All kind, cold people are nice
axiom R6 : ∀ x : obj, Kind x ∧ Cold x → Nice x

-- Rule R7: If Anne is blue then Anne is young
axiom R7 : Blue Anne → Young Anne


theorem not_nice_Dave : ¬ Nice Dave :=
begin
  sorry
end


theorem nice_Dave : Nice Dave :=
begin
  sorry
end
