universe u

constant obj : Type u

constant Cat : obj
constant Lion : obj
constant Rabbit : obj
constant Tiger : obj

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

axiom R1 : ∀ x : obj, Red x ∧ Eats x Rabbit → Blue x
axiom R2 : Eats Lion Cat ∧ Chases Lion Rabbit → Kind Cat
axiom R3 : Eats Rabbit Tiger → Nice Tiger
axiom R4 : ∀ x : obj, Rough x → Sees x Cat
axiom R5 : ∀ x : obj, Nice x ∧ Chases x Rabbit → Nice Rabbit
axiom R6 : ∀ x : obj, Eats x Cat ∧ Kind x → Sees x Tiger
axiom R7 : ∀ x : obj, Nice x ∧ Chases x Tiger → Blue x
axiom R8 : ∀ x : obj, Blue x → Eats x Cat
axiom R9 : ∀ x : obj, Eats x Cat → Blue Cat

theorem not_nice_rabbit : ¬ Nice Rabbit :=
begin
end


theorem nice_rabbit : Nice Rabbit :=
begin
end
