universe u

constant obj : Type u

constant BaldEagle : obj
constant Mouse : obj
constant Squirrel : obj
constant Tiger : obj

constant Nice : obj → Prop
constant Rough : obj → Prop
constant Needs : obj → obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Blue : obj → Prop

axiom A1 : Nice BaldEagle
axiom A2 : Rough BaldEagle
axiom A3 : Needs BaldEagle Mouse
axiom A4 : Needs BaldEagle Squirrel
axiom A5 : Kind Mouse
axiom A6 : Young Mouse
axiom A7 : Likes Mouse Tiger
axiom A8 : Sees Mouse BaldEagle
axiom A9 : Kind Squirrel
axiom A10 : Nice Squirrel
axiom A11 : Needs Squirrel BaldEagle
axiom A12 : Kind Tiger

-- Rule R1: If someone likes the bald eagle then they are rough
axiom R1 : ∀ x : obj, Likes x BaldEagle → Rough x

-- Rule R2: If someone is blue and they see the tiger then the tiger needs the squirrel
axiom R2 : ∀ x : obj, Blue x ∧ Sees x Tiger → Needs Tiger Squirrel

-- Rule R3: If the mouse needs the bald eagle and the bald eagle likes the mouse then the bald eagle is rough
axiom R3 : Needs Mouse BaldEagle ∧ Likes BaldEagle Mouse → Rough BaldEagle

-- Rule R4: If the mouse needs the squirrel then the squirrel likes the mouse
axiom R4 : Needs Mouse Squirrel → Likes Squirrel Mouse

-- Rule R5: If someone is rough then they see the mouse
axiom R5 : ∀ x : obj, Rough x → Sees x Mouse

-- Rule R6: If someone needs the tiger and the tiger is kind then they like the bald eagle
axiom R6 : ∀ x : obj, Needs x Tiger ∧ Kind Tiger → Likes x BaldEagle

-- Rule R7: If someone sees the mouse then they need the squirrel
axiom R7 : ∀ x : obj, Sees x Mouse → Needs x Squirrel

-- Rule R8: If someone needs the squirrel and the squirrel is nice then the squirrel needs the tiger
axiom R8 : ∀ x : obj, Needs x Squirrel ∧ Nice Squirrel → Needs Squirrel Tiger


theorem bald_eagle_needs_mouse : Needs BaldEagle Mouse :=
begin
  sorry
end


theorem not_bald_eagle_needs_mouse : ¬ Needs BaldEagle Mouse :=
begin
  sorry
end
