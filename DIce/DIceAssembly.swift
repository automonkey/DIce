class DIceAssembly : TyphoonAssembly {

    dynamic func viewController() -> AnyObject {

        return TyphoonDefinition.withClass(DiceRollViewController.self) {
            (definition) in

            definition.injectProperty("presentationModel", with:self.dicePresentationModel())

        }

    }

    dynamic func dicePresentationModel() -> AnyObject {

        return TyphoonDefinition.withClass(DicePresentationModel.self) {
            (definition) in

            definition.useInitializer("initWithDiceRollGenerator:") {
                (initializer) in

                initializer.injectParameterWith(DiceRollGenerator())
            }
        }
    }

}
