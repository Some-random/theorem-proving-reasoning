universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Blue : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop

axiom A1 : Blue Bob
axiom A2 : Cold Bob
axiom A3 : Green Bob
axiom A4 : Blue Dave
axiom A5 : Cold Dave
axiom A6 : Green Dave
axiom A7 : Kind Dave
axiom A8 : Smart Dave
axiom A9 : White Dave
axiom A10 : Smart Erin
axiom A11 : Blue Fiona

-- Rule R1: Blue people are smart
axiom R1 : ∀ x : obj, Blue x → Smart x

-- Rule R2: If Fiona is green and Fiona is blue then Fiona is big
axiom R2 : ∀ x : obj, Green Fiona ∧ Blue Fiona → Big Fiona

-- Rule R3: Smart people are cold
axiom R3 : ∀ x : obj, Smart x → Cold x

-- Rule R4: If Bob is kind and Bob is blue then Bob is not green
axiom R4 : ∀ x : obj, Kind Bob ∧ Blue Bob → ¬ Green Bob

-- Rule R5: If someone is blue then they are white
axiom R5 : ∀ x : obj, Blue x → White x

-- Rule R6: Green people are white
axiom R6 : ∀ x : obj, Green x → White x

-- Rule R7: All big people are kind
axiom R7 : ∀ x : obj, Big x → Kind x

-- Rule R8: If someone is cold then they are green
axiom R8 : ∀ x : obj, Cold x → Green x


theorem dave_is_big : Big Dave :=
begin
  sorry
end


theorem not_big_Dave : ¬ Big Dave :=
begin
  sorry
end
