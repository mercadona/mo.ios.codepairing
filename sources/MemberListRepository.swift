import Foundation

protocol MemberListRepository: class {
    func fetch() -> [Member]
}

class MemberListRepositoryImpl: MemberListRepository {
    func fetch() -> [Member] {
        return [
            Member(name: "Fernando", salary: 66.56, area: .design, role: .productManager),
            Member(name: "Dani", salary: 78.01, area: .product, role: .productManager),
            Member(name: "Miquel", salary: 66.49, area: .engineering, role: .designer),
            Member(name: "Quique", salary: 42.45, area: .design, role: .designer),
            Member(name: "Aristrol", salary: 88.68, area: .product, role: .designer),
            Member(name: "Imanol", salary: 30.36, area: .product, role: .productManager),
            Member(name: "Andrew", salary: 24.35, area: .engineering, role: .coder),
            Member(name: "Pedro", salary: 77.66, area: .product, role: .coder),
            Member(name: "Juan Pablo", salary: 65.08, area: .engineering, role: .designer),
            Member(name: "Nacho", salary: 23.47, area: .design, role: .coder),
            Member(name: "Punzano", salary: 54.64, area: .product, role: .designer),
            Member(name: "Igor", salary: 59.15, area: .engineering, role: .productManager),
            Member(name: "Joel", salary: 87.79, area: .design, role: .productManager),
            Member(name: "Jose", salary: 59.13, area: .engineering, role: .coder),
            Member(name: "Raúl", salary: 48.90, area: .design, role: .designer),
            Member(name: "Sergio", salary: 41.81, area: .design, role: .coder),
            Member(name: "Tony", salary: 82.27, area: .product, role: .coder),
            Member(name: "Jose Antonio", salary: 56.19, area: .engineering, role: .productManager)
        ]
    }
}
