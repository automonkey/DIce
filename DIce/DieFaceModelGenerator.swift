class DieFaceModelGenerator {

    func generateModelForValue(value: Int) -> [[Bool]] {
        return [
            [
                value != 1,
                false,
                value > 3
            ],
            [
                value == 6,
                value % 2 == 1,
                value == 6
            ],
            [
                value > 3,
                false,
                value != 1
            ]
        ]
    }
}
