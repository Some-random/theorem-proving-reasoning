universe u

constant obj : Type u

constant BaldEagle : obj
constant Dog : obj
constant Bear : obj
constant Squirrel : obj

constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop
constant Visits : obj → obj → Prop

axiom A1 : Likes BaldEagle Dog
axiom A2 : Sees BaldEagle Dog
axiom A3 : Likes Bear Dog
axiom A4 : Green Dog
axiom A5 : Sees Dog BaldEagle
axiom A6 : Sees Dog Bear
axiom A7 : Sees Squirrel Bear

axiom R1 : ∀ x : obj, Kind x → Visits x BaldEagle
axiom R2 : Nice Dog ∧ Cold Dog → Sees Dog Squirrel
axiom R3 : ∀ x : obj, Visits x BaldEagle ∧ Kind x → Green BaldEagle
axiom R4 : ∀ x : obj, Likes x BaldEagle ∧ Green BaldEagle → Likes x Dog
axiom R5 : ∀ x : obj, Rough x ∧ Likes x Bear → Visits x BaldEagle
axiom R6 : ∀ x : obj, Green x → Kind x
axiom R7 : ∀ x : obj, Visits x BaldEagle → Sees BaldEagle Dog
axiom R8 : ∀ x : obj, Sees Dog Squirrel ∧ Rough Squirrel → Likes Squirrel BaldEagle

theorem bear_visits_bald_eagle : Visits Bear BaldEagle :=
begin
end


theorem not_bear_visits_bald_eagle : ¬ Visits Bear BaldEagle :=
begin
end
