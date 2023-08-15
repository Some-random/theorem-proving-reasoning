universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Green : obj → Prop
constant Kind : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Big : obj → Prop
constant Smart : obj → Prop
constant Rough : obj → Prop

axiom A1 : Green Dave
axiom A2 : Kind Dave
axiom A3 : Cold Erin
axiom A4 : Furry Erin
axiom A5 : Big Fiona
axiom A6 : Furry Fiona
axiom A7 : Big Gary

-- Rule R1: All kind people are cold
axiom R1 : ∀ x : obj, Kind x → Cold x

-- Rule R2: Green, smart people are rough
axiom R2 : ∀ x : obj, Green x ∧ Smart x → Rough x

-- Rule R3: If Fiona is cold and Fiona is kind then Fiona is green
axiom R3 : ∀ x : obj, Cold Fiona ∧ Kind Fiona → Green Fiona

-- Rule R4: If someone is furry then they are smart
axiom R4 : ∀ x : obj, Furry x → Smart x

-- Rule R5: All furry, green people are smart
axiom R5 : ∀ x : obj, Furry x ∧ Green x → Smart x

-- Rule R6: If someone is green and cold then they are big
axiom R6 : ∀ x : obj, Green x ∧ Cold x → Big x

-- Rule R7: If someone is furry and rough then they are big
axiom R7 : ∀ x : obj, Furry x ∧ Rough x → Big x

-- Rule R8: All furry people are smart
axiom R8 : ∀ x : obj, Furry x → Smart x

-- Rule R9: Big, cold people are furry
axiom R9 : ∀ x : obj, Big x ∧ Cold x → Furry x


theorem erin_is_smart : Smart Erin :=
begin
  sorry
end


theorem not_smart_Erin : ¬ Smart Erin :=
begin
  sorry
end
