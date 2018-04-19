import UIKit

class LlamadaViewController: UIViewController {
    @IBOutlet weak var phone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func llamar(_ sender: UIButton) {
        let url = URL(string: "TEL://" + phone.text!)! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    

}
