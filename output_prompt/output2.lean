universe u
constant obj : Type u

-- Declare constants for our objects
constant Cow : obj -- Corresponds to 'The cow'
constant Dog : obj -- Corresponds to 'The dog'
constant Rabbit : obj -- Corresponds to 'The rabbit'

-- Declare constants for our predicates
constant Big : obj → Prop -- Corresponds to 'is big'
constant Needs : obj → obj → Prop -- Corresponds to 'needs'
constant Sees : obj → obj → Prop -- Corresponds to 'sees'
constant Chases : obj → obj → Prop -- Corresponds to 'chases'
constant Blue : obj → Prop -- Corresponds to 'is blue'

-- Define our axioms based on the provided statements
axiom T1 : Big Cow -- Corresponds to 'The cow is big'
axiom T2 : Needs Cow Dog -- Corresponds to 'The cow needs the dog'
axiom T3 : Sees Dog Rabbit -- Corresponds to 'The dog sees the rabbit'
axiom T4 : Chases Rabbit Cow -- Corresponds to 'The rabbit chases the cow'
axiom T5 : Chases Rabbit Dog -- Corresponds to 'The rabbit chases the dog'
axiom T6 : Big Rabbit -- Corresponds to 'The rabbit is big'
axiom T7 : Sees Rabbit Dog -- Corresponds to 'The rabbit sees the dog'

-- Define our rules based on the provided statements
axiom R1 : Blue Cow ∧ Needs Cow Rabbit → Needs Cow Dog -- Corresponds to 'If the cow is blue and the cow needs the rabbit then the cow needs the dog'
axiom R2 : Chases Cow Dog → Sees Cow Rabbit -- Corresponds to 'If the cow chases the dog then the cow sees the rabbit'
axiom R3 : ∀ x : obj, Big x → Chases x Dog -- Corresponds to 'If something is big then it chases the dog'

-- Theorem: The cow sees the rabbit?
theorem cow_sees_rabbit : Sees Cow Rabbit :=
begin
  -- We apply rule R2, which states that if the cow chases the dog, then the cow sees the rabbit.
  apply R2,
  -- We now need to show that the cow chases the dog.
  -- According to rule R3, if something is big, then it chases the dog.
  -- The cow is big (by axiom T1), so we can apply R3 to the cow.
  exact R3 Cow T1,
end

-- The answer is True