universe u

constant obj : Type u

constant Cat : obj
constant Mouse : obj
constant Squirrel : obj
constant Tiger : obj

constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop

axiom T1 : Likes Cat Squirrel
axiom T2 : Visits Mouse Squirrel
axiom T3 : Visits Mouse Tiger
axiom T4 : Likes Squirrel Tiger
axiom T5 : Needs Squirrel Tiger
axiom T6 : Visits Squirrel Tiger
axiom T7 : Needs Tiger Cat

-- If something is red and it visits the squirrel then the squirrel is big
axiom R1 : ∀ x : obj, Red x ∧ Visits x Squirrel → Big Squirrel
-- If something is red then it needs the squirrel
axiom R2 : ∀ x : obj, Red x → Needs x Squirrel
-- If the mouse needs the cat then the mouse is blue
axiom R3 : ∀ x : obj, Needs Mouse Cat → Blue Mouse
-- If something is cold and it visits the tiger then it needs the mouse
axiom R4 : ∀ x : obj, Cold x ∧ Visits x Tiger → Needs x Mouse
-- If something needs the tiger and it visits the tiger then the tiger likes the mouse
axiom R5 : ∀ x : obj, Needs x Tiger ∧ Visits x Tiger → Likes Tiger Mouse
-- If something needs the squirrel then the squirrel needs the cat
axiom R6 : ∀ x : obj, Needs x Squirrel → Needs Squirrel Cat
-- If something likes the mouse then it needs the cat
axiom R7 : ∀ x : obj, Likes x Mouse → Needs x Cat
-- If something needs the cat then it is red
axiom R8 : ∀ x : obj, Needs x Cat → Red x


theorem squirrel_needs_tiger : Needs Squirrel Tiger :=
begin
  sorry
end


theorem not_squirrel_needs_tiger : ¬ Needs Squirrel Tiger :=
begin
  sorry
end
