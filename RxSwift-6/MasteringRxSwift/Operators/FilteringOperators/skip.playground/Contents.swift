
import UIKit
import RxSwift

/*:
 # skip
 */

let disposeBag = DisposeBag()
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//Observable.from(numbers)
//    .skip(8)
//    .subscribe {print($0)}
//    .disposed(by: disposeBag)


Observable.from(numbers)
    .skip(3)
    .subscribe{print($0)}
    .disposed(by: disposeBag)
