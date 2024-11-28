# fivepaisa

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.
Here’s a complete `README.md` file for your Flutter app, including its features, setup instructions, and how others can find and install the APK:

---

# **Image Gallery App**

An interactive Flutter app that displays a gallery of images fetched from the **Picsum API**, with infinite scrolling, zoomable full-screen image view, and seamless navigation between images.

---

## **Features**
- **Gallery View with Infinite Scrolling**: Displays images in a grid layout with automatic pagination as the user scrolls down.
- **Zoomable Images**: Tap an image to view it in full screen and use pinch-to-zoom or pan to explore details.
- **Swipe Navigation**: Navigate between images horizontally in the full-screen view.
- **Error Handling**: Displays an appropriate error message if images fail to load.
- **Offline Caching**: Images are cached locally to improve performance when scrolling.
- **Clean Architecture**:
  - Organized folder structure for maintainability.
  - Implements **BLoC** for state management.

---

## **Screenshots**
![image](https://github.com/user-attachments/assets/439bfe98-ec76-4bbc-84cf-18b7738cc254)
![image](https://github.com/user-attachments/assets/89c12773-8051-4b2a-a72e-208b4f946751)
![image](https://github.com/user-attachments/assets/851b568f-53d3-47e2-8639-4c70158bfa8f)



---

## **How to Use**

### **Download APK**
1. Download the latest APK file from the following link:
   - [Download app-release.apk](https://drive.google.com/drive/folders/1p-HaUHdbNkrPlnwhAq_ikbZ8hHH4WHr-?usp=sharing) 
2. Transfer the APK file to your Android phone.

### **Install the APK**
1. On your phone, navigate to the APK file using a file manager.
2. Tap on the APK file to install it.
3. Enable "Install from Unknown Sources" if prompted.

---

## **How to Run Locally**

### **Prerequisites**
1. Install [Flutter](https://docs.flutter.dev/get-started/install) on your system.
2. Ensure you have an Android or iOS device/emulator set up for testing.

### **Steps**
1. Clone this repository:
   ```bash
   git clone https://github.com/your-repo/image_gallery_app.git
   cd image_gallery_app
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

---

## **Folder Structure**
```
lib/
├── blocs/               # BLoC state management
│   ├── image_bloc.dart
├── components/          # Reusable UI components
│   ├── image_card.dart
├── models/              # Data models (e.g., ImageModel)
│   ├── image_model.dart
├── screens/             # Screens of the app
│   ├── home_screen.dart
│   ├── image_viewer_screen.dart
├── services/            # API integration services
│   ├── api_service.dart
├── main.dart            # Entry point of the app
```

---

## **Technical Details**

### **Technologies Used**
- **Dart**: Programming language.
- **Flutter**: Framework for building the UI.
- **BLoC**: State management solution.
- **HTTP**: For API integration.
- **Cached Network Image**: For offline image caching.

### **API Used**
- Images are fetched from [Picsum API](https://picsum.photos/):
  ```
  https://picsum.photos/v2/list?page={page}&limit={limit}
  ```

---

## **How It Works**

### **Home Screen**
- Displays a grid of images fetched from the API.
- Implements infinite scrolling using pagination. New images are loaded as the user scrolls.

### **Full-Screen Image Viewer**
- Opens the image in a zoomable, swipeable full-screen view.
- Supports pinch-to-zoom and swipe gestures for navigation.

### **Error Handling**
- Displays a loading indicator while fetching data.
- Shows an error message if the API call fails or the user has no internet connection.

---

## **Building the APK**

1. Open the terminal in your project directory.
2. Run the following command to generate a release APK:
   ```bash
   flutter build apk --release
   ```
3. The APK will be available at:
   ```
   build/app/outputs/flutter-apk/app-release.apk
   ```

---

## **Contributing**
1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Description of changes"
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Submit a pull request.

---


Feel free to adjust the APK link and contributing section based on your needs! Let me know if you'd like further assistance.
