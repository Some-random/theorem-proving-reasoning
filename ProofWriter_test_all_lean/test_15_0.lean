universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Fiona : obj
constant Gary : obj

constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop

axiom A1 : Kind Anne
axiom A2 : Quiet Anne
axiom A3 : Smart Anne
axiom A4 : Kind Bob
axiom A5 : Nice Bob
axiom A6 : Smart Bob
axiom A7 : ¬ Nice Fiona
axiom A8 : Red Fiona
axiom A9 : Nice Gary
axiom A10 : White Gary

-- Rule R1: If Bob is kind then Bob is smart
axiom R1 : ∀ x : obj, Kind Bob → Smart Bob

-- Rule R2: If something is kind and nice then it is smart
axiom R2 : ∀ x : obj, Kind x ∧ Nice x → Smart x

-- Rule R3: If something is nice and red then it is smart
axiom R3 : ∀ x : obj, Nice x ∧ Red x → Smart x

-- Rule R4: If something is quiet and not nice then it is smart
axiom R4 : ∀ x : obj, Quiet x ∧ ¬ Nice x → Smart x

-- Rule R5: All green things are kind
axiom R5 : ∀ x : obj, Green x → Kind x

-- Rule R6: If Anne is quiet and Anne is white then Anne is kind
axiom R6 : ∀ x : obj, Quiet Anne ∧ White Anne → Kind Anne

-- Rule R7: If Fiona is not nice then Fiona is green
axiom R7 : ∀ x : obj, ¬ Nice Fiona → Green Fiona

-- Rule R8: All smart, kind things are white
axiom R8 : ∀ x : obj, Smart x ∧ Kind x → White x

-- Rule R9: If something is kind and green then it is quiet
axiom R9 : ∀ x : obj, Kind x ∧ Green x → Quiet x


theorem fiona_is_smart : Smart Fiona :=
begin
  sorry
end


theorem not_smart_Fiona : ¬ Smart Fiona :=
begin
  sorry
end
