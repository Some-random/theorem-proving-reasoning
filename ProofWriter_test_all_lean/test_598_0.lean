universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Fiona : obj
constant Gary : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Kind : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Red : obj → Prop

axiom A1 : Big Bob
axiom A2 : Furry Charlie
axiom A3 : Kind Charlie
axiom A4 : Smart Charlie
axiom A5 : Furry Fiona
axiom A6 : Young Fiona
axiom A7 : Smart Gary

-- Rule R1: Big and smart things are kind
axiom R1 : ∀ x : obj, Big x ∧ Smart x → Kind x

-- Rule R2: If something is red and not smart then it is kind
axiom R2 : ∀ x : obj, Red x ∧ ¬ Smart x → Kind x

-- Rule R3: Smart things are furry
axiom R3 : ∀ x : obj, Smart x → Furry x

-- Rule R4: If something is red and big then it is furry
axiom R4 : ∀ x : obj, Red x ∧ Big x → Furry x

-- Rule R5: If Charlie is red then Charlie is kind
axiom R5 : Red Charlie → Kind Charlie

-- Rule R6: If something is kind then it is young
axiom R6 : ∀ x : obj, Kind x → Young x

-- Rule R7: Young things are not red
axiom R7 : ∀ x : obj, Young x → ¬ Red x

-- Rule R8: If something is furry and smart then it is big
axiom R8 : ∀ x : obj, Furry x ∧ Smart x → Big x


theorem not_smart_Fiona : ¬ Smart Fiona :=
begin
  sorry
end


theorem smart_Fiona : Smart Fiona :=
begin
  sorry
end
