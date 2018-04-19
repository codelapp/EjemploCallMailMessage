import UIKit
import MessageUI
class MensajeViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    
    

    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var mensaje: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func enviar(_ sender: Any) {
        if MFMessageComposeViewController.canSendText() {
            let message = MFMessageComposeViewController()
            message.body = mensaje.text
            message.recipients = [phone.text!]
            message.messageComposeDelegate = self
            present(message, animated: true, completion: nil)
        }else{
            print("no envio el mensaje")
        }
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        dismiss(animated: true, completion: nil)
    }
    
}
