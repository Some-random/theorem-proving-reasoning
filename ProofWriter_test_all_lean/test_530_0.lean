universe u

constant obj : Type u

constant Cat : obj
constant Dog : obj
constant Rabbit : obj
constant Tiger : obj

constant Needs : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Kind : obj → Prop
constant Green : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop

axiom T1 : Needs Cat Dog
axiom T2 : Kind Dog
axiom T3 : Needs Dog Rabbit
axiom T4 : Eats Rabbit Dog
axiom T5 : Green Rabbit
axiom T6 : Chases Tiger Rabbit
axiom T7 : Big Tiger

-- If something is nice and it eats the tiger then it needs the dog
axiom R1 : ∀ x : obj, Nice x ∧ Eats x Tiger → Needs x Dog
-- If something chases the cat then it eats the cat
axiom R2 : ∀ x : obj, Chases x Cat → Eats x Cat
-- If the dog chases the tiger then the tiger needs the rabbit
axiom R3 : Chases Dog Tiger → Needs Tiger Rabbit
-- If the rabbit chases the tiger then the rabbit chases the cat
axiom R4 : Chases Rabbit Tiger → Chases Rabbit Cat
-- If something chases the cat then the cat is kind
axiom R5 : ∀ x : obj, Chases x Cat → Kind Cat
-- If something eats the dog then it chases the cat
axiom R6 : ∀ x : obj, Eats x Dog → Chases x Cat
-- If something is rough then it eats the dog
axiom R7 : ∀ x : obj, Rough x → Eats x Dog
-- If something is kind then it is rough
axiom R8 : ∀ x : obj, Kind x → Rough x
-- If something eats the rabbit and the rabbit is big then it is kind
axiom R9 : ∀ x : obj, Eats x Rabbit ∧ Big Rabbit → Kind x


theorem cat_eats_dog : Eats Cat Dog :=
begin
  sorry
end


theorem not_cat_eats_dog : ¬ Eats Cat Dog :=
begin
  sorry
end
