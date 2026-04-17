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
<img width="314" height="600" alt="image" src="https://github.com/user-attachments/assets/2489951e-8ece-4f06-9462-676b3475a427" />

### 🔧 Service Screen
<img width="314" height="600" alt="image" src="https://github.com/user-attachments/assets/7710435e-b6ff-4663-a5cb-44bb3c89a40f" />

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
