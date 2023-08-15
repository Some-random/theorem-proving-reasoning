universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Mouse : obj
constant Squirrel : obj

constant Eats : obj → obj → Prop
constant Rough : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop

axiom A1 : ¬ Eats BaldEagle Lion
axiom A2 : ¬ Eats BaldEagle Squirrel
axiom A3 : Rough BaldEagle
axiom A4 : Eats Lion BaldEagle
axiom A5 : Eats Lion Squirrel
axiom A6 : Likes Lion Mouse
axiom A7 : Needs Lion Squirrel
axiom A8 : Likes Mouse Squirrel
axiom A9 : Needs Mouse Lion
axiom A10 : Eats Squirrel Lion
axiom A11 : Rough Squirrel

-- Rule R1: If someone is nice then they like the mouse
axiom R1 : ∀ x : obj, Nice x → Likes x Mouse

-- Rule R2: If the squirrel needs the lion and the squirrel is nice then the squirrel does not eat the mouse
axiom R2 : Needs Squirrel Lion ∧ Nice Squirrel → ¬ Eats Squirrel Mouse

-- Rule R3: If the squirrel likes the mouse then the squirrel needs the bald eagle
axiom R3 : Likes Squirrel Mouse → Needs Squirrel BaldEagle

-- Rule R4: If someone likes the mouse and the mouse needs the squirrel then the mouse does not like the bald eagle
axiom R4 : ∀ x : obj, Likes x Mouse ∧ Needs Mouse Squirrel → ¬ Likes Mouse BaldEagle

-- Rule R5: If the squirrel eats the lion then the squirrel is nice
axiom R5 : Eats Squirrel Lion → Nice Squirrel

-- Rule R6: If the squirrel does not need the bald eagle then the squirrel is round
axiom R6 : ¬ Needs Squirrel BaldEagle → Round Squirrel

-- Rule R7: If someone needs the bald eagle then they are round
axiom R7 : ∀ x : obj, Needs x BaldEagle → Round x

-- Rule R8: If someone eats the mouse and the mouse is nice then the mouse does not need the bald eagle
axiom R8 : ∀ x : obj, Eats x Mouse ∧ Nice Mouse → ¬ Needs Mouse BaldEagle

-- Rule R9: If someone is round and rough then they eat the mouse
axiom R9 : ∀ x : obj, Round x ∧ Rough x → Eats x Mouse


theorem squirrel_is_nice : Nice Squirrel :=
begin
  sorry
end


theorem not_nice_squirrel : ¬ Nice Squirrel :=
begin
  sorry
end
