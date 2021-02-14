
import SwiftUI

struct ChatFooterView: View {
    var body: some View {
        //横並びスタック
        HStack(alignment: .center, spacing: 16) {
            //ボタン
            Button(action: {}) {
                //ボタンの中の要素が横並びになる
                HStack {
                    Text("✌️").font(.headline).font(.system(size: 48))
                    Text("Leave quietly").font(.headline).foregroundColor(.red)
                }.padding() //要素が四辺に膨らむ？
                
            //背景色
            }.background(Color.secondary.opacity(0.2)).clipShape(Capsule())
        
        Spacer() //要素同士を離すことが出来る
        
            //padding()を付けることによって
            Image(systemName: "plus").font(.system(size: 20)).padding().background(Color.secondary.opacity(0.2)).clipShape(Circle())
            Image(systemName: "hand.raised").font(.system(size: 20)).padding().background(Color.secondary.opacity(0.2)).clipShape(Circle())
        }.padding()
    }
}

struct ChatFooterView_Previews: PreviewProvider {
    static var previews: some View {
        ChatFooterView()
    }
}
