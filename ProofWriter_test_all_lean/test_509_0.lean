universe u

constant obj : Type u

constant Cat : obj
constant Mouse : obj
constant Rabbit : obj
constant Squirrel : obj

constant Rough : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Green : obj → Prop
constant Cold : obj → Prop

axiom T1 : Rough Cat
axiom T2 : Likes Mouse Rabbit
axiom T3 : Sees Mouse Rabbit
axiom T4 : Sees Rabbit Squirrel
axiom T5 : Eats Squirrel Cat
axiom T6 : Eats Squirrel Rabbit
axiom T7 : Red Squirrel

-- If the squirrel is green and the squirrel likes the rabbit then the rabbit eats the mouse
axiom R1 : Green Squirrel ∧ Likes Squirrel Rabbit → Eats Rabbit Mouse
-- If someone sees the cat and they like the squirrel then the squirrel sees the cat
axiom R2 : ∀ x : obj, Sees x Cat ∧ Likes x Squirrel → Sees Squirrel Cat
-- If someone is young then they see the mouse
axiom R3 : ∀ x : obj, Young x → Sees x Mouse
-- If someone eats the rabbit and they see the mouse then the mouse is red
axiom R4 : ∀ x : obj, Eats x Rabbit ∧ Sees x Mouse → Red Mouse
-- If someone is cold then they eat the squirrel
axiom R5 : ∀ x : obj, Cold x → Eats x Squirrel
-- If someone sees the rabbit and the rabbit is green then they are young
axiom R6 : ∀ x : obj, Sees x Rabbit ∧ Green Rabbit → Young x
-- If someone likes the squirrel and they are red then they are young
axiom R7 : ∀ x : obj, Likes x Squirrel ∧ Red x → Young x
-- If someone sees the squirrel and the squirrel sees the mouse then they like the rabbit
axiom R8 : ∀ x : obj, Sees x Squirrel ∧ Sees Squirrel Mouse → Likes x Rabbit


theorem not_rabbit_eats_squirrel : ¬ Eats Rabbit Squirrel :=
begin
  sorry
end


theorem rabbit_eats_squirrel : Eats Rabbit Squirrel :=
begin
  sorry
end
