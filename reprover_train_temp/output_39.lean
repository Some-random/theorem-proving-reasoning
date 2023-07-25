universe u

constant obj : Type u

constant Cat : obj
constant Cow : obj
constant Rabbit : obj
constant Squirrel : obj

constant Needs : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Eats : obj → obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop

axiom T1 : Needs Cat Squirrel
axiom T2 : Chases Cow Squirrel
axiom T3 : Blue Cow
axiom T4 : Chases Rabbit Cat
axiom T5 : Kind Rabbit
axiom T6 : Red Rabbit
axiom T7 : Eats Squirrel Cat
axiom T8 : Kind Squirrel
axiom T9 : Red Squirrel
axiom T10 : Needs Squirrel Cow
axiom T11 : Needs Squirrel Rabbit

axiom R1 : ∀ x : obj, Needs x Cow → Eats x Cow
axiom R2 : ∀ x : obj, Red x → Big x
axiom R3 : ∀ x : obj, Blue x ∧ Nice x → Chases x Cow
axiom R4 : ∀ x : obj, Nice x → Chases x Rabbit
axiom R5 : Needs Cat Squirrel ∧ Needs Squirrel Cat → Blue Cat
axiom R6 : ∀ x : obj, Eats x Cow → Nice x
axiom R7 : ∀ x : obj, Chases x Rabbit → Blue x
axiom R8 : ∀ x : obj, Red x → Needs x Squirrel

theorem squirrel_chases_cow : Chases Squirrel Cow :=
begin
  apply R3,
  split,
  apply R7,
  apply R4,
  apply R6,
  apply R1,
  exact T10,
  apply R6,
  apply R1,
  exact T10,
end

-- The answer is True

-- Now let's try to prove the negation of the theorem, which is Squirrel does not chase Cow

theorem not_squirrel_chases_cow : ¬ Chases Squirrel Cow :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean. So
-- The answer is True