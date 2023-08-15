universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Lion : obj
constant Rabbit : obj

constant Kind : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Green : obj → Prop
constant Cold : obj → Prop
constant Needs : obj → obj → Prop

axiom A1 : Kind BaldEagle
axiom A2 : Likes BaldEagle Rabbit
axiom A3 : ¬ Kind Cat
axiom A4 : Visits Cat Lion
axiom A5 : Green Lion
axiom A6 : Kind Lion
axiom A7 : Likes Lion BaldEagle
axiom A8 : Likes Lion Cat
axiom A9 : ¬ Visits Lion Cat
axiom A10 : Visits Lion Rabbit
axiom A11 : Cold Rabbit
axiom A12 : Likes Rabbit BaldEagle
axiom A13 : Needs Rabbit BaldEagle

-- Rule R1: If the rabbit needs the bald eagle and the bald eagle visits the cat then the rabbit likes the cat
axiom R1 : Needs Rabbit BaldEagle ∧ Visits BaldEagle Cat → Likes Rabbit Cat

-- Rule R2: If the cat needs the rabbit then the cat does not visit the bald eagle
axiom R2 : Needs Cat Rabbit → ¬ Visits Cat BaldEagle

-- Rule R3: If someone visits the cat and they do not visit the bald eagle then they are kind
axiom R3 : ∀ x : obj, Visits x Cat ∧ ¬ Visits x BaldEagle → Kind x

-- Rule R4: If someone is cold and not kind then they like the lion
axiom R4 : ∀ x : obj, Cold x ∧ ¬ Kind x → Likes x Lion

-- Rule R5: If someone needs the rabbit then they visit the lion
axiom R5 : ∀ x : obj, Needs x Rabbit → Visits x Lion

-- Rule R6: If someone needs the rabbit and the rabbit does not need the lion then the rabbit is green
axiom R6 : ∀ x : obj, Needs x Rabbit ∧ ¬ Needs Rabbit Lion → Green Rabbit

-- Rule R7: If someone likes the lion then the lion needs the rabbit
axiom R7 : ∀ x : obj, Likes x Lion → Needs Lion Rabbit

-- Rule R8: If someone visits the lion then they are cold
axiom R8 : ∀ x : obj, Visits x Lion → Cold x


theorem lion_visits_lion : Visits Lion Lion :=
begin
  sorry
end


theorem not_lion_visits_lion : ¬ Visits Lion Lion :=
begin
  sorry
end
