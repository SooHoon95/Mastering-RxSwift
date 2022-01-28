
import UIKit
import RxSwift

/*:
 # from
 */

let disposeBag = DisposeBag()
let fruits = ["🍏", "🍎", "🍋", "🍓", "🍇"]

Observable.from(fruits) // 파라미터로 배열을 받고 return 은 배열의 요소 이다.
    .subscribe { element in print(element)}
    .disposed(by: disposeBag)
    







