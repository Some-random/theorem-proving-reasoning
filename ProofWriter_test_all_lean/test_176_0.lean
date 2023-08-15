universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Erin : obj

constant Kind : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant White : obj → Prop
constant Rough : obj → Prop
constant Furry : obj → Prop

axiom A1 : Kind Bob
axiom A2 : Green Charlie
axiom A3 : Kind Charlie
axiom A4 : Young Charlie
axiom A5 : Young Dave
axiom A6 : Big Erin
axiom A7 : Young Erin

-- Rule R1: All white, green people are young
axiom R1 : ∀ x : obj, White x ∧ Green x → Young x

-- Rule R2: All rough, kind people are big
axiom R2 : ∀ x : obj, Rough x ∧ Kind x → Big x

-- Rule R3: If someone is green then they are young
axiom R3 : ∀ x : obj, Green x → Young x

-- Rule R4: Young people are rough
axiom R4 : ∀ x : obj, Young x → Rough x

-- Rule R5: Big, rough people are furry
axiom R5 : ∀ x : obj, Big x ∧ Rough x → Furry x

-- Rule R6: Kind people are green
axiom R6 : ∀ x : obj, Kind x → Green x


theorem kind_Dave : Kind Dave :=
begin
  sorry
end


theorem not_kind_Dave : ¬ Kind Dave :=
begin
  sorry
end
