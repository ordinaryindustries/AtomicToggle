//
//  AtomicToggleStyle.swift
//  MorphToggle
//
//  Created by Jack on 11/7/24.
//
import SwiftUI

public struct AtomicToggleStyle: ToggleStyle {
    var color: Color
    var onImage: String = "checkmark"
    var offImage: String = "xmark"

    public func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Capsule()
                .fill(configuration.isOn ? color : .gray)
                .strokeBorder(.ultraThinMaterial.opacity(0.5), lineWidth: 2)
                .frame(width: 100, height: 50)
                .shadow(color: configuration.isOn ? color.opacity(1) : .gray, radius: 4, x: 0, y: 0)
            
            ZStack {
                Capsule()
                    .fill(.thinMaterial)
                    .strokeBorder(.ultraThinMaterial.opacity(0.5), lineWidth: 2)
                    .frame(width: 40, height: 40)
                    .scaleEffect(configuration.isOn ? 1 : 0.9)
                    
                Image(systemName: configuration.isOn ? onImage : offImage)
                    .bold()
                    .font(.system(size: 18))
                    .foregroundStyle(.thickMaterial)
                    .rotationEffect(configuration.isOn ? .degrees(360) : .zero)
                    .contentTransition(.symbolEffect(.replace))
            }
            .shadow(color: configuration.isOn ? color.opacity(0.4) : .gray, radius: 4, x: 0, y: 0)
            .offset(x: configuration.isOn ? 25 : -25)
        }
        .padding(10)
        .onTapGesture {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
                configuration.isOn.toggle()
            }
        }
    }
}
