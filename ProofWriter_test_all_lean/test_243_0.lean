universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Tiger : obj
constant Bear : obj

constant Chases : obj → obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Red : obj → Prop
constant Sees : obj → obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop
constant Eats : obj → obj → Prop

axiom A1 : Chases BaldEagle Cow
axiom A2 : ¬ Kind BaldEagle
axiom A3 : Round BaldEagle
axiom A4 : Chases Bear Tiger
axiom A5 : Red Cow
axiom A6 : Round Cow
axiom A7 : Sees Tiger Cow

-- Rule R1: If someone is young and they see the bald eagle then they see the bear
axiom R1 : ∀ x : obj, Young x ∧ Sees x BaldEagle → Sees x Bear

-- Rule R2: If someone chases the bear then the bear is young
axiom R2 : ∀ x : obj, Chases x Bear → Young Bear

-- Rule R3: If someone chases the tiger then they are rough
axiom R3 : ∀ x : obj, Chases x Tiger → Rough x

-- Rule R4: If someone chases the tiger then the tiger eats the bear
axiom R4 : ∀ x : obj, Chases x Tiger → Eats Tiger Bear

-- Rule R5: If the tiger is round and the tiger is kind then the tiger chases the bear
axiom R5 : Round Tiger ∧ Kind Tiger → Chases Tiger Bear

-- Rule R6: If someone is young then they see the bald eagle
axiom R6 : ∀ x : obj, Young x → Sees x BaldEagle

-- Rule R7: If someone chases the cow then they chase the bear
axiom R7 : ∀ x : obj, Chases x Cow → Chases x Bear

-- Rule R8: If someone sees the bear then the bear chases the cow
axiom R8 : ∀ x : obj, Sees x Bear → Chases Bear Cow


theorem bear_sees_bald_eagle : Sees Bear BaldEagle :=
begin
  sorry
end


theorem not_bear_sees_bald_eagle : ¬ Sees Bear BaldEagle :=
begin
  sorry
end
