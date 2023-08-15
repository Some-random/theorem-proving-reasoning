universe u

constant obj : Type u

constant Cat : obj
constant Tiger : obj
constant Lion : obj
constant Rabbit : obj

constant Chases : obj → obj → Prop
constant Red : obj → Prop
constant Nice : obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop

axiom T1 : Chases Cat Tiger
axiom T2 : Red Cat
axiom T3 : Nice Lion
axiom T4 : Red Lion
axiom T5 : Sees Lion Cat
axiom T6 : Sees Lion Rabbit
axiom T7 : Sees Lion Tiger
axiom T8 : Chases Rabbit Tiger
axiom T9 : Sees Rabbit Tiger
axiom T10 : Chases Tiger Cat
axiom T11 : Chases Tiger Rabbit
axiom T12 : Nice Tiger

-- If someone is red and they eat the rabbit then they are blue
axiom R1 : ∀ x : obj, Red x ∧ Eats x Rabbit → Blue x
-- If the lion eats the cat and the lion chases the rabbit then the cat is kind
axiom R2 : Eats Lion Cat ∧ Chases Lion Rabbit → Kind Cat
-- If the rabbit eats the tiger then the tiger is nice
axiom R3 : Eats Rabbit Tiger → Nice Tiger
-- If someone is rough then they see the cat
axiom R4 : ∀ x : obj, Rough x → Sees x Cat
-- If someone is nice and they chase the rabbit then the rabbit is nice
axiom R5 : ∀ x : obj, Nice x ∧ Chases x Rabbit → Nice Rabbit
-- If someone eats the cat and they are kind then they see the tiger
axiom R6 : ∀ x : obj, Eats x Cat ∧ Kind x → Sees x Tiger
-- If someone is nice and they chase the tiger then they are blue
axiom R7 : ∀ x : obj, Nice x ∧ Chases x Tiger → Blue x
-- If someone is blue then they eat the cat
axiom R8 : ∀ x : obj, Blue x → Eats x Cat
-- If someone eats the cat then the cat is blue
axiom R9 : ∀ x : obj, Eats x Cat → Blue Cat


theorem not_eat_lion_tiger : ¬ Eats Lion Tiger :=
begin
  sorry
end


theorem eat_lion_tiger : Eats Lion Tiger :=
begin
  sorry
end
