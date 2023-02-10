import Foundation
import UIKit




//class ViewController : UIViewController {
//
//    let haderImage = UIImageView()
//    let quicklabel = UILabel()
//    let headView = UIView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setUp()
//        layOut()
//    }
//
//    lazy var stackView: UIStackView = {
//        let view = UIStackView(arrangedSubviews: [haderImage, quicklabel])
//        view.axis = .vertical
//        view.spacing = 5
//        return view
//    }()
//}
//
//extension ViewController {
//
//    func setUp()
//    {
//        haderImage.translatesAutoresizingMaskIntoConstraints = false
//        haderImage.backgroundColor = .black
//        haderImage.frame = CGRect(x: 0, y: 0, width: 1000, height: 300)
//
//
//        headView.translatesAutoresizingMaskIntoConstraints = false
//        headView.backgroundColor = .blue
//        headView.addSubview(haderImage)
//
//        quicklabel.translatesAutoresizingMaskIntoConstraints = false
//        quicklabel.text = "Quick Access"
//
//    }
//
//    func layOut()
//    {
//        view.addSubview(stackView)
//
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: view.topAnchor),
//            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
//            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
//            view.bottomAnchor.constraint(equalTo: stackView.bottomAnchor)
//        ])
//    }
//}
//
//
//
//class ViewController: UIViewController {
//    let headerView = HeaderView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.addSubview(headerView)
//        headerView.backgroundImageView.image = UIImage(named: "KotakCard")
//        headerView.textLabel.text = "View Balance"
//    }
//}

//class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//
//    let tableView = UITableView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.frame = view.bounds
//
//        view.addSubview(tableView)
//
//        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: view.frame.size.width, height: 150))
//        headerView.backgroundColor = UIColor.brown
//
//        let label = UILabel(frame: headerView.bounds)
//
//        headerView.addSubview(label)
//
//        label.text = "Savings"
//        label.textAlignment = .left
//        label.textColor = .white
//        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
//
//        tableView.addSubview(headerView)
//        // Do any additional setup after loading the view.
//    }
//    // TableView Data Source
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        return cell
//    }
//
//
//
//}
//
