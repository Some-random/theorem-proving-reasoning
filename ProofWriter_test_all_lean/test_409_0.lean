universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Fiona : obj

constant Cold : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop

axiom A1 : Cold Bob
axiom A2 : Quiet Bob
axiom A3 : Red Bob
axiom A4 : Smart Bob
axiom A5 : Kind Charlie
axiom A6 : Quiet Charlie
axiom A7 : Red Charlie
axiom A8 : Rough Charlie
axiom A9 : Cold Dave
axiom A10 : Kind Dave
axiom A11 : Smart Dave
axiom A12 : Quiet Fiona

-- Rule R1: If something is quiet and cold then it is smart
axiom R1 : ∀ x : obj, Quiet x ∧ Cold x → Smart x

-- Rule R2: Red and cold things are round
axiom R2 : ∀ x : obj, Red x ∧ Cold x → Round x

-- Rule R3: If something is kind and rough then it is red
axiom R3 : ∀ x : obj, Kind x ∧ Rough x → Red x

-- Rule R4: All quiet things are rough
axiom R4 : ∀ x : obj, Quiet x → Rough x

-- Rule R5: Cold and smart things are red
axiom R5 : ∀ x : obj, Cold x ∧ Smart x → Red x

-- Rule R6: If something is rough then it is cold
axiom R6 : ∀ x : obj, Rough x → Cold x

-- Rule R7: All red things are rough
axiom R7 : ∀ x : obj, Red x → Rough x

-- Rule R8: If Dave is smart and kind then Dave is quiet
axiom R8 : ∀ x : obj, Smart Dave ∧ Kind Dave → Quiet Dave


theorem not_smart_Fiona : ¬ Smart Fiona :=
begin
  sorry
end


theorem smart_Fiona : Smart Fiona :=
begin
  sorry
end
