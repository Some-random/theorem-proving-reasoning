universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Fiona : obj

constant Green : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop

axiom A1 : Green Anne
axiom A2 : Kind Bob
axiom A3 : Rough Bob
axiom A4 : ¬ Rough Erin
axiom A5 : Nice Fiona
axiom A6 : ¬ Red Fiona
axiom A7 : Rough Fiona

-- Rule R1: If something is green then it is not blue
axiom R1 : ∀ x : obj, Green x → ¬ Blue x

-- Rule R2: Green things are red
axiom R2 : ∀ x : obj, Green x → Red x

-- Rule R3: Green and red things are rough
axiom R3 : ∀ x : obj, Green x ∧ Red x → Rough x

-- Rule R4: If Bob is blue then Bob is kind
axiom R4 : Blue Bob → Kind Bob

-- Rule R5: All kind things are smart
axiom R5 : ∀ x : obj, Kind x → Smart x

-- Rule R6: Rough and red things are kind
axiom R6 : ∀ x : obj, Rough x ∧ Red x → Kind x

-- Rule R7: If something is green and not kind then it is nice
axiom R7 : ∀ x : obj, Green x ∧ ¬ Kind x → Nice x

-- Rule R8: All smart things are nice
axiom R8 : ∀ x : obj, Smart x → Nice x


theorem fiona_is_blue : Blue Fiona :=
begin
  sorry
end


theorem not_blue_Fiona : ¬ Blue Fiona :=
begin
  sorry
end
