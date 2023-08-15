universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Furry : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop
constant Round : obj → Prop
constant Red : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Nice Anne
axiom A3 : Rough Anne
axiom A4 : White Anne
axiom A5 : Furry Erin
axiom A6 : Rough Erin
axiom A7 : White Erin
axiom A8 : Big Fiona
axiom A9 : Nice Fiona
axiom A10 : Round Fiona
axiom A11 : Nice Harry
axiom A12 : Rough Harry

-- Rule R1: All furry things are white
axiom R1 : ∀ x : obj, Furry x → White x

-- Rule R2: If Harry is red then Harry is round
axiom R2 : Red Harry → Round Harry

-- Rule R3: All round, red things are furry
axiom R3 : ∀ x : obj, Round x ∧ Red x → Furry x

-- Rule R4: If Harry is rough then Harry is round
axiom R4 : Rough Harry → Round Harry

-- Rule R5: Nice, red things are big
axiom R5 : ∀ x : obj, Nice x ∧ Red x → Big x

-- Rule R6: Round, red things are white
axiom R6 : ∀ x : obj, Round x ∧ Red x → White x

-- Rule R7: All nice, white things are red
axiom R7 : ∀ x : obj, Nice x ∧ White x → Red x

-- Rule R8: If something is round then it is furry
axiom R8 : ∀ x : obj, Round x → Furry x


theorem harry_is_big : Big Harry :=
begin
  sorry
end


theorem not_big_Harry : ¬ Big Harry :=
begin
  sorry
end
