universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Squirrel : obj
constant Tiger : obj

constant Green : obj → Prop
constant Nice : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop
constant Sees : obj → obj → Prop

axiom A1 : Green BaldEagle
axiom A2 : Likes BaldEagle Squirrel
axiom A3 : Likes BaldEagle Tiger
axiom A4 : Nice Bear
axiom A5 : Round Bear
axiom A6 : Likes Bear BaldEagle
axiom A7 : Likes Bear Tiger
axiom A8 : Young Squirrel
axiom A9 : Likes Squirrel Bear
axiom A10 : Needs Squirrel BaldEagle
axiom A11 : Sees Squirrel Tiger
axiom A12 : Cold Tiger
axiom A13 : Likes Tiger Bear
axiom A14 : Likes Tiger Squirrel
axiom A15 : Needs Tiger Bear
axiom A16 : Sees Tiger Bear

axiom R1 : ∀ x : obj, Needs x BaldEagle ∧ Likes BaldEagle Bear → Needs BaldEagle Tiger
axiom R2 : ∀ x : obj, Needs x Squirrel → Needs x Tiger
axiom R3 : ∀ x : obj, Green x → Needs x Squirrel
axiom R4 : ∀ x : obj, Needs x Bear ∧ Needs x BaldEagle → Likes Bear BaldEagle
axiom R5 : ∀ x : obj, Likes x BaldEagle → Young x
axiom R6 : ∀ x : obj, Likes x Bear ∧ Sees x BaldEagle → Needs x Bear
axiom R7 : ∀ x : obj, Round x → Green x
axiom R8 : ∀ x : obj, Sees x Squirrel ∧ Likes Squirrel Bear → Cold x
axiom R9 : ∀ x : obj, Needs x Bear ∧ Green Bear → Round x

theorem not_young_Tiger : ¬ Young Tiger :=
begin
end


theorem young_Tiger : Young Tiger :=
begin
end
