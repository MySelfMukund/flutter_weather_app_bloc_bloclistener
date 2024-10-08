# Flutter Weather App (Bloc + BlocListener)

A weather application built with Flutter that utilizes the **Bloc** state management pattern along with **BlocListener** to provide real-time weather updates for any given location.

## Features

- Fetch and display current weather information for any city.
- Real-time updates on weather conditions using **BlocListener**.
- Clean and responsive UI with a modern design.
- Supports searching for cities and retrieving weather data.


## Getting Started

### Prerequisites

Ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Android Studio or Visual Studio Code (for development)
- An API key from [OpenWeatherMap](https://openweathermap.org/api) or another weather service

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/MySelfMukund/flutter_weather_app_bloc_bloclistener.git

2. Navigate to the project folder:
   ```bash
   cd flutter_weather_app_bloc_bloclistener

3. Install the dependencies:
   ```bash
   flutter pub get

4. Get the API Key from [OpenWeatherMap](https://home.openweathermap.org/api_keys) and store in the **.env file**
<img width="698" alt="Screenshot 2024-09-25 at 9 16 08 AM" src="https://github.com/user-attachments/assets/d6c87bde-1fbe-423f-ae75-a00ea76f78c8">
   
5. Run the app:
   ```bash
   flutter run

### Project Structure
Here's an overview of the project folder structure:
   ```plaintext
   lib/
   ├── blocs/              # Contains Cubits and Bloc logic
   ├── models/             # Data models for weather data
   ├── repository/         # API handling and data retrieval logic
   ├── presentations/      # UI screens for displaying weather information
   ├── widgets/            # Reusable UI components
   ├── services/           # Api calling service modules    
   └── main.dart           # Main entry point
```

## How It Works

- **Bloc Pattern** is used for managing the state of tasks in the app, ensuring separation of concerns and cleaner code.
- **StreamSubscription** listens for task changes in real time and updates the UI accordingly.
- **Repository Layer** handles data persistence, ensuring that tasks are stored and retrieved efficiently.

## State Management

- **Bloc:** Used to manage state changes for tasks (add, delete, update).
- **BlocListener:** Listens to task updates and streams them to the UI for real-time interaction.

## Technologies Used

- **Flutter** - Cross-platform development framework
- **Bloc** - State management
- **BlocListener** - For listening and handling real-time data updates
- **HTTP** - For making API requests to fetch weather data.

## Testing
- **Unit Testing**: Writting unit tests for Cubits and repository logic. **(coming soon...)**
- **Widget Testing**: Test the UI components for different weather states. **(coming soon..)**
- **Integration Testing**: Ensure that the app functions correctly as a whole. **(coming soon)**
