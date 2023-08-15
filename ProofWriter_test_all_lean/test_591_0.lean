universe u

constant obj : Type u

constant Dave : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Furry : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop

axiom A1 : Furry Dave
axiom A2 : Green Dave
axiom A3 : Quiet Dave
axiom A4 : Red Dave
axiom A5 : Blue Fiona
axiom A6 : Furry Fiona
axiom A7 : Green Fiona
axiom A8 : Quiet Fiona
axiom A9 : Red Fiona
axiom A10 : Blue Gary
axiom A11 : Nice Gary
axiom A12 : Quiet Gary
axiom A13 : Red Gary
axiom A14 : Smart Gary
axiom A15 : Blue Harry
axiom A16 : Smart Harry

-- Rule R1: If something is blue and furry then it is quiet
axiom R1 : ∀ x : obj, Blue x ∧ Furry x → Quiet x

-- Rule R2: If Dave is furry then Dave is nice
axiom R2 : Furry Dave → Nice Dave

-- Rule R3: If something is furry then it is blue
axiom R3 : ∀ x : obj, Furry x → Blue x

-- Rule R4: Quiet things are red
axiom R4 : ∀ x : obj, Quiet x → Red x

-- Rule R5: All furry, green things are quiet
axiom R5 : ∀ x : obj, Furry x ∧ Green x → Quiet x

-- Rule R6: If something is red then it is green
axiom R6 : ∀ x : obj, Red x → Green x

-- Rule R7: All nice things are furry
axiom R7 : ∀ x : obj, Nice x → Furry x

-- Rule R8: All smart things are nice
axiom R8 : ∀ x : obj, Smart x → Nice x

-- Rule R9: Red things are quiet
axiom R9 : ∀ x : obj, Red x → Quiet x


theorem not_nice_Dave : ¬ Nice Dave :=
begin
  sorry
end


theorem nice_Dave : Nice Dave :=
begin
  sorry
end
