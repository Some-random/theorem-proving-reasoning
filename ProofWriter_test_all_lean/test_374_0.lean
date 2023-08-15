universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop
constant Quiet : obj → Prop
constant Rough : obj → Prop

axiom A1 : Big Dave
axiom A2 : Furry Dave
axiom A3 : Blue Erin
axiom A4 : Cold Erin
axiom A5 : Round Erin
axiom A6 : Quiet Fiona
axiom A7 : Rough Gary

-- Rule R1: If something is rough and cold then it is furry
axiom R1 : ∀ x : obj, Rough x ∧ Cold x → Furry x

-- Rule R2: Quiet, big things are not round
axiom R2 : ∀ x : obj, Quiet x ∧ Big x → ¬ Round x

-- Rule R3: If Dave is blue then Dave is furry
axiom R3 : ∀ x : obj, Blue Dave → Furry Dave

-- Rule R4: All quiet, blue things are big
axiom R4 : ∀ x : obj, Quiet x ∧ Blue x → Big x

-- Rule R5: If Fiona is furry then Fiona is blue
axiom R5 : ∀ x : obj, Furry Fiona → Blue Fiona

-- Rule R6: If something is quiet then it is cold
axiom R6 : ∀ x : obj, Quiet x → Cold x

-- Rule R7: All big things are cold
axiom R7 : ∀ x : obj, Big x → Cold x

-- Rule R8: All blue, round things are not quiet
axiom R8 : ∀ x : obj, Blue x ∧ Round x → ¬ Quiet x

-- Rule R9: Cold things are rough
axiom R9 : ∀ x : obj, Cold x → Rough x


theorem not_blue_Dave : ¬ Blue Dave :=
begin
  sorry
end


theorem blue_Dave : Blue Dave :=
begin
  sorry
end
