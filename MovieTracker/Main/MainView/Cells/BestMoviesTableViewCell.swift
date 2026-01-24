//
//  BestMoviesTableViewCell.swift
//  MovieTracker
//
//  Created by kirada on 1/23/26.
//

import UIKit

class BestMoviesTableViewCell: UITableViewCell {

    static let identifier: String = "BestMoviesTableViewCell"
    
    private let movieImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "trash")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let movieNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "IAJfoiNAajsksfc"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    private let movieDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "AJCOAveiofvjoiejbvoineoivbnoievioerjoivjoierjvioejriovjieorjvejverjovjeriojvioerjvoierjvijeriojvioerjviojeroivjoirejvoirejovjreojvoierjvioejroivjeoijvoierjovoierjovierjvj"
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        contentView.addSubview(movieImageView)
        contentView.addSubview(movieNameLabel)
        contentView.addSubview(movieDescriptionLabel)
        
        NSLayoutConstraint.activate([
            movieImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            movieImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            movieImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            movieImageView.widthAnchor.constraint(equalToConstant: 60),
            
            movieNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            movieNameLabel.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 10),
            movieNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            
            movieDescriptionLabel.topAnchor.constraint(equalTo: movieNameLabel.bottomAnchor, constant: 3),
            movieDescriptionLabel.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 10),
            movieDescriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            movieDescriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
}
