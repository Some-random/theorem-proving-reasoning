universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Mouse : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Red : obj → Prop
constant Sees : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop

axiom T1 : Chases Bear Cow
axiom T2 : ¬ Red Bear
axiom T3 : Sees Bear Tiger
axiom T4 : Chases Cow Bear
axiom T5 : Chases Mouse Tiger
axiom T6 : ¬ Chases Tiger Mouse
axiom T7 : Needs Tiger Mouse

-- If someone sees the tiger then the tiger is nice
axiom R1 : ∀ x : obj, Sees x Tiger → Nice Tiger
-- If someone chases the mouse and the mouse does not need the bear then the mouse is not young
axiom R2 : ∀ x : obj, Chases x Mouse ∧ ¬ Needs Mouse Bear → ¬ Young Mouse
-- If someone chases the cow then they are big
axiom R3 : ∀ x : obj, Chases x Cow → Big x
-- If someone needs the tiger then the tiger sees the bear
axiom R4 : ∀ x : obj, Needs x Tiger → Sees Tiger Bear
-- If someone is big then they need the tiger
axiom R5 : ∀ x : obj, Big x → Needs x Tiger
-- If the tiger sees the bear and the tiger needs the mouse then the tiger is big
axiom R6 : Sees Tiger Bear ∧ Needs Tiger Mouse → Big Tiger
-- If someone is young then they need the mouse
axiom R7 : ∀ x : obj, Young x → Needs x Mouse


theorem not_cow_needs_tiger : ¬ Needs Cow Tiger :=
begin
  sorry
end


theorem cow_needs_tiger : Needs Cow Tiger :=
begin
  sorry
end
