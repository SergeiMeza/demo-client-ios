import UIKit
import SnapKit

class AlbumChartHeaderCell: BaseListCollectionViewCell<AppleMusicAPIClient.AlbumChart> {
  lazy var nameLabal = UILabel(text: "", style: .headline)
  
  override func setupSubviews() {
    contentView.addSubview(nameLabal)
    nameLabal.snp.makeConstraints { make in
      make.edges.equalToSuperview().inset(8)
    }
  }
  
  override func bindUI() {
    nameLabal.text = modelItem?.name
  }
}
