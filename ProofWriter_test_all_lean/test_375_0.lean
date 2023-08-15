universe u

constant obj : Type u

constant BaldEagle : obj
constant Mouse : obj
constant Lion : obj
constant Cat : obj

constant Eats : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop

axiom A1 : Eats BaldEagle Mouse
axiom A2 : Likes BaldEagle Lion
axiom A3 : ¬ Sees BaldEagle Lion
axiom A4 : ¬ Cold Cat
axiom A5 : ¬ Likes Cat Lion
axiom A6 : Sees Cat Lion
axiom A7 : ¬ Sees Cat Mouse
axiom A8 : Likes Lion Cat
axiom A9 : Eats Mouse BaldEagle
axiom A10 : Kind Mouse
axiom A11 : Sees Mouse BaldEagle

-- If something is red and not cold then it does not eat the cat
axiom R1 : ∀ x : obj, Red x ∧ ¬ Cold x → ¬ Eats x Cat
-- If something is kind then it sees the mouse
axiom R2 : ∀ x : obj, Kind x → Sees x Mouse
-- If something likes the bald eagle then the bald eagle is rough
axiom R3 : ∀ x : obj, Likes x BaldEagle → Rough BaldEagle
-- If something is rough then it likes the bald eagle
axiom R4 : ∀ x : obj, Rough x → Likes x BaldEagle
-- If something sees the bald eagle then it is rough
axiom R5 : ∀ x : obj, Sees x BaldEagle → Rough x
-- If the cat is kind and the cat likes the mouse then the cat does not see the lion
axiom R6 : Kind Cat ∧ Likes Cat Mouse → ¬ Sees Cat Lion
-- If something likes the bald eagle then it eats the lion
axiom R7 : ∀ x : obj, Likes x BaldEagle → Eats x Lion
-- If something likes the mouse and the mouse does not eat the cat then the cat does not see the mouse
axiom R8 : ∀ x : obj, Likes x Mouse ∧ ¬ Eats Mouse Cat → ¬ Sees Cat Mouse


theorem bald_eagle_eats_lion : Eats BaldEagle Lion :=
begin
  sorry
end


theorem not_bald_eagle_eats_lion : ¬ Eats BaldEagle Lion :=
begin
  sorry
end
