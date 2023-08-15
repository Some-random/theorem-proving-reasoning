universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Fiona : obj
constant Gary : obj

constant Round : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Round Bob
axiom A2 : Smart Bob
axiom A3 : ¬ Smart Charlie
axiom A4 : Young Fiona
axiom A5 : Nice Gary
axiom A6 : Smart Gary
axiom A7 : White Gary

-- Rule R1: If someone is young then they are smart
axiom R1 : ∀ x : obj, Young x → Smart x

-- Rule R2: If Fiona is young then Fiona is smart
axiom R2 : Young Fiona → Smart Fiona

-- Rule R3: If someone is green and young then they are white
axiom R3 : ∀ x : obj, Green x ∧ Young x → White x

-- Rule R4: If someone is smart then they are green
axiom R4 : ∀ x : obj, Smart x → Green x

-- Rule R5: If someone is quiet then they are round
axiom R5 : ∀ x : obj, Quiet x → Round x

-- Rule R6: If someone is round and not smart then they are not quiet
axiom R6 : ∀ x : obj, Round x ∧ ¬ Smart x → ¬ Quiet x

-- Rule R7: If someone is nice then they are quiet
axiom R7 : ∀ x : obj, Nice x → Quiet x

-- Rule R8: If someone is white then they are quiet
axiom R8 : ∀ x : obj, White x → Quiet x


theorem bob_is_white : White Bob :=
begin
  sorry
end


theorem not_white_Bob : ¬ White Bob :=
begin
  sorry
end
