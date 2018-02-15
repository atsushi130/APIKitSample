# APIKitSample

[![mit licensed](https://img.shields.io/badge/License-MIT-d94c32.svg)](./license)
![swift](https://img.shields.io/badge/Swift-4-ffac45.svg)

## Bootstrap
```
❯ git clone https://github.com/atsushi130/APIKitSample.git
❯ cd APIKitSample
❯ carthage bootstrap --platform iOS
```

## Sample Code
```swift
TestyRepository.shared.testy.subscribe(onNext: { testy in
    print(testy)
}).disposed(by: self.disposeBag)
```

## License
APIKitSample is available under the MIT license. See the [LICENSE file](https://github.com/atsushi130/APIKitSample/blob/master/license).
