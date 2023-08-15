universe u

constant obj : Type u

constant Dog : obj
constant Lion : obj
constant Mouse : obj
constant Rabbit : obj

constant Green : obj → Prop
constant Kind : obj → Prop
constant Big : obj → Prop
constant Round : obj → Prop
constant Needs : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop

axiom A1 : Green Dog
axiom A2 : ¬ Kind Dog
axiom A3 : Big Lion
axiom A4 : Round Lion
axiom A5 : Needs Lion Dog
axiom A6 : Big Mouse
axiom A7 : Likes Mouse Dog
axiom A8 : ¬ Needs Mouse Rabbit
axiom A9 : Visits Mouse Dog
axiom A10 : Kind Rabbit
axiom A11 : Visits Rabbit Dog

-- Rule R1: If someone needs the dog then they visit the lion
axiom R1 : ∀ x : obj, Needs x Dog → Visits x Lion

-- Rule R2: If someone needs the mouse then they are kind
axiom R2 : ∀ x : obj, Needs x Mouse → Kind x

-- Rule R3: If someone is round and they like the rabbit then the rabbit visits the mouse
axiom R3 : ∀ x : obj, Round x ∧ Likes x Rabbit → Visits Rabbit Mouse

-- Rule R4: If someone visits the rabbit then the rabbit visits the mouse
axiom R4 : ∀ x : obj, Visits x Rabbit → Visits Rabbit Mouse

-- Rule R5: If someone likes the dog then the dog visits the rabbit
axiom R5 : ∀ x : obj, Likes x Dog → Visits Dog Rabbit

-- Rule R6: If the mouse visits the lion and the mouse needs the dog then the dog needs the lion
axiom R6 : Visits Mouse Lion ∧ Needs Mouse Dog → Needs Dog Lion

-- Rule R7: If the rabbit needs the lion then the lion needs the mouse
axiom R7 : Needs Rabbit Lion → Needs Lion Mouse

-- Rule R8: If someone visits the mouse then the mouse needs the dog
axiom R8 : ∀ x : obj, Visits x Mouse → Needs Mouse Dog


theorem not_needs_mouse_dog : ¬ Needs Mouse Dog :=
begin
  sorry
end


theorem needs_mouse_dog : Needs Mouse Dog :=
begin
  sorry
end
