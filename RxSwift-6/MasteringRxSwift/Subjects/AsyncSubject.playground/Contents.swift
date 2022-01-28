import UIKit
import RxSwift

/*:
 # AsyncSubject
 */

let bag = DisposeBag()

enum MyError: Error {
   case error
}

let subject = AsyncSubject<Int>()

subject.subscribe{ print($0) }
.disposed(by: bag) // Noting Happened

subject.onNext(1) // Noting Happened 왜냐하면 Completed 가 서브젝튿에 전달 안되었기 때문에
subject.onNext(2)
subject.onNext(3)

//subject.onCompleted() // 이시점에서 next 이벤트 구독자에 전달.
subject.onError(MyError.error)

