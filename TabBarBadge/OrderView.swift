//
//  OrderView.swift
//  TabBarBadge
//
//  Created by Syber Experties on 06/11/2019.
//  Copyright © 2019 Jihad iOS. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        List {
            ForEach(order.items, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        OrderView().environmentObject(order)
    }
}
