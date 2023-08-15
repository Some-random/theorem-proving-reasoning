universe u

constant obj : Type u

constant Cat : obj
constant Lion : obj
constant Mouse : obj
constant Rabbit : obj

constant Blue : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Kind : obj → Prop
constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Needs : obj → obj → Prop

axiom T1 : Chases Cat Lion
axiom T2 : ¬ Blue Cat
axiom T3 : Round Cat
axiom T4 : Eats Lion Cat
axiom T5 : Blue Lion
axiom T6 : Round Lion
axiom T7 : ¬ Needs Lion Rabbit
axiom T8 : Eats Mouse Rabbit
axiom T9 : ¬ Needs Mouse Cat
axiom T10 : Chases Rabbit Cat
axiom T11 : Chases Rabbit Mouse
axiom T12 : ¬ Big Rabbit

-- If something chases the rabbit then it needs the cat
axiom R1 : ∀ x : obj, Chases x Rabbit → Needs x Cat
-- If something eats the mouse then the mouse needs the cat
axiom R2 : ∀ x : obj, Eats x Mouse → Needs Mouse Cat
-- If something is blue then it chases the rabbit
axiom R3 : ∀ x : obj, Blue x → Chases x Rabbit
-- If something chases the rabbit then the rabbit is blue
axiom R4 : ∀ x : obj, Chases x Rabbit → Blue Rabbit
-- If something needs the cat and it is not big then it is kind
axiom R5 : ∀ x : obj, Needs x Cat ∧ ¬ Big x → Kind x
-- If the mouse eats the lion then the lion is not round
axiom R6 : ∀ x : obj, Eats Mouse Lion → ¬ Round Lion
-- If something is kind and round then it does not eat the mouse
axiom R7 : ∀ x : obj, Kind x ∧ Round x → ¬ Eats x Mouse


theorem not_needs_rabbit_cat : ¬ Needs Rabbit Cat :=
begin
  sorry
end


theorem needs_rabbit_cat : Needs Rabbit Cat :=
begin
  sorry
end
