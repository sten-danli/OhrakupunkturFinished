import UIKit

class Section2ViewController: UIViewController {
    
    
    @IBOutlet weak var textlabel: UILabel!
    
    var Section1Index : Section1Index? {
        
        didSet {
            configureView()
        }
    }
    func configureView() {
        if let Section1Index = Section1Index {
            if let textlabel = textlabel {
                textlabel.text=Section1Index.name
                print("hier ist:\(Section1Index.name)")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
