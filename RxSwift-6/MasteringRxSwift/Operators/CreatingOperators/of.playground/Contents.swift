
import UIKit
import RxSwift

/*:
 # of
 */

let disposeBag = DisposeBag()
let apple = "🍏"
let orange = "🍊"
let kiwi = "🥝"


Observable.of(apple,orange,kiwi) // 가변 파라미터; 방출할 요소를 우너하는 갯수만큼 입력할 수 있다.
    .subscribe { element in print(element) }
    .disposed(by: disposeBag)

Observable.of([1,2], [3,4], [5,6])
    .subscribe { element in print(element) }
    .disposed(by: disposeBag)

// 배열의 요소를 하나씩 방출하고 싶다면?? >> From 연산자







