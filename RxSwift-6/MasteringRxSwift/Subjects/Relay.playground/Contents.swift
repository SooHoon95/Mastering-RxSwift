import UIKit
import RxSwift
import RxCocoa

/*:
 # Relay
 */

let bag = DisposeBag()

let prelay = PublishRelay<Int>() // 빈생성자


prelay.subscribe { print("1: \($0)") }
.disposed(by: bag)

prelay.accept(1) // subject에서는 onNext 로 이벤트 전달했지만 relay는 accept 를 사용한다.

 //===============================

let brelay = BehaviorRelay(value: 1) // 최초 value
brelay.accept(2)

brelay.subscribe { print("2: \($0)") }
.disposed(by: bag)

brelay.accept(3)
print(brelay.value)



let rrelay = ReplayRelay<Int>.create(bufferSize: 3)
// 버퍼 크기 설정

(1...10).forEach { rrelay.accept($0) }

rrelay.subscribe { print("3: \($0)") }
.disposed(by: bag)
