
import UIKit
import RxSwift

/*:
 # range
 */

let disposeBag = DisposeBag()

Observable.range(start: 1, count: 10)
    .subscribe { print( $0) }
    .disposed(by: disposeBag)




