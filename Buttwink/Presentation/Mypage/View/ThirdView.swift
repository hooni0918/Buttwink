//
//  ThirdView.swift
//  Buttwink
//
//  Created by 고영민 on 11/28/24.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit
import DesignSystem

final class ThirdView: BaseCollectionViewCell<Any> {
    
    // MARK: - Property
    
    static let identifier: String = "ThirdView"
    private var bag = DisposeBag()
    
    // MARK: - UI Components

    private let imageView: UIImageView = {
        let view = UIImageView()
        view.image = .Sample.sample1
        view.sizeToFit()
        return view
    }()
    
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Methods
    
    private func setLayout() {
        [imageView].forEach { addSubview($0) }
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(imageView.snp.width).multipliedBy(0.5) // 2:1 비율
        }
    }
}