import UIKit
import RxSwift

/*:
 # empty
 */

let disposeBag = DisposeBag()

Observable<Void>.empty()
    .subscribe { print($0) }
    .disposed(by: disposeBag)
