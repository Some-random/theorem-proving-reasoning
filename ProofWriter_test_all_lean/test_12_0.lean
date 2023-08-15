universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Cow : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Blue : obj → Prop
constant Likes : obj → obj → Prop
constant Green : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Sees : obj → obj → Prop

axiom A1 : Chases BaldEagle Squirrel
axiom A2 : Blue BaldEagle
axiom A3 : Likes BaldEagle Cow
axiom A4 : Likes BaldEagle Lion
axiom A5 : Chases Cow Lion
axiom A6 : Green Cow
axiom A7 : Likes Cow BaldEagle
axiom A8 : Likes Cow Lion
axiom A9 : Likes Lion Cow
axiom A10 : Chases Squirrel BaldEagle
axiom A11 : Big Squirrel
axiom A12 : Green Squirrel
axiom A13 : Red Squirrel
axiom A14 : Sees Squirrel BaldEagle

-- Rule R1: If someone is red and they chase the bald eagle then the bald eagle is green
axiom R1 : ∀ x : obj, Red x ∧ Chases x BaldEagle → Green BaldEagle

-- Rule R2: If someone likes the bald eagle then they like the lion
axiom R2 : ∀ x : obj, Likes x BaldEagle → Likes x Lion

-- Rule R3: If someone is green then they see the lion
axiom R3 : ∀ x : obj, Green x → Sees x Lion

-- Rule R4: If the cow is blue then the cow likes the squirrel
axiom R4 : ∀ x : obj, Blue Cow → Likes Cow Squirrel

-- Rule R5: If the bald eagle sees the lion then the lion sees the squirrel
axiom R5 : ∀ x : obj, Sees BaldEagle Lion → Sees Lion Squirrel

-- Rule R6: If someone sees the squirrel then they are green
axiom R6 : ∀ x : obj, Sees x Squirrel → Green x

-- Rule R7: If someone likes the bald eagle then the bald eagle is blue
axiom R7 : ∀ x : obj, Likes x BaldEagle → Blue BaldEagle



theorem bald_eagle_chases_lion : Chases BaldEagle Lion :=
begin
  sorry
end


theorem not_bald_eagle_chases_lion : ¬ Chases BaldEagle Lion :=
begin
  sorry
end
