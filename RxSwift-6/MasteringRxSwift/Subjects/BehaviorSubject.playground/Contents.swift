import UIKit
import RxSwift

/*:
 # BehaviorSubject
 */

let disposeBag = DisposeBag()

enum MyError: Error {
   case error
}

let p = PublishSubject<Int>() // 비어있는 생성자

p.subscribe{
    print("PublishSubject >>" , $0)
}
.disposed(by: disposeBag)


let b = BehaviorSubject<Int>(value: 0)// 타입 파라미터가 Int 이기 때문에 value를 숫자로 한다.

b.subscribe{
    print("BehaviorSubject>>", $0)
}
.disposed(by: disposeBag)

b.onNext(1)

b.subscribe{
    print("BehaviorSubject2>>", $0)
}
.disposed(by: disposeBag)

//b.onCompleted()
b.onError(MyError.error)

b.subscribe{
    print("BehaviorSubject3>>", $0)
}
.disposed(by: disposeBag)







