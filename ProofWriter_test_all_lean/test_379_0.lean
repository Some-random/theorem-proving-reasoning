universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Fiona : obj
constant Gary : obj

constant Green : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop

axiom A1 : Green Anne
axiom A2 : Nice Anne
axiom A3 : ¬ Rough Anne
axiom A4 : Smart Anne
axiom A5 : Green Bob
axiom A6 : Nice Bob
axiom A7 : White Fiona
axiom A8 : Rough Gary
axiom A9 : Round Gary
axiom A10 : White Gary

-- Rule R1: If something is nice then it is round
axiom R1 : ∀ x : obj, Nice x → Round x

-- Rule R2: If something is white then it is round
axiom R2 : ∀ x : obj, White x → Round x

-- Rule R3: If something is young and not nice then it is round
axiom R3 : ∀ x : obj, Young x ∧ ¬ Nice x → Round x

-- Rule R4: If Bob is round and green then Bob is rough
axiom R4 : Round Bob ∧ Green Bob → Rough Bob

-- Rule R5: If something is young and green then it is smart
axiom R5 : ∀ x : obj, Young x ∧ Green x → Smart x

-- Rule R6: Smart things are white
axiom R6 : ∀ x : obj, Smart x → White x

-- Rule R7: If something is rough and not green then it is white
axiom R7 : ∀ x : obj, Rough x ∧ ¬ Green x → White x

-- Rule R8: If something is rough then it is young
axiom R8 : ∀ x : obj, Rough x → Young x

-- Rule R9: All rough things are young
axiom R9 : ∀ x : obj, Rough x → Young x


theorem not_smart_Gary : ¬ Smart Gary :=
begin
  sorry
end


theorem smart_Gary : Smart Gary :=
begin
  sorry
end
