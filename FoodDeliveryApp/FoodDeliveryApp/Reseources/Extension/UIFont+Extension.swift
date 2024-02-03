//
//  UIFont+Extension.swift
//  FoodDeliveryApp
//
//  Created by Eldar on 31.01.2024.
//

import UIKit

extension UIFont {
    enum Roboto {
        enum black {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.black, size: size)!
            }
        }
        enum blackItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.blackItalic, size: size)!
            }
        }
        enum bold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.bold, size: size)!
            }
        }
        enum boldItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.boldItalic, size: size)!
            }
        }
        enum italic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.italic, size: size)!
            }
        }
        enum light {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.light, size: size)!
            }
        }
        enum lightItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.lightItalic, size: size)!
            }
        }
        enum medium {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.medium, size: size)!
            }
        }
        enum mediumItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.mediumItalic, size: size)!
            }
        }
        enum regular {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.regular, size: size)!
            }
        }
        enum thin {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.thin, size: size)!
            }
        }
        enum thinItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constrants.Roboto.thinItalic, size: size)!
            }
        }
    }
}

private extension UIFont {
    enum Constrants {
        enum Roboto {
            static let black        = "Roboto-Black"
            static let blackItalic  = "Roboto-BlackItalic"
            static let bold         = "Roboto-Bold"
            static let boldItalic   = "Roboto-BoldItalic"
            static let italic       = "Roboto-Italic"
            static let light        = "Roboto-Light"
            static let lightItalic  = "Roboto-LightItalic"
            static let medium       = "Roboto-Medium"
            static let mediumItalic = "Roboto-MediumItalic"
            static let regular      = "Roboto-Regular"
            static let thin         = "Roboto-Thin"
            static let thinItalic   = "Roboto-ThinItalic"
        }
    }
    
}
