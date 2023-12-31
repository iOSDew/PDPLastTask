//
//  CollectionVC.swift
//  PDPLastTask
//
//  Created by Khojimurod Sultonov on 31.12.23.
//

import UIKit

class CollectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet var collectionView: UICollectionView!
    let numberOfColums: CGFloat = 2
    var items: Array<Post> = Array()
    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
    }

    
    // MARK: - Methods
    
    func initView(){
        addNavigationBar()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.collectionView.register(UINib(nibName: "PostCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Post")
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellWidth = screenSize.width / numberOfColums - 15
            flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
        items.append(Post(contentImage: UIImage(named: "image"), label: "Parij"))
        items.append(Post(contentImage: UIImage(named: "images"), label: "Life"))
        items.append(Post(contentImage: UIImage(named: "image"), label: "Parij"))
        items.append(Post(contentImage: UIImage(named: "images"), label: "Life"))
        items.append(Post(contentImage: UIImage(named: "image"), label: "Parij"))
        items.append(Post(contentImage: UIImage(named: "images"), label: "Life"))
        items.append(Post(contentImage: UIImage(named: "image"), label: "Parij"))
        items.append(Post(contentImage: UIImage(named: "images"), label: "Life"))
        items.append(Post(contentImage: UIImage(named: "image"), label: "Parij"))
        items.append(Post(contentImage: UIImage(named: "images"), label: "Life"))
        items.append(Post(contentImage: UIImage(named: "image"), label: "Parij"))
        items.append(Post(contentImage: UIImage(named: "images"), label: "Life"))
        items.append(Post(contentImage: UIImage(named: "image"), label: "Parij"))
        items.append(Post(contentImage: UIImage(named: "images"), label: "Life"))
        items.append(Post(contentImage: UIImage(named: "image"), label: "Parij"))
        items.append(Post(contentImage: UIImage(named: "images"), label: "Life"))
        items.append(Post(contentImage: UIImage(named: "image"), label: "Parij"))
        items.append(Post(contentImage: UIImage(named: "images"), label: "Life"))
  
    }
    
    func addNavigationBar(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "scroll"), style: .plain, target: self, action: #selector(rightTapped))
        title = "Collection View"
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Post", for: indexPath) as! PostCollectionViewCell
        cell.contentImage.image = item.contentImage
        cell.label.text = item.label
        
        
        return cell
    }

    // MARK: - Action
    @objc func rightTapped(){
        let vc = ScrollVC(nibName: "ScrollVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - CollectionView
    // MARK: - CollectionView
    

}
