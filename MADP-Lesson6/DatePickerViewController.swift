
import UIKit

class DatePickerViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)

        // Do any additional setup after loading the view.
    }

   

    @IBAction func OnButtonPressed(_ sender: UIButton) {
        
        let date = datePicker.date
        
        let message = "The date you selected \(date)"
        
        let alert = UIAlertController(
            title: "Date and time selected",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "That is so true",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        present(alert,animated: true, completion:nil)
        
        
    }
    
}
