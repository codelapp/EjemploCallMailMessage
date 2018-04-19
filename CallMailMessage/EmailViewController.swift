import UIKit
import MessageUI
class EmailViewController: UIViewController, MFMailComposeViewControllerDelegate {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var asunto: UITextField!
    @IBOutlet weak var mensaje: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func enviar(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients([email.text!])
            mail.setSubject(asunto.text!)
            mail.setMessageBody(mensaje.text, isHTML: false)
            self.present(mail, animated: true, completion: nil)
        }else{
            print("no funciona el email")
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true, completion: nil)
    }
    
}
