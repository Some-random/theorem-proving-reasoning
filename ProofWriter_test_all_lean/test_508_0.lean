universe u

constant obj : Type u

constant Bear : obj
constant Tiger : obj
constant Dog : obj
constant Mouse : obj

constant Nice : obj → Prop
constant Visits : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop

axiom A1 : Nice Bear
axiom A2 : Visits Bear Tiger
axiom A3 : ¬ Chases Dog Bear
axiom A4 : Sees Dog Mouse
axiom A5 : ¬ Chases Mouse Bear
axiom A6 : Nice Mouse
axiom A7 : Round Mouse
axiom A8 : Young Mouse
axiom A9 : Visits Mouse Bear
axiom A10 : Chases Tiger Bear
axiom A11 : Sees Tiger Mouse

-- Rule R1: If someone chases the mouse and they see the tiger then the tiger is round
axiom R1 : ∀ x : obj, Chases x Mouse ∧ Sees x Tiger → Round Tiger

-- Rule R2: If the dog sees the mouse then the dog visits the tiger
axiom R2 : ∀ x : obj, Sees Dog Mouse → Visits Dog Tiger

-- Rule R3: If someone chases the mouse then they see the bear
axiom R3 : ∀ x : obj, Chases x Mouse → Sees x Bear

-- Rule R4: If someone is nice and cold then they chase the mouse
axiom R4 : ∀ x : obj, Nice x ∧ Cold x → Chases x Mouse

-- Rule R5: If someone visits the mouse and they see the mouse then the mouse visits the dog
axiom R5 : ∀ x : obj, Visits x Mouse ∧ Sees x Mouse → Visits Mouse Dog

-- Rule R6: If the mouse visits the dog then the dog does not visit the bear
axiom R6 : ∀ x : obj, Visits Mouse Dog → ¬ Visits Dog Bear

-- Rule R7: If someone sees the bear then they visit the dog
axiom R7 : ∀ x : obj, Sees x Bear → Visits x Dog

-- Rule R8: All nice people are cold
axiom R8 : ∀ x : obj, Nice x → Cold x


theorem not_chase_mouse_mouse : ¬ Chases Mouse Mouse :=
begin
  sorry
end


theorem chase_mouse_mouse : Chases Mouse Mouse :=
begin
  sorry
end
