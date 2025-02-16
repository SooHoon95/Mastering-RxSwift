
import UIKit
import RxSwift

/*:
 # skip(while:)
 */

let disposeBag = DisposeBag()
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//Observable.from(numbers)
//    .skipWhile { !$0.isMultiple(of: 2) }
//    .subscribe{ print($0) }
//    .disposed(by: disposeBag)


Observable.from(numbers)
    .skip {!$0.isMultiple(of: 2)}
    .subscribe{ print($0) }
    .disposed(by: disposeBag)

