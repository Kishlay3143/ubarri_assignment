###  Fetch Data From API Flutter App ###

# Overview
The Fetch Data From API is a simple Flutter application designed to demonstrate how to fetch data from an API and display it in a list format. The app fetches user's data from the reqres.in API and displays it in a listview. 
Initially, the the listview widget will be hidden and only the button will be visible to the user. After clicking on the button, the data from the api will be fetched and the the data will be shown to the user inside a listview widget.

# Screenshots
* Initial state of the app with a hidden list.(Mobile View)
![Hidden List](https://github.com/Kishlay3143/ubbari_assignment/assets/92507922/a0c8e6bd-5c9c-4414-98eb-7d1787caf427)

* The app displaying the fetched user data in a list after clicking on the button. (Mobile View)
![Visible List](https://github.com/Kishlay3143/ubbari_assignment/assets/92507922/6ca163b0-f914-489b-b08f-f8dc70eeaf14)

* The app displaying the fetched user data in a list after clicking on the button. (Web View) 
![Visible List (Web)](https://github.com/Kishlay3143/ubbari_assignment/assets/92507922/1b98001d-8464-4f27-80ae-628b0e0bffa7)


# Features
- Fetches user data from the API endpoint.
- Displays the user data in a list with customizable list items.
- Provides an option to toggle the visibility of the list using a "Show List" button.
- Uses Flutter's http package to make API requests.
- Utilizes stateful widgets to manage the app's UI and data.

# Installation
- Clone or download the repository to your local machine.
- Open the project in your preferred Flutter development environment.
- Run the app using your chosen development tools (such as Visual Studio Code or Android Studio).

# Usage
- Launch the app on your device or emulator.
- Press the "Show List" button to fetch and display user data from the API.
- The list of users will be displayed with their avatars, names, and email addresses.
- You can toggle the visibility of the list by pressing the "Show List" button again.

# Technologies Used
- Flutter Framework
- Dart Programming Language
- http Package for API requests

# Explanation of the code
- The purpose of this project is to demonstrate how to build a Flutter app that fetches data from an external API, in this case, the reqres.in API. The code is 
  organized into different files and folders to follow best practices for code organization and maintainability.
- Folder and File Structure:  
  lib/
  |- api/
  |    |- api_service.dart
  |
  |- models/
  |    |- user_model.dart
  |
  |- screens/
  |    |- home_page.dart
  |
  |- widgets/
  |    |- custom_button.dart
  |
  |- main.dart
 

 ***** Purpose of Each File and Folder****** : -
1. `api` Folder :
- The api folder contains code related to making API requests and handling data retrieval from external sources. This folder contains a file name "api_service.dart"
- api_service.dart: This file defines functions and classes responsible for making API requests. It uses the http package for network requests and the dart:convert 
   package for parsing JSON responses.
  
2. `models Folder` :
- The models folder is used for defining the data models or classes that represent the structure of the data fetched from the API. This folde conatains a fle named
  "user_model.dart".
- user_model.dart: This file defines a User class that represents the structure of user data. It typically includes properties like id, email, first_name, 
  last_name, and avatar. These properties help organize and work with the data retrieved from the API.

3. `screens Folder` :
- The screens folder contains different screens or pages of your Flutter app. This folder contains a file named "home_page".
- `home_page.dart` : This file represents the main screen of your app. It fetches data from the API and displays it.
       `_fetchDataFromApi()`: This function sends an HTTP GET request to the API endpoint, retrieves user data, and updates the listResponse.
       `_buildListView()`: This function returns a ListView.builder widget for displaying the list of users fetched from the API.
       `_buildListItem(Map<String, dynamic> responseData)`: This function returns a Card widget that displays user information, including name, email, and an 
        avatar or icon.
4. `widgets Folder` :
- The widgets folder typically contains reusable UI components or widgets that can be used across different screens of your app. This folder contains a file named
  `custom_button.dart`.
- custom_button.dart: This file defines a custom button widget, enhancing code reusability and maintaining a consistent UI design.

5. `main.dart` :
- The main.dart file serves as the entry point of your Flutter app. It initializes your app and specifies the first screen to display.
- main(): The main function is the app's entry point. It calls runApp to start your app and specifies the MyApp widget as the root widget.
- MyApp class: The MyApp class is a stateless widget representing your entire app. In the build method, it creates a MaterialApp widget that sets up the app's 
  basic structure, including the navigation bar and theme.

***** LOGIC and decision-making processes used while creating this app *******
1. API Request Logic :
- Purpose: This logic is responsible for making an API request to fetch user data.
- Implementation:
  * A GET request is sent to the API endpoint using the http package.
  * The response status code is checked. If it's 200 (HTTP OK), the data is parsed from JSON format and stored in the listResponse variable.
 -Decision Points:
  * The response status code is checked to ensure a successful request.
  * If the request is successful, data is parsed and stored; otherwise, an error is handled.
2. Toggling List Visibility:
- Purpose: This logic determines whether the list of users should be visible or hidden. 
- Implementation:
  * The isListViewVisible variable keeps track of the visibility state.
  * Pressing the "Show List" button toggles the visibility by updating this variable.
- Decision Points:
  * The button's text and the visibility of the list are controlled by the value of isListViewVisible.
  * If isListViewVisible is true, the list is shown; if false, it's hidden.
 
3. Building the User List:
 - Purpose: These methods build and customize the UI for displaying user data.
 - Implementation:
   * _buildListView() returns a ListView.builder widget that dynamically generates user list items.
   * _buildListItem() returns a Card widget containing user information.
- Decision Points:
   * The ListView.builder allows for efficient rendering of a large number of items.
   * _buildListItem() customizes each list item with user data.

***** SUMMARY ********
- The api folder contains code for making API requests.
- The models folder defines the structure of the data fetched from the API.
- The screens folder contains the UI and logic for the main screen of the app.
- The widgets folder houses reusable UI components.
- The main.dart file is the entry point and sets up the basic app structure.

# Acknowledgments
- This app was created as an assignment exercise to demonstrate how to fetch and display data from an API using Flutter. It follows best practices for code 
  organization and styling.
- Special thanks to Ubarri for giving me such a wonderful app through which i got the opportunity to learn dart and the flutter development.
- Also, thanks to the Flutter community and the creators of the libraries used in this project for making Flutter app development more efficient and enjoyable.

# Support or Contact
If you have any questions regarding this project, please feel free to contact me at masterkishlay@gmail.com









