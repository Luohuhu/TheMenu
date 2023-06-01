## Fetch iOS Coding Challenge

This project is a simple iOS app that allows users to browse recipes, specifically meals in the Dessert category, from [TheMealDB API](https://themealdb.com/api.php). The app is built using Swift and SwiftUI and follows the Model-View-ViewModel (MVVM) architectural pattern.

## Table of contents
- [Project Description](#project-description)
- [Installation](#installation)
- [Usage](#usage)
- [Design](#design)
- [Technologies](#technologies)

## Project Description
The app displays a list of meals fetched from the endpoint https://themealdb.com/api/json/v1/1/filter.php?c=Dessert. The meals are sorted alphabetically as requested.

Upon selecting a meal from the list, users are directed to a detailed view that displays the meal name, instructions, and ingredients/measurements. This data is fetched from the endpoint https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID, where MEAL_ID is the id of the selected meal.

The app handles null or empty values from the API by filtering them out before they are displayed to the user. While UI/UX design is not the primary focus, the app is designed to be user-friendly and adheres to basic app design principles.

## Installation
1. Download the latest version of Xcode. You can download it from [Apple's Developer Website](https://developer.apple.com/xcode/).
2. Clone this repository:
```bash
git clone https://github.com/yourusername/TheMenu.git
```
3. Open the project in Xcode.
4. Compile and run the project on the iOS Simulator or any physically connected iOS device.

## Usage
1. When you open the app, you'll be greeted with a list of dessert recipes.
2. Tap on any meal to see the details.
3. In the detail view, you'll find the meal name, cooking instructions, and a list of ingredients with their measurements.

## Design
The app follows the MVVM (Model-View-ViewModel) architectural pattern. The models handle the application's data. The views define the structure, layout, and appearance of what users see on the screen. The view models transform model information into values that can be displayed on a view.

This architecture provides a clear separation of concerns and simplifies the management of the data flow, making the app more scalable and maintainable.

## Technologies
- Swift 5
- SwiftUI
- MVVM architecture
- URLSession for networking
- JSON parsing

Note: While testing, if you encounter any problems with fetching data from the API, it might be due to rate limitations on the API side. If you need to use this app for heavy testing, consider getting a paid plan from TheMealDB.

## Contact
If you have any questions or suggestions, feel free to open an issue or a pull request.

## License
This project is open source and available under the [MIT License](LICENSE).
