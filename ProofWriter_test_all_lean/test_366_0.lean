universe u

constant obj : Type u

constant Bob : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Rough : obj → Prop
constant Cold : obj → Prop
constant Big : obj → Prop
constant Quiet : obj → Prop
constant White : obj → Prop
constant Smart : obj → Prop
constant Furry : obj → Prop

axiom A1 : Rough Bob
axiom A2 : Cold Fiona
axiom A3 : Rough Fiona
axiom A4 : Big Gary
axiom A5 : Quiet Gary
axiom A6 : Big Harry
axiom A7 : Rough Harry

-- Rule R1: If someone is white and smart then they are furry
axiom R1 : ∀ x : obj, White x ∧ Smart x → Furry x

-- Rule R2: All rough people are big
axiom R2 : ∀ x : obj, Rough x → Big x

-- Rule R3: All furry people are white
axiom R3 : ∀ x : obj, Furry x → White x

-- Rule R4: If someone is quiet and cold then they are white
axiom R4 : ∀ x : obj, Quiet x ∧ Cold x → White x

-- Rule R5: If Harry is big then Harry is cold
axiom R5 : ∀ x : obj, Big Harry → Cold Harry

-- Rule R6: Big, smart people are quiet
axiom R6 : ∀ x : obj, Big x ∧ Smart x → Quiet x

-- Rule R7: If someone is big then they are smart
axiom R7 : ∀ x : obj, Big x → Smart x


theorem gary_is_furry : Furry Gary :=
begin
  sorry
end


theorem not_furry_Gary : ¬ Furry Gary :=
begin
  sorry
end
