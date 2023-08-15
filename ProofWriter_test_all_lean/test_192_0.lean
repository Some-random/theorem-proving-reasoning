universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Cold : obj → Prop
constant Rough : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop

axiom A1 : Cold Charlie
axiom A2 : Rough Charlie
axiom A3 : ¬ Big Erin
axiom A4 : Blue Erin
axiom A5 : Cold Erin
axiom A6 : Furry Erin
axiom A7 : Red Erin
axiom A8 : Rough Erin
axiom A9 : Smart Erin
axiom A10 : Big Fiona
axiom A11 : Cold Fiona
axiom A12 : Blue Harry
axiom A13 : Red Harry
axiom A14 : Smart Harry

-- Rule R1: If someone is blue then they are rough
axiom R1 : ∀ x : obj, Blue x → Rough x

-- Rule R2: Smart people are furry
axiom R2 : ∀ x : obj, Smart x → Furry x

-- Rule R3: All big people are blue
axiom R3 : ∀ x : obj, Big x → Blue x

-- Rule R4: All furry people are red
axiom R4 : ∀ x : obj, Furry x → Red x

-- Rule R5: All rough people are smart
axiom R5 : ∀ x : obj, Rough x → Smart x


theorem fiona_is_rough : Rough Fiona :=
begin
  sorry
end


theorem not_rough_Fiona : ¬ Rough Fiona :=
begin
  sorry
end
