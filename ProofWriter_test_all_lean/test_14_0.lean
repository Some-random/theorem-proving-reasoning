universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Dog : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop

axiom A1 : Eats BaldEagle Cow
axiom A2 : Young BaldEagle
axiom A3 : Nice Cow
axiom A4 : Sees Cow BaldEagle
axiom A5 : Eats Dog BaldEagle
axiom A6 : Eats Tiger Cow
axiom A7 : Needs Tiger BaldEagle

-- Rule R1: If something is green and it eats the cow then it does not see the bald eagle
axiom R1 : ∀ x : obj, Green x ∧ Eats x Cow → ¬ Sees x BaldEagle

-- Rule R2: If something eats the tiger then the tiger is young
axiom R2 : ∀ x : obj, Eats x Tiger → Young Tiger

-- Rule R3: If something is red then it eats the tiger
axiom R3 : ∀ x : obj, Red x → Eats x Tiger

-- Rule R4: If something sees the bald eagle then it eats the cow
axiom R4 : ∀ x : obj, Sees x BaldEagle → Eats x Cow

-- Rule R5: If something is green and it needs the dog then it needs the bald eagle
axiom R5 : ∀ x : obj, Green x ∧ Needs x Dog → Needs x BaldEagle

-- Rule R6: If something sees the tiger then it needs the bald eagle
axiom R6 : ∀ x : obj, Sees x Tiger → Needs x BaldEagle

-- Rule R7: If something is red then it eats the bald eagle
axiom R7 : ∀ x : obj, Red x → Eats x BaldEagle

-- Rule R8: If something is young then it is red
axiom R8 : ∀ x : obj, Young x → Red x

-- Rule R9: If something eats the dog and it is red then the dog is young
axiom R9 : ∀ x : obj, Eats x Dog ∧ Red x → Young Dog


theorem tiger_is_young : Young Tiger :=
begin
  sorry
end


theorem not_young_Tiger : ¬ Young Tiger :=
begin
  sorry
end
