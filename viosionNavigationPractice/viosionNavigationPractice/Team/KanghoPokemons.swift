//
//  KanghoPokemons.swift
//  viosionNavigationPractice
//
//  Created by KangHo Kim on 2023/06/29.
//

import Foundation

struct pokemon {
    var name: String
    var number: String
    var image: String
    var info: String
}
// ("이상해씨", "뚜벅초", "모다피") -> 풀, 독, "덩쿠리"
// "파이리", "식스테일", "가디", "마그마"
// "꼬부기", "고라파덕", "발챙이", "잉어킹"
let pokemons: [pokemon] = [
    pokemon(name: "이상해씨", number: "001", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000101.png", info: "태어나서부터 얼마 동안은 등의 씨앗으로부터 영양을 공급받아 크게 성장한다."),
    pokemon(name: "파이리", number: "004", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000401.png", info: "파이리 꼬리의 불꽃은 생명의 등불이다. 건강할 때는 불꽃도 강하게 타오른다."),
    pokemon(name: "꼬부기", number: "007", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000701.png", info: "등껍질에 숨어 몸을 보호한다. 상대의 빈틈을 놓치지 않고 물을 뿜어내어 반격한다."),
    pokemon(name: "식스테일", number: "037", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003701.png", info: "불꽃의 구슬을 조종한다. 성장하면 6개의 꼬리는 끝이 갈라져서 한층 더 늘어난다."),
    pokemon(name: "뚜벅초", number: "043", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/004301.png", info: "낮에는 뿌리인 발을 땅에 박고 움직이지 않을 때가 많다. 밤에 돌아다니며 씨를 뿌린다."),
    pokemon(name: "고라파덕", number: "054", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/005401.png", info: "항상 두통에 시달리고 있다. 이 두통이 심해지면 이상한 힘을 쓰기 시작한다."),
    pokemon(name: "가디", number: "058", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/005801.png", info: "자신보다 강하고 큰 상대라도 겁 없이 맞서는 용감하고 믿음직스런 성격이다."),
    pokemon(name: "발챙이", number: "060", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/006001.png", info: "내장이 들여다보일 정도로 피부가 얇다. 갓 자란 다리로 서툴게 걷는다."),
    pokemon(name: "모다피", number: "069", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/006901.png", info: "고온다습한 땅을 좋아한다. 덩굴을 뻗어서 먹이를 잡을 때의 움직임은 매우 재빠르다."),
    pokemon(name: "마그마", number: "126", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/012601.png", info: "화산의 분화구에서 태어나 자랐다. 태양과도 같은 불꽃의 일렁임이 전신을 감싼다."),
    pokemon(name: "잉어킹", number: "129", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/012901.png", info: "힘없는 한심한 포켓몬이다. 가끔 높이 뛰어오르지만 2m를 겨우 넘기는 게 고작이다."),
    pokemon(name: "덩쿠리", number: "114", image: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/011401.png", info: "파란 덩굴로 덮여 있다. 덩굴에 숨겨져 있는 얼굴을 본 사람은 아직 없다.")
]
