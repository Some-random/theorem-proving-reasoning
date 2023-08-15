universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Cow : obj
constant Squirrel : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Chases : obj → obj → Prop

axiom A1 : Big BaldEagle
axiom A2 : Cold BaldEagle
axiom A3 : Young BaldEagle
axiom A4 : ¬ Kind Cat
axiom A5 : Red Cow
axiom A6 : Likes Cow BaldEagle
axiom A7 : Visits Squirrel BaldEagle

-- If something likes the cow then the cow likes the squirrel
axiom R1 : ∀ x : obj, Likes x Cow → Likes Cow Squirrel
-- All big things are cold
axiom R2 : ∀ x : obj, Big x → Cold x
-- If the squirrel is red then the squirrel is young
axiom R3 : ∀ x : obj, Red Squirrel → Young Squirrel
-- If something likes the squirrel then the squirrel is red
axiom R4 : ∀ x : obj, Likes x Squirrel → Red Squirrel
-- If something is young then it likes the cow
axiom R5 : ∀ x : obj, Young x → Likes x Cow
-- If the squirrel likes the cat and the cow does not chase the squirrel then the cat likes the cow
axiom R6 : ∀ x : obj, Likes Squirrel Cat ∧ ¬ Chases Cow Squirrel → Likes Cat Cow
-- If something visits the squirrel and the squirrel is big then it does not like the squirrel
axiom R7 : ∀ x : obj, Visits x Squirrel ∧ Big Squirrel → ¬ Likes x Squirrel
-- If something is big then it visits the cow
axiom R8 : ∀ x : obj, Big x → Visits x Cow
-- If something visits the squirrel and it is not red then the squirrel does not visit the bald eagle
axiom R9 : ∀ x : obj, Visits x Squirrel ∧ ¬ Red x → ¬ Visits Squirrel BaldEagle


theorem not_red_cow : ¬ Red Cow :=
begin
  sorry
end


theorem red_cow : Red Cow :=
begin
  sorry
end
