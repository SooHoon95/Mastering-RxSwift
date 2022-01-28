import UIKit
import RxSwift

/*:
 # deferred
 */

let disposeBag = DisposeBag()
let animals = ["🐶", "🐱", "🐹", "🐰", "🦊", "🐻", "🐯"]
let fruits = ["🍎", "🍐", "🍋", "🍇", "🍈", "🍓", "🍑"]
var flag = true


// 특정조건에 따라 옵저버블을 생성 할 수 있다.
let factory: Observable<String?> = Observable.deferred {
    flag.toggle()
    // 한번마다 변함
    
    if flag {
        return Observable.from(animals)
    } else {
        return Observable.from(fruits)
    }
}

factory
    .subscribe { print($0) }
    .disposed(by: disposeBag)



factory
    .subscribe { print($0) }
    .disposed(by: disposeBag)
factory
    .subscribe { print($0) }
    .disposed(by: disposeBag)

factory
    .subscribe { print($0) }
    .disposed(by: disposeBag)





