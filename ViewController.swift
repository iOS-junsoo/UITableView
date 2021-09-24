import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.korean.count
        case 1:
            return self.english.count
        default:
            return self.data.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.section < 2 { //섹션의 수가 2개 이하일 떄
            let text: String = indexPath.section == 0 ? self.korean[indexPath.row] : self.english[indexPath.row]
            cell.textLabel?.text = text
            
        } else {
            let text: String = self.data[indexPath.row]
            cell.textLabel?.text = text
        }
        return cell
    }
    //header 작성 부분
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "[한글로 된 커피]"
        case 1:
            return "[영어로 된 커피]"
        case 2:
            return "[DATA]"
        default:
            return ""
        }
    }
    

    @IBOutlet weak var tableView: UITableView!
    let collIdentifier: String = "cell"
    
    let korean: [String] = ["에스프레소", "아메리카노", "카페라떼", "카라멜마끼아또", "콜드블루", "바닐라라떼", "민트니"]
    let english: [String] = ["es", "am", "cafe", "cara", "co", "ba", "mi"]
    
    var data: [String] = []
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func touchUpAddButton(_ sender: UIButton) {
        data.append(String(self.textField.text!))
        self.textField.text = ""
        self.tableView.reloadSections(IndexSet(2...2), with: UITableView.RowAnimation.automatic)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

}


