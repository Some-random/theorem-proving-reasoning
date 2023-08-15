universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Fiona : obj
constant Harry : obj

constant Rough : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant Blue : obj → Prop

axiom A1 : Rough Bob
axiom A2 : Furry Dave
axiom A3 : Nice Dave
axiom A4 : ¬ Red Dave
axiom A5 : Smart Dave
axiom A6 : Green Fiona
axiom A7 : Nice Fiona
axiom A8 : Blue Harry
axiom A9 : Furry Harry
axiom A10 : Green Harry
axiom A11 : Nice Harry
axiom A12 : ¬ Red Harry
axiom A13 : Rough Harry
axiom A14 : Smart Harry

-- Rule R1: Smart things are green
axiom R1 : ∀ x : obj, Smart x → Green x

-- Rule R2: If something is nice and not rough then it is red
axiom R2 : ∀ x : obj, Nice x ∧ ¬ Rough x → Red x

-- Rule R3: If something is nice then it is smart
axiom R3 : ∀ x : obj, Nice x → Smart x

-- Rule R4: If something is rough then it is nice
axiom R4 : ∀ x : obj, Rough x → Nice x

-- Rule R5: If something is blue then it is furry
axiom R5 : ∀ x : obj, Blue x → Furry x

-- Rule R6: All blue, smart things are furry
axiom R6 : ∀ x : obj, Blue x ∧ Smart x → Furry x

-- Rule R7: If Bob is furry and Bob is not rough then Bob is green
axiom R7 : ∀ x : obj, Furry Bob ∧ ¬ Rough Bob → Green Bob

-- Rule R8: If something is green then it is blue
axiom R8 : ∀ x : obj, Green x → Blue x

-- Rule R9: If something is red and not nice then it is not blue
axiom R9 : ∀ x : obj, Red x ∧ ¬ Nice x → ¬ Blue x


theorem not_green_Bob : ¬ Green Bob :=
begin
  sorry
end


theorem green_Bob : Green Bob :=
begin
  sorry
end
