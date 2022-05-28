# Crypto-Tracker
SwiftUI Crypto app uses MVVM Architecture, Combine, CoreData and API request to CoinGecko. Crypto-Tracker allows user observe situation on market, track cryptocurrency prices, create and edit own portfolio.

![iphone-12--black_2](https://user-images.githubusercontent.com/94032706/170821906-cdcb82e2-2170-442d-bd75-cec458d435e6.jpg)
![iphone-12--black_3](https://user-images.githubusercontent.com/94032706/170821985-e0057237-fd6f-4015-b899-458c127b6c7c.jpg)
![iphone-12--black_4](https://user-images.githubusercontent.com/94032706/170822051-63fa7a45-0f47-4a55-92a3-bd6af73d516a.jpg)


## Technologies & Funktionality 

- Project uses MVVM Architecture with additional layers between Model and Views. API request created in independent network layer of class `NetworkingManager` and using in different `DataServices` with API requests.
- `DataServices` connected with ViewModel by `@Publisher` and `@Subcribers` pattern from `Combine` framework. It allows to keep data actual condition. To avoid additional request to API download images saves in `fileManager`.
- User can create own cryptocurrency portfolio by add, edit and delete coins. All portfolio data saves in `CoreData`.
- The app implemented custom and reusable `SearchBar`. Filtering data based on search bar text using `Combine`.
- User can reload the List of coins with updated data from API and sorting it by market position, price, and holdings with animations.
- In `DetailView` created a custom animated line chart to display historical price data. Downloaded data is displaying in grid format with reusable components. Coin description section has animated expand and collapse options.
- Launch screen is combined with `UIKit` and `SwiftUI` loading animation.
