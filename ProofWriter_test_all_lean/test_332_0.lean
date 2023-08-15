universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Mouse : obj
constant Rabbit : obj

constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant Likes : obj → obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop

axiom A1 : Needs BaldEagle Cow
axiom A2 : Needs BaldEagle Mouse
axiom A3 : Round Cow
axiom A4 : ¬ Visits Mouse Rabbit
axiom A5 : Green Rabbit
axiom A6 : Needs Rabbit BaldEagle
axiom A7 : Visits Rabbit BaldEagle

-- If someone visits the mouse then they like the cow
axiom R1 : ∀ x : obj, Visits x Mouse → Likes x Cow
-- If someone likes the mouse and they are blue then the mouse needs the rabbit
axiom R2 : ∀ x : obj, Likes x Mouse ∧ Blue x → Needs Mouse Rabbit
-- If someone needs the bald eagle then the bald eagle likes the rabbit
axiom R3 : ∀ x : obj, Needs x BaldEagle → Likes BaldEagle Rabbit
-- If someone needs the bald eagle then the bald eagle likes the mouse
axiom R4 : ∀ x : obj, Needs x BaldEagle → Likes BaldEagle Mouse
-- If someone likes the cow then they are blue
axiom R5 : ∀ x : obj, Likes x Cow → Blue x
-- If someone is red and they visit the cow then the cow is green
axiom R6 : ∀ x : obj, Red x ∧ Visits x Cow → Green Cow
-- If someone visits the mouse then they do not visit the bald eagle
axiom R7 : ∀ x : obj, Visits x Mouse → ¬ Visits x BaldEagle
-- If someone is round and they need the bald eagle then the bald eagle is round
axiom R8 : ∀ x : obj, Round x ∧ Needs x BaldEagle → Round BaldEagle
-- If someone visits the bald eagle and the bald eagle likes the rabbit then the bald eagle visits the mouse
axiom R9 : ∀ x : obj, Visits x BaldEagle ∧ Likes BaldEagle Rabbit → Visits BaldEagle Mouse


theorem mouse_needs_rabbit : Needs Mouse Rabbit :=
begin
  sorry
end


theorem not_mouse_needs_rabbit : ¬ Needs Mouse Rabbit :=
begin
  sorry
end
