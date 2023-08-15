universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Green : obj → Prop
constant Kind : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Furry : obj → Prop

axiom A1 : Green Bob
axiom A2 : Kind Bob
axiom A3 : Green Charlie
axiom A4 : ¬ Smart Charlie
axiom A5 : ¬ Young Erin
axiom A6 : Nice Fiona
axiom A7 : Young Fiona

-- Rule R1: Green and smart things are quiet
axiom R1 : ∀ x : obj, Green x ∧ Smart x → Quiet x

-- Rule R2: If something is kind then it is green
axiom R2 : ∀ x : obj, Kind x → Green x

-- Rule R3: Smart things are young
axiom R3 : ∀ x : obj, Smart x → Young x

-- Rule R4: Young things are kind
axiom R4 : ∀ x : obj, Young x → Kind x

-- Rule R5: Quiet things are furry
axiom R5 : ∀ x : obj, Quiet x → Furry x

-- Rule R6: All quiet and nice things are furry
axiom R6 : ∀ x : obj, Quiet x ∧ Nice x → Furry x

-- Rule R7: Nice and green things are smart
axiom R7 : ∀ x : obj, Nice x ∧ Green x → Smart x

-- Rule R8: If Bob is kind and Bob is not green then Bob is furry
axiom R8 : Kind Bob ∧ ¬ Green Bob → Furry Bob


theorem not_young_Erin : ¬ Young Erin :=
begin
  sorry
end


theorem young_Erin : Young Erin :=
begin
  sorry
end
