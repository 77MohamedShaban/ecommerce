# E-Commerce App 🛒

A sophisticated, production-ready Flutter application built with a focus on **Clean Architecture**, **SOLID principles**, and **Reactive Programming**. This project is a comprehensive solution for modern mobile commerce, balancing high performance with a maintainable and scalable codebase.

## 📝 Description
This application provides a seamless and intuitive shopping experience. It allows users to browse a vast catalog of products, explore various categories and brands, and manage their shopping cart with ease. The goal was to create a fast, reliable, and user-centric platform that simplifies the online shopping journey from discovery to checkout.

## 🌟 The Impact
- **Architectural Integrity**: Built using **Clean Architecture** (Data, Domain, Presentation), ensuring that business logic is completely decoupled from UI and external frameworks. This makes the app highly testable and easy to scale.
- **Predictable State**: Utilizes **BLoC/Cubit** for state management, providing a clear and unidirectional data flow that reduces bugs and improves debugging speed.
- **Modular Dependency Injection**: Implementation of **Get_it** and **Injectable** allows for efficient object lifecycle management and loose coupling between components.
- **Enhanced Performance**: Integrated **Retrofit** for type-safe networking and **CachedNetworkImage** for optimized media handling, ensuring a smooth experience even on inconsistent networks.

## 🚀 Pro Features

- **🛡️ Industrial-Grade Auth**: Secure Login and Registration flow with JWT token persistence and automated session restoration.
- **🛍️ Dynamic Discovery**: Home screen featuring interactive banners, category browsing, and brand-specific filtering.
- **📄 Deep Product Insights**: Rich product detail pages with high-resolution image carousels, expandable descriptions, and specification lists.
- **🛒 Real-time Cart Management**: A robust cart system that handles quantity updates and price calculations in real-time across the app.
- **📱 Responsive Layouts**: Pixel-perfect UI that adapts to various screen resolutions using `flutter_screenutil`.
- **✨ Polished UX**: Custom splash screens, smooth page indicators, and shimmer loading effects for a premium feel.

## 🛠 Tech Stack

| Layer | Technology |
| :--- | :--- |
| **Framework** | Flutter (Dart SDK ^3.5.3) |
| **State Management** | BLoC / Cubit |
| **Networking** | Dio + Retrofit (Type-safe) |
| **Dependency Injection** | Get_it + Injectable |
| **Persistence** | Shared Preferences |
| **UI/UX Utilities** | Google Fonts, ScreenUtil, CarouselSliderPlus, SmoothPageIndicator |
| **Code Generation** | Build Runner, Json Serializable, Retrofit Generator |

## 📂 Project Architecture

```text
lib/
├── api/          # Network layer (Retrofit clients, Dio interceptors)
├── config/       # Global configs (Dependency Injection, BLoC Observer)
├── core/         # Shared utilities (Themes, Routes, Cache Utils, Constants)
├── data/         # Repositories & Data Sources (Remote/Local)
├── domain/       # Core Business Logic (Entities & Use Cases)
├── features/     # UI Layer (Screens & ViewModels/Cubit per feature)
│   └── ui/
│       ├── auth/ # Authentication flow (Login, Register)
│       └── pages/# Main App Flow (Home, Cart, Product Details)
└── main.dart     # App Entry Point & Global Provider Setup
```

## ⚙️ Development Setup

1. **Clone & Install**:
   ```bash
   git clone https://github.com/77MohamedShaban/ecommerce.git
   cd ecommerce
   flutter pub get
   ```

2. **Generate Files**:
   Since the project relies on code generation for DI and API clients:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

3. **Run App**:
   ```bash
   flutter run
   ```

---
**Crafted with ❤️ by [MOHAMED SHABAN](https://github.com/77MohamedShaban)**
