universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Smart : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop

axiom A1 : Big Anne
axiom A2 : Smart Anne
axiom A3 : Cold Bob
axiom A4 : Big Gary
axiom A5 : Furry Gary
axiom A6 : ¬ Cold Harry
axiom A7 : Green Harry

-- Rule R1: All young people are cold
axiom R1 : ∀ x : obj, Young x → Cold x

-- Rule R2: If someone is smart then they are young
axiom R2 : ∀ x : obj, Smart x → Young x

-- Rule R3: If someone is furry then they are green
axiom R3 : ∀ x : obj, Furry x → Green x

-- Rule R4: Green people are white
axiom R4 : ∀ x : obj, Green x → White x

-- Rule R5: If someone is green and cold then they are white
axiom R5 : ∀ x : obj, Green x ∧ Cold x → White x

-- Rule R6: If Harry is green and Harry is young then Harry is furry
axiom R6 : Green Harry ∧ Young Harry → Furry Harry

-- Rule R7: Green people are furry
axiom R7 : ∀ x : obj, Green x → Furry x

-- Rule R8: All cold people are furry
axiom R8 : ∀ x : obj, Cold x → Furry x

-- Rule R9: If Gary is green then Gary is furry
axiom R9 : Green Gary → Furry Gary


theorem bob_is_green : Green Bob :=
begin
  sorry
end


theorem not_green_Bob : ¬ Green Bob :=
begin
  sorry
end
