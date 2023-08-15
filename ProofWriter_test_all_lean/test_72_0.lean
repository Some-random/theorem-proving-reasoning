universe u

constant obj : Type u

constant BaldEagle : obj
constant Mouse : obj
constant Cow : obj
constant Dog : obj

constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Eats : obj → obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop

axiom A1 : Needs BaldEagle Mouse
axiom A2 : Sees BaldEagle Mouse
axiom A3 : Red Cow
axiom A4 : Rough Cow
axiom A5 : Sees Cow BaldEagle
axiom A6 : Sees Cow Mouse
axiom A7 : Eats Dog BaldEagle
axiom A8 : Cold Dog
axiom A9 : Rough Dog
axiom A10 : Needs Dog BaldEagle
axiom A11 : Eats Mouse BaldEagle
axiom A12 : Eats Mouse Dog
axiom A13 : Red Mouse
axiom A14 : Rough Mouse
axiom A15 : Young Mouse
axiom A16 : Sees Mouse Cow

-- Rule R1: If something is young then it needs the dog
axiom R1 : ∀ x : obj, Young x → Needs x Dog

-- Rule R2: If something eats the cow then the cow is kind
axiom R2 : ∀ x : obj, Eats x Cow → Kind Cow

-- Rule R3: If something is young then it sees the bald eagle
axiom R3 : ∀ x : obj, Young x → Sees x BaldEagle

-- Rule R4: If something is cold and it needs the dog then it eats the mouse
axiom R4 : ∀ x : obj, Cold x ∧ Needs x Dog → Eats x Mouse

-- Rule R5: If something needs the bald eagle and it is red then it is young
axiom R5 : ∀ x : obj, Needs x BaldEagle ∧ Red x → Young x

-- Rule R6: If something eats the mouse then it needs the mouse
axiom R6 : ∀ x : obj, Eats x Mouse → Needs x Mouse

-- Rule R7: If something eats the bald eagle then it is red
axiom R7 : ∀ x : obj, Eats x BaldEagle → Red x


theorem not_needs_dog_dog : ¬ Needs Dog Dog :=
begin
  sorry
end


theorem needs_dog_dog : Needs Dog Dog :=
begin
  sorry
end
