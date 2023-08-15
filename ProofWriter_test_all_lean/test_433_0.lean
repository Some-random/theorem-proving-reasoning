universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Squirrel : obj
constant Tiger : obj

constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Cold : obj → Prop
constant Likes : obj → obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop

axiom A1 : Needs BaldEagle Lion
axiom A2 : Visits BaldEagle Lion
axiom A3 : ¬ Cold Lion
axiom A4 : ¬ Likes Lion Tiger
axiom A5 : Visits Lion Tiger
axiom A6 : Kind Squirrel
axiom A7 : Young Squirrel
axiom A8 : Likes Squirrel Tiger
axiom A9 : ¬ Needs Squirrel Lion
axiom A10 : Visits Squirrel BaldEagle
axiom A11 : Cold Tiger
axiom A12 : Visits Tiger BaldEagle

-- Rule R1: If something visits the bald eagle then it is big
axiom R1 : ∀ x : obj, Visits x BaldEagle → Big x

-- Rule R2: If something is big then it needs the squirrel
axiom R2 : ∀ x : obj, Big x → Needs x Squirrel

-- Rule R3: If something visits the squirrel and it visits the lion then it needs the squirrel
axiom R3 : ∀ x : obj, Visits x Squirrel ∧ Visits x Lion → Needs x Squirrel

-- Rule R4: If something needs the squirrel then it is green
axiom R4 : ∀ x : obj, Needs x Squirrel → Green x

-- Rule R5: If something is young then it needs the tiger
axiom R5 : ∀ x : obj, Young x → Needs x Tiger

-- Rule R6: Green things are young
axiom R6 : ∀ x : obj, Green x → Young x

-- Rule R7: If something is big and it visits the lion then the lion needs the squirrel
axiom R7 : ∀ x : obj, Big x ∧ Visits x Lion → Needs Lion Squirrel

-- Rule R8: If the squirrel is big and the squirrel does not like the tiger then the tiger is not big
axiom R8 : Big Squirrel ∧ ¬ Likes Squirrel Tiger → ¬ Big Tiger


theorem not_needs_tiger_tiger : ¬ Needs Tiger Tiger :=
begin
  sorry
end


theorem needs_tiger_tiger : Needs Tiger Tiger :=
begin
  sorry
end
