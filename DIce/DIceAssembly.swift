import Typhoon

class DIceAssembly : TyphoonAssembly {

    dynamic func viewController() -> AnyObject {

        return TyphoonDefinition.withClass(DiceRollViewController.self) {
            definition in

            definition.injectProperty("presentationModel", with:self.dicePresentationModel())
            definition.injectProperty("dieView", with:self.dieView())
        }

    }

    dynamic func dicePresentationModel() -> AnyObject {

        return TyphoonDefinition.withClass(DicePresentationModel.self) {
            definition in

            definition.useInitializer("initWithDiceRollGenerator:") {
                initializer in

                initializer.injectParameterWith(self.diceRollGenerator())
            }
        }
    }

    dynamic func diceRollGenerator() -> AnyObject {
        return DiceRollGenerator()
    }

    dynamic func dieFaceModelGenerator() -> AnyObject {
        return DieFaceModelGenerator()
    }

    dynamic func dieView() -> AnyObject {

        return TyphoonDefinition.withClass(DieView.self) {
            definition in

            definition.useInitializer("initWithDieFaceModelGenerator:") {
                initializer in

                initializer.injectParameterWith(self.dieFaceModelGenerator())
            }
        }
    }

}
