universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Furry : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Cold : obj → Prop

axiom A1 : Furry Bob
axiom A2 : Green Bob
axiom A3 : Furry Charlie
axiom A4 : Kind Charlie
axiom A5 : Young Charlie
axiom A6 : Green Erin
axiom A7 : Kind Erin
axiom A8 : Blue Fiona
axiom A9 : Furry Fiona
axiom A10 : Smart Fiona

-- Rule R1: All young people are kind
axiom R1 : ∀ x : obj, Young x → Kind x

-- Rule R2: Furry, cold people are young
axiom R2 : ∀ x : obj, Furry x ∧ Cold x → Young x

-- Rule R3: Furry, blue people are smart
axiom R3 : ∀ x : obj, Furry x ∧ Blue x → Smart x

-- Rule R4: If someone is kind and furry then they are blue
axiom R4 : ∀ x : obj, Kind x ∧ Furry x → Blue x

-- Rule R5: If Bob is smart then Bob is furry
axiom R5 : ∀ x : obj, Smart Bob → Furry Bob

-- Rule R6: All furry, blue people are kind
axiom R6 : ∀ x : obj, Furry x ∧ Blue x → Kind x

-- Rule R7: If someone is furry then they are cold
axiom R7 : ∀ x : obj, Furry x → Cold x

-- Rule R8: If someone is young and furry then they are green
axiom R8 : ∀ x : obj, Young x ∧ Furry x → Green x


theorem not_kind_Erin : ¬ Kind Erin :=
begin
  sorry
end


theorem kind_Erin : Kind Erin :=
begin
  sorry
end
