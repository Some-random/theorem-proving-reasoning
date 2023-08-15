universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Cow : obj
constant Squirrel : obj

constant Eats : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Green : obj → Prop
constant Blue : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop

axiom A1 : Eats BaldEagle Cat
axiom A2 : Needs BaldEagle Cow
axiom A3 : Visits BaldEagle Squirrel
axiom A4 : ¬ Eats Cat Squirrel
axiom A5 : Green Cat
axiom A6 : Needs Cat Cow
axiom A7 : Young Cow
axiom A8 : Eats Squirrel Cat
axiom A9 : Blue Squirrel
axiom A10 : Needs Squirrel BaldEagle
axiom A11 : Needs Squirrel Cow

-- Rule R1: If someone needs the cow and they are not nice then they eat the squirrel
axiom R1 : ∀ x : obj, Needs x Cow ∧ ¬ Nice x → Eats x Squirrel

-- Rule R2: If someone eats the cow and the cow needs the bald eagle then they eat the squirrel
axiom R2 : ∀ x : obj, Eats x Cow ∧ Needs Cow BaldEagle → Eats x Squirrel

-- Rule R3: If someone needs the cat then they need the bald eagle
axiom R3 : ∀ x : obj, Needs x Cat → Needs x BaldEagle

-- Rule R4: If someone eats the squirrel and they visit the squirrel then the squirrel eats the bald eagle
axiom R4 : ∀ x : obj, Eats x Squirrel ∧ Visits x Squirrel → Eats Squirrel BaldEagle

-- Rule R5: If someone needs the squirrel then the squirrel does not need the bald eagle
axiom R5 : ∀ x : obj, Needs x Squirrel → ¬ Needs Squirrel BaldEagle

-- Rule R6: If someone needs the cat then the cat does not eat the cow
axiom R6 : ∀ x : obj, Needs x Cat → ¬ Eats Cat Cow

-- Rule R7: If someone needs the cat and they need the bald eagle then the bald eagle is young
axiom R7 : ∀ x : obj, Needs x Cat ∧ Needs x BaldEagle → Young BaldEagle

-- Rule R8: If someone is young then they need the cat
axiom R8 : ∀ x : obj, Young x → Needs x Cat

-- Rule R9: If the squirrel does not eat the bald eagle then the squirrel visits the cow
axiom R9 : ∀ x : obj, ¬ Eats Squirrel BaldEagle → Visits Squirrel Cow


theorem cow_needs_bald_eagle : Needs Cow BaldEagle :=
begin
  sorry
end


theorem not_cow_needs_bald_eagle : ¬ Needs Cow BaldEagle :=
begin
  sorry
end
