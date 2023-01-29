//
//  JudgementSound.swift
//  Gomiwake
//
//  Created by sako0602 on 2023/01/22.
//

import Foundation
import SwiftUI
import AVFoundation

    private let Correct = try! AVAudioPlayer(data: NSDataAsset(name: "correct")!.data)
    private let Wrong = try! AVAudioPlayer(data: NSDataAsset(name: "wrong")!.data)

    public func playSoundCorrect(){
        Correct.stop()
        Correct.currentTime = 0.0
        Correct.play()
    }
    public func playSoundWrong(){
        Wrong.stop()
        Wrong.currentTime = 0.0
        Wrong.play()
    }
