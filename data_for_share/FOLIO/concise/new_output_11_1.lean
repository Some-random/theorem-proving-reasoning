-- Introducing basic types for entities in our universe.
constant Person : Type
constant MusicPiece : Type
constant Orchestra : Type

-- Defining specific instances of persons, music pieces and orchestras.
constant Beethoven : Person
constant SymphonyNo9 : MusicPiece
constant ViennaMusicSociety : Orchestra

-- Defining properties and relations among the entities.
constant is_composer : Person → Prop
constant is_conductor : Person → Prop
constant writes : Person → MusicPiece → Prop
constant premieres : Orchestra → MusicPiece → Prop
constant leads : Person → Orchestra → Prop

-- Providing axioms based on the information given.

-- Beethoven wrote Symphony No. 9.
axiom A1 : writes Beethoven SymphonyNo9
-- Composers write music pieces.
axiom A2 : ∀ (p : Person) (m : MusicPiece), writes p m → is_composer p
-- Vienna Music Society premiered Symphony No. 9.
axiom A3 : premieres ViennaMusicSociety SymphonyNo9
-- Beethoven leads the Vienna Music Society.
axiom A4 : leads Beethoven ViennaMusicSociety
-- Orchestras are led by conductors.
axiom A5 : ∀ (p : Person) (o : Orchestra), leads p o → is_conductor p

-- Formalizing the Questions

-- Question 1
-- Beethoven is a composer.
-- Let's first prove the positive case.

theorem beethoven_is_composer : is_composer Beethoven :=
begin
    apply A2,
    exact A1,
end

-- Let's try the negative case.

