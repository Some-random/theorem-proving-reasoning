universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant Red : obj → Prop

axiom A1 : Big Bob
axiom A2 : Blue Bob
axiom A3 : Cold Bob
axiom A4 : Furry Bob
axiom A5 : Green Bob
axiom A6 : Round Bob
axiom A7 : Round Dave
axiom A8 : Red Erin
axiom A9 : Cold Fiona
axiom A10 : Green Fiona

-- Rule R1: All green things are blue
axiom R1 : ∀ x : obj, Green x → Blue x

-- Rule R2: If something is round and cold then it is red
axiom R2 : ∀ x : obj, Round x ∧ Cold x → Red x

-- Rule R3: Blue, big things are round
axiom R3 : ∀ x : obj, Blue x ∧ Big x → Round x

-- Rule R4: If something is furry and blue then it is round
axiom R4 : ∀ x : obj, Furry x ∧ Blue x → Round x

-- Rule R5: All red, green things are furry
axiom R5 : ∀ x : obj, Red x ∧ Green x → Furry x

-- Rule R6: If something is round then it is red
axiom R6 : ∀ x : obj, Round x → Red x

-- Rule R7: If Bob is furry and Bob is red then Bob is round
axiom R7 : ∀ x : obj, Furry Bob ∧ Red Bob → Round Bob

-- Rule R8: Red things are big
axiom R8 : ∀ x : obj, Red x → Big x

-- Rule R9: All blue things are furry
axiom R9 : ∀ x : obj, Blue x → Furry x


theorem fiona_is_red : Red Fiona :=
begin
  sorry
end


theorem not_red_Fiona : ¬ Red Fiona :=
begin
  sorry
end
