universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Tiger : obj
constant Bear : obj

constant Green : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop
constant Nice : obj → Prop

axiom A1 : Green BaldEagle
axiom A2 : Likes BaldEagle Squirrel
axiom A3 : Likes BaldEagle Tiger
axiom A4 : Nice Bear
axiom A5 : Round Bear
axiom A6 : Likes Bear BaldEagle
axiom A7 : Likes Bear Tiger
axiom A8 : Young Squirrel
axiom A9 : Likes Squirrel Bear
axiom A10 : Needs Squirrel BaldEagle
axiom A11 : Sees Squirrel Tiger
axiom A12 : Cold Tiger
axiom A13 : Likes Tiger Bear
axiom A14 : Likes Tiger Squirrel
axiom A15 : Needs Tiger Bear
axiom A16 : Sees Tiger Bear

-- If something needs the bald eagle and the bald eagle likes the bear then the bald eagle needs the tiger
axiom R1 : ∀ x : obj, Needs x BaldEagle ∧ Likes BaldEagle Bear → Needs BaldEagle Tiger
-- If something needs the squirrel then it needs the tiger
axiom R2 : ∀ x : obj, Needs x Squirrel → Needs x Tiger
-- If something is green then it needs the squirrel
axiom R3 : ∀ x : obj, Green x → Needs x Squirrel
-- If something needs the bear and it needs the bald eagle then the bear likes the bald eagle
axiom R4 : ∀ x : obj, Needs x Bear ∧ Needs x BaldEagle → Likes Bear BaldEagle
-- If something likes the bald eagle then it is young
axiom R5 : ∀ x : obj, Likes x BaldEagle → Young x
-- If something likes the bear and it sees the bald eagle then it needs the bear
axiom R6 : ∀ x : obj, Likes x Bear ∧ Sees x BaldEagle → Needs x Bear
-- Round things are green
axiom R7 : ∀ x : obj, Round x → Green x
-- If something sees the squirrel and the squirrel likes the bear then it is cold
axiom R8 : ∀ x : obj, Sees x Squirrel ∧ Likes Squirrel Bear → Cold x
-- If something needs the bear and the bear is green then it is round
axiom R9 : ∀ x : obj, Needs x Bear ∧ Green Bear → Round x


theorem not_young_tiger : ¬ Young Tiger :=
begin
  sorry
end


theorem young_tiger : Young Tiger :=
begin
  sorry
end
