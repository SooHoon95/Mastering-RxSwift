import UIKit
import RxSwift

/*:
 # skip(until:)
 */

let disposeBag = DisposeBag()

let subject = PublishSubject<Int>()
let trigger = PublishSubject<Int>()

//subject.skipUntil(trigger)
//    .subscribe {print($0)}
//    .disposed(by: disposeBag)
//
//
//subject.onNext(1) //서브젝트에서 요소 방출했으나, 아직 트리거가 요소를 방출한적이 없기때문에, subject의 방출 요소는 구독자에게 전달되지 않는다.
//
//trigger.onNext(0)
//// subject가 이전에 방출한 요소는 여전히 구독자에게 전달되고 있지않다.
//// skipUntin은 trigger가 요소를 방출한 이후 부터 원본 옵저버블에서 방출한 요소를 구독자로 전달한다.
//
//subject.onNext(2)


//==============
//Swift 6
//==============
subject.skip(until: trigger)
    .subscribe { print($0) }
    .disposed(by: disposeBag)


subject.onNext(1) // Nothing Happened
trigger.onNext(3) // Nothing Happened
subject.onNext(1234) // >> next(1234)
