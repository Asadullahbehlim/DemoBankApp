
import UIKit

class CollectionViewController: UIViewController {
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 40
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Quick Access"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    let bankLabel: UILabel = {
        let label = UILabel()
        label.text = "Bank"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
//    let payTransferLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Pay & Transfer"
//        label.font = UIFont.boldSystemFont(ofSize: 24)
//        label.textAlignment = .left
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//
//    }()
//
//    let loansLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Loans"
//        label.font = UIFont.boldSystemFont(ofSize: 24)
//        label.textAlignment = .left
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//
//    }()
//
//    let cardsLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Cards"
//        label.font = UIFont.boldSystemFont(ofSize: 24)
//        label.textAlignment = .left
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//
//    }()
//
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupTitleLabel()
        setupBankLabel()
        
        
        
//        setupPayTransferlabel()
//        setupLoansLabel()
//        setupCardsLabel()
    }
    
    func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(SquareCell.self, forCellWithReuseIdentifier: "SquareCell")
       collectionView.addSubview(titleLabel)
        view.addSubview(collectionView)
        view.addSubview(titleLabel)
        view.addSubview(bankLabel)
//        view.addSubview(payTransferLabel)
//        view.addSubview(loansLabel)
//        view.addSubview(cardsLabel)
       
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalToSystemSpacingAfter:view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter:collectionView.trailingAnchor, multiplier: 2),
            collectionView.topAnchor.constraint(equalToSystemSpacingBelow:titleLabel.bottomAnchor, multiplier: 2),
          //  collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.heightAnchor.constraint(equalToConstant:200)
        ])
    }
    
    func setupTitleLabel() {
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter:view.leadingAnchor, multiplier: 2),
            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow:view.topAnchor, multiplier:    5)
        ])

    }
    
  
    func setupBankLabel() {
        NSLayoutConstraint.activate([
            bankLabel.leadingAnchor.constraint(equalToSystemSpacingAfter:view.leadingAnchor, multiplier: 2),
            bankLabel.topAnchor.constraint(equalToSystemSpacingBelow:collectionView.bottomAnchor, multiplier:2)
        ])

    }
    
//    func setupPayTransferlabel() {
//        NSLayoutConstraint.activate([
//            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter:view.leadingAnchor, multiplier: 2),
//            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow:view.topAnchor, multiplier:    5)
//        ])
//
//    }
//
//    func setupLoansLabel() {
//        NSLayoutConstraint.activate([
//            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter:view.leadingAnchor, multiplier: 2),
//            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow:view.topAnchor, multiplier:    5)
//        ])
//
//    }
//
//    func setupCardsLabel() {
//        NSLayoutConstraint.activate([
//            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter:view.leadingAnchor, multiplier: 2),
//            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow:view.topAnchor, multiplier:    5)
//        ])
//
//    }
//
    
}

extension CollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SquareCell", for: indexPath) as! SquareCell
        cell.backgroundColor = .red
    
        cell.layer.cornerRadius = 10
        return cell
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 80)
    }
}

class SquareCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


