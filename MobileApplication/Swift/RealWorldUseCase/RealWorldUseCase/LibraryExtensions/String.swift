//
//  String.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/20/25.
//

extension String {
    var article: String {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        return first.map { vowels.contains($0) ? "an" : "a" } ?? "a"
    }

    func withArticle() -> String {
        return "\(article) \(self)"
    }
}
