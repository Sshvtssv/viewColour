import UIKit

class ViewController: UIViewController {

    @IBOutlet var slider: UISlider!
    @IBOutlet var labelOutlet: UILabel!
    @IBOutlet var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = .purple
        
        labelOutlet.text = "Смени яркость"
        
        buttonOutlet.backgroundColor = .red
        buttonOutlet.titleLabel?.font = UIFont(name:"Times New Roman", size: 40)
        buttonOutlet.setTitle("Удалить текст", for: .normal)
        buttonOutlet.layer.cornerRadius = 20
    }

    @IBAction func changeColour() {
        let colorText = labelOutlet.textColor
        labelOutlet.textColor = colorText?.withAlphaComponent(CGFloat(slider.value))
    }
    @IBAction func buttonAction() {
    
        if buttonOutlet.isSelected == false {
            buttonOutlet.setTitle("Вернуть текст", for: .normal)
            labelOutlet.text = ""
            buttonOutlet.backgroundColor = .blue
            buttonOutlet.isSelected = true
        } else {
            buttonOutlet.setTitle("Удалить текст", for: .normal)
            labelOutlet.text = "Смени яркость"
            buttonOutlet.backgroundColor = .red
            buttonOutlet.isSelected = false
        }
    }
    }
    


