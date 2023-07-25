universe u

constant obj : Type u

constant Cat : obj
constant Cow : obj
constant Rabbit : obj
constant Tiger : obj

constant Blue : obj → Prop
constant Nice : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Round : obj → Prop
constant Red : obj → Prop
constant Chases : obj → obj → Prop

axiom T1 : Blue Cat
axiom T2 : Nice Cat
axiom T3 : Likes Cat Cow
axiom T4 : Needs Cat Cow
axiom T5 : Needs Cat Rabbit
axiom T6 : ¬ Needs Cow Rabbit
axiom T7 : Needs Cow Tiger
axiom T8 : Round Rabbit
axiom T9 : Nice Tiger
axiom T10 : ¬ Likes Tiger Cow

axiom R1 : ∀ x : obj, Likes x Cat ∧ Chases x Cat → Blue x
axiom R2 : ∀ x : obj, Likes x Cow ∧ Red x → Round Cow
axiom R3 : ∀ x : obj, Needs x Tiger ∧ Needs x Cat → ¬ Chases x Cow
axiom R4 : ∀ x : obj, Needs x Cat ∧ Blue Cat → Red Cat
axiom R5 : ∀ x : obj, Round x → Needs x Cat
axiom R6 : ∀ x : obj, Likes x Cat ∧ Needs Cat Rabbit → Chases Cat Tiger
axiom R7 : ∀ x : obj, Needs Rabbit Tiger → ¬ Round Rabbit

theorem cow_chases_cow : Chases Cow Cow :=
begin
  sorry
end
