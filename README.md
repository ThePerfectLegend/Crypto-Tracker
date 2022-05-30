# Crypto-Tracker
SwiftUI Crypto app uses MVVM Architecture, Combine, CoreData and API request to CoinGecko. Crypto-Tracker allows user observe situation on market, track cryptocurrency prices, create and edit own portfolio.

![GitHubDemo](https://user-images.githubusercontent.com/94032706/170973512-b4d5ef65-78cf-45c9-8fc7-9f8519b1ab2a.png)
![GitHubDemo2](https://user-images.githubusercontent.com/94032706/170973696-1844de22-ca79-4738-9918-67f2f182d917.png)
![GitHubDemo_4](https://user-images.githubusercontent.com/94032706/170973253-a15d0861-abc8-49b2-b144-318a2dd23b7f.png)


## Technologies & Functionality 

- Project uses MVVM Architecture with additional layers between Model and Views. API request created in independent network layer of class `NetworkingManager` and using in different `DataServices` with API requests.
- `DataServices` connected with ViewModel by `@Publisher` and `@Subcribers` pattern from `Combine` framework. It allows to keep data actual condition. To avoid additional request to API download images saves in `fileManager`.
- User can create own cryptocurrency portfolio by add, edit and delete coins. All portfolio data saves in `CoreData`.
- The app implemented custom and reusable `SearchBar`. Filtering data based on search bar text using `Combine`.
- User can reload the List of coins with updated data from API and sorting it by market position, price, and holdings with animations.
- In `DetailView` created a custom animated line chart to display historical price data. Downloaded data is displaying in grid format with reusable components. Coin description section has animated expand and collapse options.
- Launch screen is combined with `UIKit` and `SwiftUI` loading animation. Added app icon.
