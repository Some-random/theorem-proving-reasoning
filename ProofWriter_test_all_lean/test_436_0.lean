universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Cow : obj
constant Dog : obj

constant Green : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Cold : obj → Prop
constant Eats : obj → obj → Prop
constant Young : obj → Prop

axiom A1 : ¬ Green BaldEagle
axiom A2 : Likes BaldEagle Cow
axiom A3 : Needs BaldEagle Cat
axiom A4 : Cold Cat
axiom A5 : Likes Cat Cow
axiom A6 : Needs Cat BaldEagle
axiom A7 : Eats Cow Cat
axiom A8 : ¬ Eats Dog Cow
axiom A9 : Green Dog
axiom A10 : Likes Dog Cow
axiom A11 : Needs Dog BaldEagle

-- Rule R1: All cold things are green
axiom R1 : ∀ x : obj, Cold x → Green x

-- Rule R2: If something is cold then it needs the cow
axiom R2 : ∀ x : obj, Cold x → Needs x Cow

-- Rule R3: If something is young then it needs the bald eagle
axiom R3 : ∀ x : obj, Young x → Needs x BaldEagle

-- Rule R4: If something is young and cold then it eats the dog
axiom R4 : ∀ x : obj, Young x ∧ Cold x → Eats x Dog

-- Rule R5: If the bald eagle does not need the cat then the bald eagle likes the dog
axiom R5 : ∀ x : obj, ¬ Needs BaldEagle Cat → Likes BaldEagle Dog

-- Rule R6: If something eats the dog then the dog is cold
axiom R6 : ∀ x : obj, Eats x Dog → Cold Dog

-- Rule R7: If something is cold then it is young
axiom R7 : ∀ x : obj, Cold x → Young x



theorem not_dog_eats_dog : ¬ Eats Dog Dog :=
begin
  sorry
end


theorem dog_eats_dog : Eats Dog Dog :=
begin
  sorry
end
