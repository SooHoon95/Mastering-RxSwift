import UIKit
import RxSwift

/*:
 # ReplaySubject
 */

let disposeBag = DisposeBag()

enum MyError: Error {
   case error
}

let rs = ReplaySubject<Int>.create(bufferSize: 3) // 버퍼는 저장할 이벤트 갯수
(1...10).forEach {
    rs.onNext($0)
}
rs.subscribe{ print("Ovserver 1 >> ", $0) }
.disposed(by: disposeBag)

rs.subscribe{ print("Ovserver 2 >> ", $0) }
.disposed(by: disposeBag)

rs.onNext(11) // buffer에서 가장 오래된 이벤트를 삭제한다.

rs.subscribe{ print("Ovserver 3 >> ", $0) }
.disposed(by: disposeBag)

//rs.onCompleted()
rs.onError(MyError.error)

rs.subscribe{ print("Ovserver 4 >> ", $0) }
.disposed(by: disposeBag)

