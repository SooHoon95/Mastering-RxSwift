import UIKit
import RxSwift

/*:
 # generate
 */

let disposeBag = DisposeBag()
let red = "🔴"
let blue = "🔵"

Observable.generate(initialState: 0, condition: { $0 <= 10 }, iterate: { $0 + 2 })
    .subscribe { print($0) }
    .disposed(by: disposeBag)
// condition >> true를 리턴할 경우에만 요소가 방출 false 일 경우 completed 이벤트 전달하고 바로 종료.
// iterate 변경값

Observable.generate(initialState: 10, condition: { $0 >= 0 }, iterate: { $0 - 2})
    .subscribe { print( $0) }
    .disposed(by: disposeBag)



Observable.generate(initialState: red, condition: { $0.count < 15 }, iterate: { $0.count.isMultiple(of: 2) ? $0 + red : $0 + blue})
    .subscribe { print( $0) }
.disposed(by: disposeBag)






