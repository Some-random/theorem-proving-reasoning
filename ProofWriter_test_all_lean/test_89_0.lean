universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Smart : obj → Prop

axiom A1 : Big Charlie
axiom A2 : Cold Charlie
axiom A3 : Kind Charlie
axiom A4 : Quiet Charlie
axiom A5 : Red Charlie
axiom A6 : Rough Charlie
axiom A7 : Smart Charlie
axiom A8 : Kind Erin
axiom A9 : Quiet Fiona
axiom A10 : Rough Fiona
axiom A11 : Kind Harry
axiom A12 : Rough Harry

-- Rule R1: Kind things are big
axiom R1 : ∀ x : obj, Kind x → Big x

-- Rule R2: All kind, smart things are rough
axiom R2 : ∀ x : obj, Kind x ∧ Smart x → Rough x

-- Rule R3: If something is red and quiet then it is big
axiom R3 : ∀ x : obj, Red x ∧ Quiet x → Big x

-- Rule R4: All red things are cold
axiom R4 : ∀ x : obj, Red x → Cold x

-- Rule R5: All cold, quiet things are smart
axiom R5 : ∀ x : obj, Cold x ∧ Quiet x → Smart x

-- Rule R6: If something is big and smart then it is cold
axiom R6 : ∀ x : obj, Big x ∧ Smart x → Cold x

-- Rule R7: All quiet things are cold
axiom R7 : ∀ x : obj, Quiet x → Cold x

-- Rule R8: Kind, big things are red
axiom R8 : ∀ x : obj, Kind x ∧ Big x → Red x

-- Rule R9: All cold, smart things are kind
axiom R9 : ∀ x : obj, Cold x ∧ Smart x → Kind x


theorem fiona_is_smart : Smart Fiona :=
begin
  sorry
end


theorem not_smart_Fiona : ¬ Smart Fiona :=
begin
  sorry
end
