universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop
constant Kind : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop

axiom A1 : Big Anne
axiom A2 : Furry Anne
axiom A3 : Rough Anne
axiom A4 : Round Charlie
axiom A5 : Kind Erin
axiom A6 : Smart Erin
axiom A7 : Furry Fiona
axiom A8 : Kind Fiona
axiom A9 : Rough Fiona
axiom A10 : Smart Fiona

-- Rule R1: White and big people are smart
axiom R1 : ∀ x : obj, White x ∧ Big x → Smart x

-- Rule R2: Rough and big people are kind
axiom R2 : ∀ x : obj, Rough x ∧ Big x → Kind x

-- Rule R3: If Erin is kind and smart then Erin is furry
axiom R3 : ∀ x : obj, Kind Erin ∧ Smart Erin → Furry Erin

-- Rule R4: If Charlie is big and kind then Charlie is white
axiom R4 : ∀ x : obj, Big Charlie ∧ Kind Charlie → White Charlie

-- Rule R5: Furry people are big
axiom R5 : ∀ x : obj, Furry x → Big x

-- Rule R6: Round people are rough
axiom R6 : ∀ x : obj, Round x → Rough x

-- Rule R7: If someone is rough then they are big
axiom R7 : ∀ x : obj, Rough x → Big x

-- Rule R8: All white people are furry
axiom R8 : ∀ x : obj, White x → Furry x


theorem not_rough_Charlie : ¬ Rough Charlie :=
begin
  sorry
end


theorem rough_Charlie : Rough Charlie :=
begin
  sorry
end
