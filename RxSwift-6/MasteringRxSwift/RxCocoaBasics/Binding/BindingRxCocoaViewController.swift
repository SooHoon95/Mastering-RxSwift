
import UIKit
import RxSwift
import RxCocoa

class BindingRxCocoaViewController: UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var valueField: UITextField!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        valueLabel.text = ""
        valueField.becomeFirstResponder()
        
//        valueField.rx.text
//            .observe(on: MainScheduler.instance)
//            .subscribe(onNext: { [weak self] str in
//                self?.valueLabel.text = str
//            })
//            .disposed(by: disposeBag)
        
        valueField.rx.text // 옵저버블을 옵저버에게 전달한다. 여기서는 라벨의 텍스트 값으로 옵저버블을 전달한다.
            .bind(to: valueLabel.rx.text)
            .disposed(by: disposeBag)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        valueField.resignFirstResponder()
    }
}
