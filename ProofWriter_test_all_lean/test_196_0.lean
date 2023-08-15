universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Squirrel : obj
constant Lion : obj

constant Nice : obj → Prop
constant Needs : obj → obj → Prop
constant Blue : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Kind : obj → Prop

axiom A1 : Nice BaldEagle
axiom A2 : Needs BaldEagle Cow
axiom A3 : Needs BaldEagle Squirrel
axiom A4 : Blue Cow
axiom A5 : Likes Cow BaldEagle
axiom A6 : Sees Cow Squirrel
axiom A7 : Kind Lion
axiom A8 : Nice Lion
axiom A9 : Likes Lion BaldEagle
axiom A10 : Needs Lion Squirrel
axiom A11 : Sees Lion Squirrel
axiom A12 : Likes Squirrel Lion

-- Rule R1: If something sees the lion then the lion likes the squirrel
axiom R1 : ∀ x : obj, Sees x Lion → Likes Lion Squirrel

-- Rule R2: If something is kind and it sees the bald eagle then it needs the cow
axiom R2 : ∀ x : obj, Kind x ∧ Sees x BaldEagle → Needs x Cow

-- Rule R3: If something sees the squirrel and it sees the bald eagle then the bald eagle likes the cow
axiom R3 : ∀ x : obj, Sees x Squirrel ∧ Sees x BaldEagle → Likes BaldEagle Cow

-- Rule R4: If something sees the lion and the lion likes the squirrel then the lion needs the squirrel
axiom R4 : ∀ x : obj, Sees x Lion ∧ Likes Lion Squirrel → Needs Lion Squirrel

-- Rule R5: If something likes the squirrel and it needs the squirrel then the squirrel sees the cow
axiom R5 : ∀ x : obj, Likes x Squirrel ∧ Needs x Squirrel → Sees Squirrel Cow

-- Rule R6: If something sees the cow then it sees the lion
axiom R6 : ∀ x : obj, Sees x Cow → Sees x Lion

-- Rule R7: If something needs the cow and it needs the squirrel then it likes the squirrel
axiom R7 : ∀ x : obj, Needs x Cow ∧ Needs x Squirrel → Likes x Squirrel

-- Rule R8: If something sees the lion then the lion sees the bald eagle
axiom R8 : ∀ x : obj, Sees x Lion → Sees Lion BaldEagle

-- Rule R9: If something sees the cow and it likes the cow then the cow sees the bald eagle
axiom R9 : ∀ x : obj, Sees x Cow ∧ Likes x Cow → Sees Cow BaldEagle


theorem not_sees_squirrel_cow : ¬ Sees Squirrel Cow :=
begin
  sorry
end


theorem sees_squirrel_cow : Sees Squirrel Cow :=
begin
  sorry
end
