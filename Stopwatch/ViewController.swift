/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    let stopwatch = Stopwatch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        Timer.scheduledTimer(timeInterval: 0.1, target: self,
            selector: #selector(ViewController.updateElapsedTimeLabel(_:)), userInfo: nil, repeats: true)
        stopwatch.start()
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        stopwatch.stop()
    }

    @objc func updateElapsedTimeLabel(_ timer: Timer) {
        if stopwatch.isRunning {
            elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
        } else {
            timer.invalidate()
        }
    }
    
    //Include delegate methods here. Don't forget to include a way to notify the segue!
    
    
}

