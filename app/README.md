# 🚗 Cars App

## 📱 Overview
A simple Flutter application that demonstrates basic navigation between screens.  
Beginner-friendly and easy to understand.

## 🎯 Features
- 🚀 Simple navigation using Navigator.push  
- 🎨 Custom AppBar styling  
- 📱 Clean and responsive layout  
- 👶 Easy for beginners  

## 📸 Screenshots

### 🏠 Home Screen
![Home](assets/images/home.png)

### 🔧 Service Screen
![Service](assets/images/service.png)

## 🛠️ Tech Stack
- Flutter  
- Dart  
- Material UI  

## 🚀 Getting Started

### Installation
git clone https://github.com/your-username/cars_app.git
cd cars_app
flutter pub get 

### 📂 Project Structure
* lib/
* ├── main.dart
* ├── pages/
* │   ├── home.dart
* │   └── service.dart

### 🔄 Navigation
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Service()),
);
flutter run
