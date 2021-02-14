
import SwiftUI

struct ClubhouseHome: View {
    var body: some View {
        //重ねて配置する
        ZStack {
            //背景色
            Color("club").edgesIgnoringSafeArea(.all) //セーフエリアも含めた全て
            //縦並び
            VStack {
                ChatHederView().padding() //要素四辺に隙間空ける
                ChatBodyView().offset(y: 20) //要素の表示位置をy = 20 移動させる
                ChatFooterView().frame(width: UIScreen.main.bounds.width, height: 100).background(Color(UIColor.systemBackground))
            }.padding(.top, 40).edgesIgnoringSafeArea(.vertical)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ClubhouseHome()
        }
    }
}
