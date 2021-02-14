
import SwiftUI

struct ChatBodyView: View {
    var body: some View {
        //縦スクロールView
        ScrollView(.vertical) {
            //縦並び
            VStack(alignment: .leading, spacing: 24) {
                //横並び
                HStack(alignment: .top) {
                    //縦並び
                    VStack(alignment: .leading, spacing: 16) {
                        Text("SWAN DIVE 🏡")
                        Text("Live Coaching with famous Musician").font(.headline)
                    }.fixedSize(horizontal: false, vertical: true).frame(height: 60)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis").font(.system(size: 20))
                }.padding(.vertical)
                
                //2つ
                ForEach(1..<3) { _ in
                    //横並び
                    HStack {
                        //横並びに3つ
                        ForEach(1..<4) { _ in
                            Spacer()
                            //縦並び
                            VStack {
                                Image("clubhouseHuman").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center).clipShape(RoundedRectangle(cornerRadius: 30))
                                
                                Text("club").font(.subheadline).bold()
                            }
                            Spacer()
                        }
                    }
                }
                
                Text("Followed by the speakers").font(.footnote).foregroundColor(.secondary)
                
                //2つ
                ForEach(1..<3) { _ in
                    HStack {
                        //横並びに4つ
                        ForEach(1..<5) { _ in
                            Spacer()
                            //縦並び
                            VStack {
                                Image("clubhouseHuman").resizable().aspectRatio(contentMode: .fill).frame(width: 54, height: 54, alignment: .center).clipShape(RoundedRectangle(cornerRadius: 18))
                                
                                Text("club").font(.subheadline).bold()
                            }
                            Spacer()
                        }
                    }
                }
                
            }.padding(.all, 24)
        }.background(Color(UIColor.systemBackground)).cornerRadius(24)
    }
}

struct ChatBody_Previews: PreviewProvider {
    static var previews: some View {
        ChatBodyView()
    }
}
