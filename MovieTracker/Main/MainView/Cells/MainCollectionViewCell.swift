//
//  MainCollectionViewCell.swift
//  MovieTracker
//
//  Created by kirada on 1/23/26.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "MainCollectionViewCell"
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(BestMoviesTableViewCell.self, forCellReuseIdentifier: BestMoviesTableViewCell.identifier)
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        contentView.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: contentView.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
}

extension MainCollectionViewCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BestMoviesTableViewCell.identifier, for: indexPath) as? BestMoviesTableViewCell
        
        return cell ?? UITableViewCell()
    }
}
