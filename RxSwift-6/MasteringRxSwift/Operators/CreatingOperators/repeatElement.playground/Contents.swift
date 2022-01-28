import UIKit
import RxSwift

/*:
 # repeatElement
 */

let disposeBag = DisposeBag()
let element = "❤️"

Observable.repeatElement(element)
    .take(7) // 방출하는 요소의 수 지정
    .subscribe {
    
        print($0) }
    .disposed(by: disposeBag)
// 방출되는 요소의 수 제어해주는 것이 중요
