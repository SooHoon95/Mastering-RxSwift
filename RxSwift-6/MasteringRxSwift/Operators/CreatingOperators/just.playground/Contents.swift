import UIKit
import RxSwift

/*:
 # just
 */

let disposeBag = DisposeBag()
let element = "😀"


Observable.just(element)
    .subscribe { event in print(event)}
    .disposed(by: disposeBag)

Observable.just([1,2,3])
    .subscribe { event in print(event)}
    .disposed(by: disposeBag)

