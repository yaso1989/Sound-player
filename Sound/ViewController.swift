import UIKit
import AVFoundation


class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    @IBAction func KeyButt(_ sender: UIButton) {
        //  print("i got pressed")
        playSound(soundName: sender.currentTitle!)
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(soundName: String){
        let url = Bundle.main.url(forResource: "soundName", withExtension: "wav")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    

}

