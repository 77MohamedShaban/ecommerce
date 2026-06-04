# E-Commerce App 🛒

A modern, robust, and scalable Flutter E-Commerce application built using best practices, Clean Architecture principles, and powerful state management.
This application is a user-friendly e-commerce platform where users can easily browse products, explore categories, and manage their shopping cart. It is designed to provide a simple and efficient way for users to discover and purchase products online.

## 🚀 Features

- **Authentication**: Secure Login and Sign-up flow with JWT token management.
- **Product Discovery**: Browse categories, sub-categories, and a wide range of products.
- **Product Details**: Detailed view with image sliders, descriptions, size/color selection, and reviews.
- **Cart Management**: Add/remove items, update quantities, and real-time price calculation.
- **Wishlist**: Save favorite products for later.
- **Search & Filtering**: Quick search functionality to find specific products.
- **Responsive UI**: Fully responsive design using `flutter_screenutil` to support various screen sizes.
- **Smooth Animations**: Enhanced user experience with `page_transition` and `smooth_page_indicator`.

## 🛠 Tech Stack & Tools

- **Framework**: [Flutter](https://flutter.dev/)
- **State Management**: [Flutter BLoC](https://pub.dev/packages/flutter_bloc) for predictable state transitions.
- **Dependency Injection**: [Get_it](https://pub.dev/packages/get_it) & [Injectable](https://pub.dev/packages/injectable) for modularity.
- **Networking**: [Dio](https://pub.dev/packages/dio) & [Retrofit](https://pub.dev/packages/retrofit) for REST API communication.
- **Local Storage**: [Shared Preferences](https://pub.dev/packages/shared_preferences) for caching user tokens and preferences.
- **Architecture**: Clean Architecture (Data, Domain, and Presentation layers).
- **UI Utilities**:
    - `flutter_screenutil` for responsiveness.
    - `cached_network_image` for optimized image loading.
    - `carousel_slider_plus` for beautiful banners.
    - `flutter_svg` for scalable vector graphics.

## 📂 Project Structure

The project follows a feature-first folder structure:

```text
lib/
├── core/                  # Global utilities, DI, theme, routes, and network configuration
│   ├── DI/                # Dependency Injection setup
│   ├── apis/              # API endpoints and networking logic
│   ├── remote/            # Local & Remote data source handlers
│   ├── resources/         # App constants, colors, and styles
│   ├── routes_manager/    # Navigation and routing logic
│   └── widget/            # Reusable UI components
├── features/              # Feature-specific modules
│   ├── auth/              # Login, Register, and Forgot Password
│   ├── cart/              # Shopping cart logic and UI
│   ├── main_layout/       # Home, Categories, Favorites, and Profile tabs
│   ├── product_details/   # Detailed product view
│   └── products_screen/   # Product listing and filtering
└── main.dart              # Application entry point
```

## ⚙️ Installation & Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/77MohamedShaban/ecommerce.git
   ```
2. **Navigate to the project directory**:
   ```bash
   cd ecommerce
   ```
3. **Install dependencies**:
   ```bash
   flutter pub get
   ```
4. **Generate code (for DI & Retrofit)**:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
5. **Run the app**:
   ```bash
   flutter run
   ```

## 🎨 Screenshots 
| Login | Home | Product Details | Cart |
| :---: | :---: | :---: | :---: |
| ![Login](https://via.placeholder.com/200) | ![Home](https://via.placeholder.com/200) | ![Details](https://via.placeholder.com/200) | ![Cart](https://via.placeholder.com/200) |

---
**Maintained by MOHAMED SHABAN**
