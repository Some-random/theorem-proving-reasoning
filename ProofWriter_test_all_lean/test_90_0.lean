universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Fiona : obj
constant Harry : obj

constant Kind : obj → Prop
constant Smart : obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop

axiom A1 : ¬ Kind Bob
axiom A2 : Smart Bob
axiom A3 : ¬ Blue Dave
axiom A4 : Cold Dave
axiom A5 : Kind Dave
axiom A6 : ¬ Red Dave
axiom A7 : Smart Dave
axiom A8 : White Dave
axiom A9 : Kind Fiona
axiom A10 : Smart Fiona
axiom A11 : White Fiona
axiom A12 : Red Harry

-- Rule R1: If someone is red then they are kind
axiom R1 : ∀ x : obj, Red x → Kind x

-- Rule R2: If Harry is kind then Harry is blue
axiom R2 : Kind Harry → Blue Harry

-- Rule R3: If Harry is kind and Harry is not red then Harry is not blue
axiom R3 : Kind Harry ∧ ¬ Red Harry → ¬ Blue Harry

-- Rule R4: If Fiona is not kind then Fiona is blue
axiom R4 : ¬ Kind Fiona → Blue Fiona

-- Rule R5: All young people are smart
axiom R5 : ∀ x : obj, Young x → Smart x

-- Rule R6: All red, blue people are smart
axiom R6 : ∀ x : obj, Red x ∧ Blue x → Smart x

-- Rule R7: If Harry is young and Harry is smart then Harry is white
axiom R7 : Young Harry ∧ Smart Harry → White Harry

-- Rule R8: If someone is smart and blue then they are young
axiom R8 : ∀ x : obj, Smart x ∧ Blue x → Young x

-- Rule R9: If someone is blue and not red then they are young
axiom R9 : ∀ x : obj, Blue x ∧ ¬ Red x → Young x



theorem not_kind_Harry : ¬ Kind Harry :=
begin
  sorry
end


theorem kind_Harry : Kind Harry :=
begin
  sorry
end
