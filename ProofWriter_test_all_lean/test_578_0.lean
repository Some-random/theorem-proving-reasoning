universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Kind : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop
constant Red : obj → Prop
constant Furry : obj → Prop
constant Cold : obj → Prop

axiom A1 : Kind Anne
axiom A2 : ¬ Big Charlie
axiom A3 : Green Charlie
axiom A4 : Green Erin
axiom A5 : ¬ Kind Erin
axiom A6 : Big Harry
axiom A7 : Green Harry

-- Rule R1: All big, green things are young
axiom R1 : ∀ x : obj, Big x ∧ Green x → Young x

-- Rule R2: Big things are young
axiom R2 : ∀ x : obj, Big x → Young x

-- Rule R3: All red things are green
axiom R3 : ∀ x : obj, Red x → Green x

-- Rule R4: If something is kind then it is not red
axiom R4 : ∀ x : obj, Kind x → ¬ Red x

-- Rule R5: All furry things are kind
axiom R5 : ∀ x : obj, Furry x → Kind x

-- Rule R6: If Harry is young then Harry is cold
axiom R6 : Young Harry → Cold Harry

-- Rule R7: If something is young and cold then it is furry
axiom R7 : ∀ x : obj, Young x ∧ Cold x → Furry x


theorem harry_is_red : Red Harry :=
begin
  sorry
end


theorem not_red_Harry : ¬ Red Harry :=
begin
  sorry
end
