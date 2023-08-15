universe u

constant obj : Type u

constant Cat : obj
constant Dog : obj
constant Mouse : obj
constant Rabbit : obj

constant Chases : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Eats : obj → obj → Prop

axiom T1 : Chases Cat Rabbit
axiom T2 : Likes Cat Mouse
axiom T3 : Blue Dog
axiom T4 : ¬ Cold Dog
axiom T5 : Likes Dog Cat
axiom T6 : Likes Dog Mouse
axiom T7 : Cold Mouse
axiom T8 : ¬ Likes Mouse Cat
axiom T9 : Chases Rabbit Mouse
axiom T10 : Nice Rabbit

-- If someone chases the dog then the dog likes the cat
axiom R1 : ∀ x : obj, Chases x Dog → Likes Dog Cat
-- If someone is nice and they eat the mouse then the mouse chases the dog
axiom R2 : ∀ x : obj, Nice x ∧ Eats x Mouse → Chases Mouse Dog
-- If someone likes the mouse then they are blue
axiom R3 : ∀ x : obj, Likes x Mouse → Blue x
-- If someone eats the cat and they chase the rabbit then the rabbit likes the mouse
axiom R4 : ∀ x : obj, Eats x Cat ∧ Chases x Rabbit → Likes Rabbit Mouse
-- If the dog eats the rabbit and the rabbit likes the mouse then the dog likes the mouse
axiom R5 : ∀ x : obj, Eats Dog Rabbit ∧ Likes Rabbit Mouse → Likes Dog Mouse
-- If the cat chases the rabbit then the cat chases the dog
axiom R6 : ∀ x : obj, Chases Cat Rabbit → Chases Cat Dog
-- If someone eats the rabbit then they like the rabbit
axiom R7 : ∀ x : obj, Eats x Rabbit → Likes x Rabbit
-- If someone is blue then they eat the cat
axiom R8 : ∀ x : obj, Blue x → Eats x Cat


theorem not_blue_dog : ¬ Blue Dog :=
begin
  sorry
end


theorem blue_dog : Blue Dog :=
begin
  sorry
end
