universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Nice : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant Kind : obj → Prop
constant Big : obj → Prop

axiom A1 : Nice Anne
axiom A2 : White Anne
axiom A3 : Young Anne
axiom A4 : Cold Dave
axiom A5 : Nice Dave
axiom A6 : Smart Dave
axiom A7 : Cold Erin
axiom A8 : ¬ Kind Erin
axiom A9 : ¬ Nice Erin
axiom A10 : Smart Erin
axiom A11 : Young Erin
axiom A12 : Kind Fiona

-- Rule R1: Smart people are white
axiom R1 : ∀ x : obj, Smart x → White x

-- Rule R2: Kind and cold people are smart
axiom R2 : ∀ x : obj, Kind x ∧ Cold x → Smart x

-- Rule R3: Kind people are big
axiom R3 : ∀ x : obj, Kind x → Big x

-- Rule R4: If Fiona is cold and big then Fiona is nice
axiom R4 : ∀ x : obj, Cold Fiona ∧ Big Fiona → Nice Fiona

-- Rule R5: If someone is nice and big then they are cold
axiom R5 : ∀ x : obj, Nice x ∧ Big x → Cold x

-- Rule R6: If someone is young and white then they are cold
axiom R6 : ∀ x : obj, Young x ∧ White x → Cold x

-- Rule R7: If Anne is nice then Anne is cold
axiom R7 : ∀ x : obj, Nice Anne → Cold Anne

-- Rule R8: Big and young people are nice
axiom R8 : ∀ x : obj, Big x ∧ Young x → Nice x

-- Rule R9: Big people are young
axiom R9 : ∀ x : obj, Big x → Young x


theorem not_big_Fiona : ¬ Big Fiona :=
begin
  sorry
end


theorem big_Fiona : Big Fiona :=
begin
  sorry
end
