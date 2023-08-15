universe u

constant obj : Type u

constant BaldEagle : obj
constant Mouse : obj
constant Dog : obj
constant Squirrel : obj

constant Chases : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Red : obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop

axiom A1 : ¬ Chases BaldEagle Mouse
axiom A2 : Chases BaldEagle Squirrel
axiom A3 : Needs BaldEagle Mouse
axiom A4 : ¬ Sees BaldEagle Dog
axiom A5 : Sees BaldEagle Squirrel
axiom A6 : ¬ Red Dog
axiom A7 : Needs Dog Squirrel
axiom A8 : ¬ Chases Mouse Squirrel
axiom A9 : Red Mouse
axiom A10 : Needs Mouse Dog
axiom A11 : ¬ Needs Mouse Squirrel
axiom A12 : Sees Mouse BaldEagle
axiom A13 : Sees Mouse Dog
axiom A14 : Cold Squirrel
axiom A15 : Red Squirrel
axiom A16 : Round Squirrel

-- Rule R1: If something is round and red then it chases the dog
axiom R1 : ∀ x : obj, Round x ∧ Red x → Chases x Dog

-- Rule R2: If something chases the bald eagle then it sees the mouse
axiom R2 : ∀ x : obj, Chases x BaldEagle → Sees x Mouse

-- Rule R3: If something needs the mouse and the mouse needs the bald eagle then it does not see the squirrel
axiom R3 : ∀ x : obj, Needs x Mouse ∧ Needs Mouse BaldEagle → ¬ Sees x Squirrel

-- Rule R4: If something needs the mouse then the mouse does not see the squirrel
axiom R4 : ∀ x : obj, Needs x Mouse → ¬ Sees Mouse Squirrel

-- Rule R5: If something is blue and it needs the dog then it is cold
axiom R5 : ∀ x : obj, Blue x ∧ Needs x Dog → Cold x

-- Rule R6: If something chases the dog then it chases the bald eagle
axiom R6 : ∀ x : obj, Chases x Dog → Chases x BaldEagle

-- Rule R7: If the bald eagle chases the squirrel and the bald eagle sees the squirrel then the squirrel is red
axiom R7 : ∀ x : obj, Chases BaldEagle Squirrel ∧ Sees BaldEagle Squirrel → Red Squirrel

-- Rule R8: If something sees the mouse and the mouse needs the dog then the dog chases the bald eagle
axiom R8 : ∀ x : obj, Sees x Mouse ∧ Needs Mouse Dog → Chases Dog BaldEagle

-- Rule R9: If something sees the squirrel and the squirrel is cold then it is blue
axiom R9 : ∀ x : obj, Sees x Squirrel ∧ Cold Squirrel → Blue x


theorem squirrel_chases_bald_eagle : Chases Squirrel BaldEagle :=
begin
  sorry
end


theorem not_squirrel_chases_bald_eagle : ¬ Chases Squirrel BaldEagle :=
begin
  sorry
end
