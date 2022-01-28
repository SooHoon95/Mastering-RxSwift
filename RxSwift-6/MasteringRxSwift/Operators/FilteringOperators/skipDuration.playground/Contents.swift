
import UIKit
import RxSwift

/*:
 # skip(duration:scheduler:)
 */


let disposeBag = DisposeBag()

let o = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)

o.take(10)
    .subscribe { print($0) }
    .disposed(by: disposeBag)









