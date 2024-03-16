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

axiom R1 : ∀ x : obj, Nice x ∧ Eats x Tiger → Needs x Dog
axiom R2 : ∀ x : obj, Chases x Cat → Eats x Cat
axiom R3 : Chases Dog Tiger → Needs Tiger Rabbit
axiom R4 : Chases Rabbit Tiger → Chases Rabbit Cat
axiom R5 : ∀ x : obj, Chases x Cat → Kind Cat
axiom R6 : ∀ x : obj, Eats x Dog → Chases x Cat
axiom R7 : ∀ x : obj, Rough x → Eats x Dog
axiom R8 : ∀ x : obj, Kind x → Rough x
axiom R9 : ∀ x : obj, Eats x Rabbit ∧ Big Rabbit → Kind x

theorem rabbit_chases_cat : Chases Rabbit Cat :=
begin
  sorry
end


theorem not_rabbit_chases_cat : ¬ Chases Rabbit Cat :=
begin
  sorry
end
