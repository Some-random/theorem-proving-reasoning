universe u

constant obj : Type u

constant Dog : obj
constant Lion : obj
constant Mouse : obj
constant Tiger : obj

constant Round : obj → Prop
constant Needs : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop

axiom A1 : Round Dog
axiom A2 : Needs Dog Tiger
axiom A3 : Chases Lion Dog
axiom A4 : Chases Lion Mouse
axiom A5 : Needs Lion Dog
axiom A6 : Sees Lion Dog
axiom A7 : Red Mouse
axiom A8 : Sees Mouse Tiger
axiom A9 : Blue Tiger
axiom A10 : Red Tiger
axiom A11 : Round Tiger
axiom A12 : Sees Tiger Lion

-- Rule R1: If something chases the mouse and it is round then the mouse is kind
axiom R1 : ∀ x : obj, Chases x Mouse ∧ Round x → Kind Mouse

-- Rule R2: If the mouse sees the tiger and the tiger is red then the tiger is kind
axiom R2 : ∀ x : obj, Sees Mouse Tiger ∧ Red Tiger → Kind Tiger

-- Rule R3: If something chases the mouse then it sees the mouse
axiom R3 : ∀ x : obj, Chases x Mouse → Sees x Mouse

-- Rule R4: If something chases the lion and the lion sees the tiger then the tiger chases the lion
axiom R4 : ∀ x : obj, Chases x Lion ∧ Sees Lion Tiger → Chases Tiger Lion

-- Rule R5: If something is round then it needs the tiger
axiom R5 : ∀ x : obj, Round x → Needs x Tiger

-- Rule R6: If something chases the dog then it is round
axiom R6 : ∀ x : obj, Chases x Dog → Round x

-- Rule R7: If something is round then it sees the lion
axiom R7 : ∀ x : obj, Round x → Sees x Lion

-- Rule R8: If something is kind then it chases the dog
axiom R8 : ∀ x : obj, Kind x → Chases x Dog

-- Rule R9: If something needs the lion then it is round
axiom R9 : ∀ x : obj, Needs x Lion → Round x


theorem not_sees_mouse_lion : ¬ Sees Mouse Lion :=
begin
  sorry
end


theorem sees_mouse_lion : Sees Mouse Lion :=
begin
  sorry
end
