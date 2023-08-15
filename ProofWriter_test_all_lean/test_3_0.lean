universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Fiona : obj

constant Round : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Furry : obj → Prop
constant Rough : obj → Prop
constant Big : obj → Prop
constant White : obj → Prop

axiom A1 : Round Anne
axiom A2 : Red Bob
axiom A3 : Smart Bob
axiom A4 : Furry Erin
axiom A5 : Red Erin
axiom A6 : Rough Erin
axiom A7 : Smart Erin
axiom A8 : Big Fiona
axiom A9 : Furry Fiona
axiom A10 : Smart Fiona

-- Rule R1: All smart things are furry
axiom R1 : ∀ x : obj, Smart x → Furry x

-- Rule R2: All furry things are red
axiom R2 : ∀ x : obj, Furry x → Red x

-- Rule R3: All round things are rough
axiom R3 : ∀ x : obj, Round x → Rough x

-- Rule R4: If Bob is white then Bob is furry
axiom R4 : ∀ x : obj, White Bob → Furry Bob

-- Rule R5: All red, rough things are big
axiom R5 : ∀ x : obj, Red x ∧ Rough x → Big x

-- Rule R6: All rough things are smart
axiom R6 : ∀ x : obj, Rough x → Smart x

-- Rule R7: If Fiona is furry then Fiona is red
axiom R7 : ∀ x : obj, Furry Fiona → Red Fiona

-- Rule R8: If Bob is round and big then Bob is furry
axiom R8 : ∀ x : obj, Round Bob ∧ Big Bob → Furry Bob

-- Rule R9: If Fiona is red and white then Fiona is smart
axiom R9 : ∀ x : obj, Red Fiona ∧ White Fiona → Smart Fiona


theorem not_white_Bob : ¬ White Bob :=
begin
  sorry
end


theorem white_Bob : White Bob :=
begin
  sorry
end
