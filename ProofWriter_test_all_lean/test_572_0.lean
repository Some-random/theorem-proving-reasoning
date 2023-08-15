universe u

constant obj : Type u

constant Dave : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Big : obj → Prop
constant Furry : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop

axiom A1 : Quiet Dave
axiom A2 : Big Fiona
axiom A3 : Furry Fiona
axiom A4 : Round Gary
axiom A5 : Young Gary
axiom A6 : Quiet Harry
axiom A7 : Rough Harry

-- Rule R1: If someone is furry then they are rough
axiom R1 : ∀ x : obj, Furry x → Rough x

-- Rule R2: Big people are rough
axiom R2 : ∀ x : obj, Big x → Rough x

-- Rule R3: If someone is rough then they are young
axiom R3 : ∀ x : obj, Rough x → Young x

-- Rule R4: If someone is young and round then they are quiet
axiom R4 : ∀ x : obj, Young x ∧ Round x → Quiet x

-- Rule R5: Big, young people are cold
axiom R5 : ∀ x : obj, Big x ∧ Young x → Cold x

-- Rule R6: Cold people are round
axiom R6 : ∀ x : obj, Cold x → Round x

-- Rule R7: If someone is young and not furry then they are not round
axiom R7 : ∀ x : obj, Young x ∧ ¬ Furry x → ¬ Round x


theorem not_big_Dave : ¬ Big Dave :=
begin
  sorry
end


theorem big_Dave : Big Dave :=
begin
  sorry
end
