class DIceAssembly : TyphoonAssembly {

    dynamic func viewController() -> AnyObject {

        return TyphoonDefinition.withClass(ViewController.self) {
            (definition) in

            definition.injectProperty("presentationModel", with:self.dicePresentationModel())

        }

    }

    dynamic func dicePresentationModel() -> AnyObject {

        return TyphoonDefinition.withClass(DicePresentationModel.self) {
            (definition) in

            definition.injectProperty("diceRollGenerator", with:DiceRollGenerator())
        }
    }

}
