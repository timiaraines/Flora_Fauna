//
//  VideoView.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/28/22.
//

import SwiftUI
import AgoraUIKit

struct VideoView: View {
    @State private var connectedToChannel = false

        static var agview = AgoraViewer(
            connectionData: AgoraConnectionData(
                appId: "e42a6b0efb7e4fd68c5190328c21a024",
                rtcToken: "007eJxTYJjI/yTp0botBiEbnQ8Ll15VffXiRu1+zcwXFi8Flx9xiK9UYEg1MUo0SzJITUsyTzVJSzGzSDY1tDQwNrJINjJMNDAy2efRktwQyMgw/QY/EyMDBIL4XAxpOflFiW6JpXmJDAwAmIojEA=="
            ),
            style: .floating
        )

        @State private var agoraViewerStyle = 0
        var body: some View {
            ZStack {
                VideoView.agview
                VStack {
                    Picker("Format", selection: $agoraViewerStyle) {
                        Text("Floating").tag(0)
                        Text("Grid").tag(1)
                    }.pickerStyle(SegmentedPickerStyle())
                    .frame(
                        minWidth: 0, idealWidth: 100, maxWidth: 200,
                        minHeight: 0, idealHeight: 40, maxHeight: .infinity, alignment: .topTrailing
                    ).onChange(
                        of: agoraViewerStyle,
                        perform: {
                            VideoView.agview.viewer.style = $0 == 0 ? .floating : .grid
                        }
                    )
                    Spacer()
                    HStack {
                        Spacer()
                        Button(
                            action: { connectToAgora() },
                            label: {
                                if connectedToChannel {
                                    Text("Disconnect").padding(3.0).background(Color.red).cornerRadius(3.0).hidden()
                                } else {
                                    Text("Connect").padding(30).background(Color.green).cornerRadius(3.0)
                                        .padding(.bottom)
                                }
                            }
                        )
                        Spacer()
                    }
                    Spacer()
                }
            }

        }

        func connectToAgora() {
            connectedToChannel.toggle()
            if connectedToChannel {
                VideoView.agview.join(channel: "floraFauna", with: "007eJxTYJjI/yTp0botBiEbnQ8Ll15VffXiRu1+zcwXFi8Flx9xiK9UYEg1MUo0SzJITUsyTzVJSzGzSDY1tDQwNrJINjJMNDAy2efRktwQyMgw/QY/EyMDBIL4XAxpOflFiW6JpXmJDAwAmIojEA==", as: .broadcaster)
            } else {
                VideoView.agview.viewer.leaveChannel()
            }
        }
    }
struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
