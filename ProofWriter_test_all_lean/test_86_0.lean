universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Lion : obj
constant Tiger : obj

constant Green : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Needs : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Kind : obj → Prop
constant Blue : obj → Prop

axiom A1 : Green BaldEagle
axiom A2 : Round BaldEagle
axiom A3 : Young BaldEagle
axiom A4 : Needs BaldEagle Lion
axiom A5 : Green Cat
axiom A6 : Kind Cat
axiom A7 : ¬ Needs Cat BaldEagle
axiom A8 : Chases Lion BaldEagle
axiom A9 : Chases Lion Tiger
axiom A10 : Round Lion
axiom A11 : Needs Lion BaldEagle
axiom A12 : Visits Lion BaldEagle
axiom A13 : Visits Lion Cat
axiom A14 : ¬ Blue Tiger
axiom A15 : ¬ Green Tiger
axiom A16 : Young Tiger

-- Rule R1: If someone visits the tiger then the tiger visits the lion
axiom R1 : ∀ x : obj, Visits x Tiger → Visits Tiger Lion

-- Rule R2: If someone is kind and blue then they visit the cat
axiom R2 : ∀ x : obj, Kind x ∧ Blue x → Visits x Cat

-- Rule R3: If someone is green then they visit the bald eagle
axiom R3 : ∀ x : obj, Green x → Visits x BaldEagle

-- Rule R4: If someone needs the tiger then they visit the tiger
axiom R4 : ∀ x : obj, Needs x Tiger → Visits x Tiger

-- Rule R5: If someone needs the tiger and the tiger needs the cat then the tiger needs the lion
axiom R5 : ∀ x : obj, Needs x Tiger ∧ Needs Tiger Cat → Needs Tiger Lion

-- Rule R6: If someone visits the lion then they need the tiger
axiom R6 : ∀ x : obj, Visits x Lion → Needs x Tiger

-- Rule R7: If the tiger chases the bald eagle then the bald eagle is green
axiom R7 : ∀ x : obj, Chases Tiger BaldEagle → Green BaldEagle

-- Rule R8: If the bald eagle is young then the bald eagle needs the tiger
axiom R8 : ∀ x : obj, Young BaldEagle → Needs BaldEagle Tiger


theorem not_visits_tiger_lion : ¬ Visits Tiger Lion :=
begin
  sorry
end


theorem visits_tiger_lion : Visits Tiger Lion :=
begin
  sorry
end
