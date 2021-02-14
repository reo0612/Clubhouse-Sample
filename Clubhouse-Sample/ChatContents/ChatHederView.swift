
import SwiftUI

struct ChatHederView: View {
    var body: some View {
        //横並び
        HStack(spacing: 16) {
            //左のマーク
            Image(systemName: "chevron.down").font(.system(size: 24))
            Text("All rooms")
            
            Spacer() //真ん中に記述することで要素同士の間にスペースができる
            
            //padding(.horizontal)...横にスペースを空ける
            Image(systemName: "folder").font(.system(size: 24)).padding(.horizontal)
            
            //resizable()...画像をリサイズ(画像のピクセル数を変更すること)できる
            Image("clubhouseHuman").resizable().aspectRatio(contentMode: .fill).frame(width: 36, height: 36).clipShape(Circle())
        }.font(.headline)
    }
}

struct ChatHederView_Previews: PreviewProvider {
    static var previews: some View {
        ChatHederView()
    }
}
