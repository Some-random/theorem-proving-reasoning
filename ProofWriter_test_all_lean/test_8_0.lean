universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Green : obj → Prop
constant Kind : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop

axiom A1 : Green Charlie
axiom A2 : Kind Charlie
axiom A3 : Blue Erin
axiom A4 : Kind Erin
axiom A5 : Green Fiona
axiom A6 : Blue Gary
axiom A7 : Furry Gary
axiom A8 : Green Gary
axiom A9 : Kind Gary
axiom A10 : Round Gary

-- Rule R1: If someone is round and kind then they are green
axiom R1 : ∀ x : obj, Round x ∧ Kind x → Green x

-- Rule R2: All green, round people are blue
axiom R2 : ∀ x : obj, Green x ∧ Round x → Blue x

-- Rule R3: Round people are big
axiom R3 : ∀ x : obj, Round x → Big x

-- Rule R4: If someone is kind then they are furry
axiom R4 : ∀ x : obj, Kind x → Furry x

-- Rule R5: All blue people are kind
axiom R5 : ∀ x : obj, Blue x → Kind x

-- Rule R6: If someone is green then they are big
axiom R6 : ∀ x : obj, Green x → Big x

-- Rule R7: If Erin is cold and green then Erin is blue
axiom R7 : ∀ x : obj, Cold Erin ∧ Green Erin → Blue Erin

-- Rule R8: Cold, blue people are kind
axiom R8 : ∀ x : obj, Cold x ∧ Blue x → Kind x

-- Rule R9: All green, big people are round
axiom R9 : ∀ x : obj, Green x ∧ Big x → Round x


theorem fiona_is_round : Round Fiona :=
begin
  sorry
end


theorem not_round_Fiona : ¬ Round Fiona :=
begin
  sorry
end
