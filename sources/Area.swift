import UIKit

enum Area {
    case product
    case design
    case engineering
}

extension Area {
    var color: UIColor {
        switch self {
        case .product: return .red
        case .design: return .green
        case .engineering: return .blue
        }
    }
}
