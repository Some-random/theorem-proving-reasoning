universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Dog : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop

axiom A1 : Chases BaldEagle Cow
axiom A2 : Chases BaldEagle Dog
axiom A3 : Needs Cow BaldEagle
axiom A4 : Sees Cow Lion
axiom A5 : Chases Dog Cow
axiom A6 : Green Dog
axiom A7 : Rough Lion

-- Rule R1: If someone is blue and rough then they see the lion
axiom R1 : ∀ x : obj, Blue x ∧ Rough x → Sees x Lion

-- Rule R2: If someone needs the cow and they do not need the lion then they chase the cow
axiom R2 : ∀ x : obj, Needs x Cow ∧ ¬ Needs x Lion → Chases x Cow

-- Rule R3: If someone sees the cow then the cow is kind
axiom R3 : ∀ x : obj, Sees x Cow → Kind Cow

-- Rule R4: If someone is rough then they chase the bald eagle
axiom R4 : ∀ x : obj, Rough x → Chases x BaldEagle

-- Rule R5: If someone is blue then they do not chase the bald eagle
axiom R5 : ∀ x : obj, Blue x → ¬ Chases x BaldEagle

-- Rule R6: If someone is kind then they chase the lion
axiom R6 : ∀ x : obj, Kind x → Chases x Lion

-- Rule R7: If someone chases the bald eagle and the bald eagle chases the dog then the bald eagle sees the dog
axiom R7 : ∀ x : obj, Chases x BaldEagle ∧ Chases BaldEagle Dog → Sees BaldEagle Dog

-- Rule R8: If the bald eagle sees the dog then the bald eagle sees the cow
axiom R8 : Sees BaldEagle Dog → Sees BaldEagle Cow

-- Rule R9: If someone needs the cow then they are rough
axiom R9 : ∀ x : obj, Needs x Cow → Rough x


theorem bald_eagle_sees_dog : Sees BaldEagle Dog :=
begin
  sorry
end


theorem not_bald_eagle_sees_dog : ¬ Sees BaldEagle Dog :=
begin
  sorry
end
