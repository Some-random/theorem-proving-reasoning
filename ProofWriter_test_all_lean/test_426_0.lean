universe u

constant obj : Type u

constant BaldEagle : obj
constant Dog : obj
constant Lion : obj
constant Mouse : obj

constant Kind : obj → Prop
constant Red : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Rough : obj → Prop

axiom A1 : Kind BaldEagle
axiom A2 : ¬ Red BaldEagle
axiom A3 : Likes BaldEagle Dog
axiom A4 : Needs Dog Lion
axiom A5 : ¬ Needs Lion BaldEagle
axiom A6 : Likes Mouse Dog
axiom A7 : ¬ Sees Mouse Dog

-- Rule R1: If someone needs the mouse then the mouse does not see the bald eagle
axiom R1 : ∀ x : obj, Needs x Mouse → ¬ Sees Mouse BaldEagle

-- Rule R2: If someone needs the dog then the dog needs the lion
axiom R2 : ∀ x : obj, Needs x Dog → Needs Dog Lion

-- Rule R3: If someone is rough then they see the mouse
axiom R3 : ∀ x : obj, Rough x → Sees x Mouse

-- Rule R4: If someone sees the mouse then the mouse is kind
axiom R4 : ∀ x : obj, Sees x Mouse → Kind Mouse

-- Rule R5: If someone needs the lion then they do not see the bald eagle
axiom R5 : ∀ x : obj, Needs x Lion → ¬ Sees x BaldEagle

-- Rule R6: If someone sees the dog then they need the mouse
axiom R6 : ∀ x : obj, Sees x Dog → Needs x Mouse

-- Rule R7: All kind people are rough
axiom R7 : ∀ x : obj, Kind x → Rough x

-- Rule R8: If someone sees the mouse then they like the lion
axiom R8 : ∀ x : obj, Sees x Mouse → Likes x Lion


theorem mouse_is_rough : Rough Mouse :=
begin
  sorry
end


theorem not_rough_Mouse : ¬ Rough Mouse :=
begin
  sorry
end
