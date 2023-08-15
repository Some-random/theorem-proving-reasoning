universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Cat : obj
constant Lion : obj

constant Round : obj → Prop
constant Needs : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop

axiom A1 : Round BaldEagle
axiom A2 : Needs Bear BaldEagle
axiom A3 : Eats Cat Bear
axiom A4 : ¬ Eats Cat Lion
axiom A5 : Round Cat
axiom A6 : Needs Lion Bear
axiom A7 : Sees Lion BaldEagle

-- Rule R1: If something is round then it sees the bald eagle
axiom R1 : ∀ x : obj, Round x → Sees x BaldEagle

-- Rule R2: If something is red and not young then it needs the lion
axiom R2 : ∀ x : obj, Red x ∧ ¬ Young x → Needs x Lion

-- Rule R3: If something sees the bald eagle then it needs the lion
axiom R3 : ∀ x : obj, Sees x BaldEagle → Needs x Lion

-- Rule R4: If something needs the lion and it needs the bear then the bear is round
axiom R4 : ∀ x : obj, Needs x Lion ∧ Needs x Bear → Round Bear

-- Rule R5: If the lion is round and the lion does not eat the cat then the cat eats the bald eagle
axiom R5 : Round Lion ∧ ¬ Eats Lion Cat → Eats Cat BaldEagle

-- Rule R6: If something needs the lion and the lion sees the bald eagle then it is red
axiom R6 : ∀ x : obj, Needs x Lion ∧ Sees Lion BaldEagle → Red x


theorem bald_eagle_needs_cat : Needs BaldEagle Cat :=
begin
  sorry
end


theorem not_bald_eagle_needs_cat : ¬ Needs BaldEagle Cat :=
begin
  sorry
end
