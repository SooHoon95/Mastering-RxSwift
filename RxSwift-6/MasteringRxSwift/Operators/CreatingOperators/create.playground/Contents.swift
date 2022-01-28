import UIKit
import RxSwift
import Dispatch

/*:
 # create
 */

let disposeBag = DisposeBag()

enum MyError: Error {
   case error
}

Observable<String>.create { (observer) -> Disposable in
    guard let url = URL(string: "https://www.apple1234.com")
    else {
        observer.onError(MyError.error)
        return Disposables.create() // s 반드시 필요
    } // 에러발생시 애러 이벤트 전달 후 종료
    
    guard let html = try? String(contentsOf: url, encoding:  .utf8) else { // url을가져와서 문자열로 저장 실패시 에러이벤트 전달
        observer.onError(MyError.error)
        return Disposables.create()
    }
    
    observer.onNext(html) // 파라미터로 방출할 요소를 기입
    observer.onCompleted()
    
    observer.onNext("After completed") // completed, error 걸렸기 때문에 무슨일이 있어도 방출 되지 않는다.
    
    return Disposables.create()
}

// 구독

.subscribe { print($0) }
.disposed(by: disposeBag)



