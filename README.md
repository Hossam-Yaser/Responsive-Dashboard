# Responsive Dashboard 📊

A modern Flutter application delivering a fully adaptive admin dashboard — beautifully crafted to work seamlessly across **mobile**, **tablet**, and **desktop** screens.

## 📖 Project Overview

Responsive Dashboard is a cross-platform Flutter UI project demonstrating clean widget architecture and a robust responsive design system. The app presents key business metrics including customer counts, income figures, a monthly revenue bar chart, a popular products catalog, a customer list, and a comments section — all wrapped in a minimal, professional design.

The core of the project is a custom `AdaptiveLayoutWidget` that uses `LayoutBuilder` to automatically switch between three dedicated layouts based on screen width, ensuring a consistent and polished experience on any device.

## 🎥 Demo


https://github.com/user-attachments/assets/bdbcdadf-eb0e-4fc0-aa0d-de32b1832672


---

## 🚀 Tech Stack

### Core Technologies
- **Flutter** - UI framework for building natively compiled cross-platform apps
- **Dart** `^3.10.7` - Programming language optimized for client development

### UI & Presentation
- **google_fonts** `^8.0.1` - Custom typography (Lato, Inter, Lemon)
- **flutter_svg** `^2.2.3` - SVG rendering for crisp icons and logos
- **fl_chart** `^1.1.1` - Interactive bar charts for revenue visualization
- **font_awesome_flutter** `^10.12.0` - Extended icon library
- **smooth_page_indicator** `^2.0.1` - Page indicator for mobile carousels

### Developer Experience
- **lint** `^2.8.0` - Strict lint rules for enforced code quality
- **flutter_lints** `^6.0.0` - Recommended Flutter lints
- **flutter_test** - Built-in widget and unit testing framework

### Build Targets
- Android · iOS · Web · Windows · Linux · macOS

---

## 🏗️ Architecture

The project follows a **widget-first, view-driven architecture** with clear separation of concerns:

```
lib/
├── main.dart                              # Application entry point
│
├── utils/                                 # Shared design system & helpers
│   ├── app_assets.dart                    # Asset path constants
│   ├── app_colors.dart                    # Centralized color palette
│   ├── app_text_styles.dart               # Responsive typography system
│   └── spacing.dart                       # SizedBox helper utilities
│
└── views/                                 # Feature screens & widgets
    ├── dashboard_view.dart                # Root view — delegates to AdaptiveLayoutWidget
    ├── shared_widgets/
    │   ├── adaptive_layout_widget.dart    # Core breakpoint router
    │   └── main_logo_widget.dart
    ├── desktop_layout/
    │   ├── desktop_layout_builder.dart    # Full sidebar + main content
    │   └── widgets/                       # 20+ modular desktop widgets
    ├── tablet_layout/
    │   └── tablet_layout.dart             # Drawer-based nav + content
    └── mobile_layout/
        ├── mobile_layout.dart             # Stacked mobile UI
        └── widgets/                       # Mobile-specific widgets
```

### Responsive Breakpoints

The `AdaptiveLayoutWidget` uses `LayoutBuilder` to switch layouts based on available width:

| Breakpoint | Layout | Screen Type |
|---|---|---|
| `< 600px` | `MobileLayout` | Phones |
| `600px – 1099px` | `TabletLayout` | Tablets / Small laptops |
| `≥ 1100px` | `DesktopLayoutBuilder` | Desktops / Wide screens |

### Responsive Typography

`AppTextStyles` computes a `scaleFactor` from the screen width and clamps all font sizes within **±20%** of their base values, guaranteeing readability at every breakpoint.

---

## ✨ Features

### 📱 Core Functionality
- **Adaptive Layouts** — Three dedicated layouts that switch automatically at defined breakpoints
- **Interactive Bar Chart** — Monthly revenue data with custom Y-axis labels and horizontal grid lines
- **Analytics Overview Cards** — Customer count and income figures with growth percentage badges
- **Category Sidebar** — SVG-icon navigation (Home, Income, Products, Promote, Shop), collapses to a Drawer on tablet
- **Popular Products Section** — Horizontal product card list with images and earnings data
- **Customer List** — Avatar-based customer list with dividers
- **Comments Section** — Scrollable comments display with date metadata
- **Top Bar** — Search box, notification icon, create button, and profile actions

### 🎨 UI/UX Highlights
- **Light Theme** — Clean white and light-gray color scheme
- **Custom Typography** — Lato, Inter, and Lemon via Google Fonts
- **SVG Support** — Resolution-independent icons and logo
- **Centralized Design Tokens** — Colors, fonts, and assets managed through abstract utility classes for effortless theming
- **Strict Code Quality** — `package:lint` in strict mode enforced across the entire codebase

---

## 🧪 Testing

The project includes a `widget_test.dart` under the `test/` directory using Flutter's built-in testing framework.

```dart
test/
└── widget_test.dart    # Widget smoke tests
```

To run tests:

```bash
flutter test
```

> **Note:** The current suite covers basic smoke tests. Future iterations plan to expand with unit tests for `getResponsiveFontSize` / `getScaleFactor` and integration tests for layout breakpoint switching.

---

## 📁 Folder Structure

```
responsive_dashboard/
├── assets/
│   ├── images/                        # Product and customer images (.png)
│   └── svgs/                          # Icons and logo (.svg)
│
├── lib/
│   ├── main.dart
│   ├── utils/
│   │   ├── app_assets.dart
│   │   ├── app_colors.dart
│   │   ├── app_text_styles.dart
│   │   └── spacing.dart
│   └── views/
│       ├── dashboard_view.dart
│       ├── shared_widgets/
│       │   ├── adaptive_layout_widget.dart
│       │   └── main_logo_widget.dart
│       ├── desktop_layout/
│       │   ├── desktop_layout_builder.dart
│       │   └── widgets/
│       ├── tablet_layout.dart/
│       │   └── tablet_layout.dart
│       └── mobile_layout/
│           ├── mobile_layout.dart
│           └── widgets/
│
├── test/
│   └── widget_test.dart
├── analysis_options.yaml
└── pubspec.yaml
```

---

## 🚀 How to Run the Project

### Prerequisites
- Flutter SDK `>=3.16.0`
- Dart SDK `^3.10.7`
- Android Studio / VS Code with Flutter extensions
- A connected device, emulator, or browser

### Installation Steps

1. **Clone the repository**
```bash
git clone https://github.com/Hossam-Yaser/Responsive-Dashboard
cd responsive_dashboard
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
# For development
flutter run

# For a specific platform
flutter run -d chrome        # Web
flutter run -d windows       # Windows Desktop
flutter run -d android       # Android
flutter run -d ios           # iOS
```

4. **Build for production**
```bash
flutter build apk --release   # Android APK
flutter build web --release   # Web
flutter build windows         # Windows
```

---

## 🔮 Future Improvements

### Planned Features
- [ ] **State Management** — Integrate Riverpod or BLoC for dynamic data and filter states
- [ ] **Live Data** — Connect to a real backend API or Firebase to replace static mock data
- [ ] **Dark / Light Theme Toggle** — User-selectable theme with a full dark color palette
- [ ] **Collapsible Sidebar** — Toggle button to collapse/expand the desktop navigation sidebar
- [ ] **Date Range Filtering** — Make the "All Times" dropdown functional with real chart filtering
- [ ] **Offline Support** — Cache dashboard data for offline viewing
- [ ] **Multi-language Support** — Internationalization (i18n) via the `intl` package
- [ ] **Share / Export** — Export chart data or share dashboard snapshots

### Technical Improvements
- [ ] Unit tests for `getResponsiveFontSize` and `getScaleFactor`
- [ ] Widget tests for all three layout breakpoints
- [ ] Integration tests for critical navigation flows
- [ ] Accessibility improvements (semantic labels, keyboard navigation)
- [ ] CI/CD pipeline setup
- [ ] Performance optimization for long list views

---

## 📸 Screenshots

<div align="center">
  <h3>Application Preview</h3>
  <p>Explore the dashboard across all screen sizes</p>

<table>
  <tr>
    <td align="center">
      <img width="1920" height="1020" 
           alt="Screenshot 2026-03-01 140353" 
           src="https://github.com/user-attachments/assets/b303cd8d-39ab-4b50-a7a9-ff885503d306" />
      <br/>
      <b>Desktop Layout</b>
    </td>
  </tr>

  <tr>
    <td align="center">
      <img width="1190" height="913" 
           alt="Screenshot 2026-03-01 140421" 
           src="https://github.com/user-attachments/assets/c2939cfc-ad19-44f8-b825-32bb432626b4" />
      <br/>
      <b>Tablet Layout</b>
    </td>
  </tr>

  <tr>
    <td align="center">
      <img width="250" height="2400" 
           alt="Screenshot 2026-03-01 140500" 
           src="https://github.com/user-attachments/assets/48074636-4076-4c03-b75b-36202a8665e9" />
      <br/>
      <b>Mobile – Home</b>
    </td>
  </tr>
</table>
</div>


---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📝 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Developer

**Hossam Yasser Abdelhady**  
📱 Cross-platform Mobile App Developer | Flutter | Dart  
💼 Passionate about creating modern, efficient, and user-friendly mobile applications.  

* 💼 [LinkedIn](https://www.linkedin.com/in/hossam-yasser-abdelhady/)
* 🐙 [GitHub](https://github.com/Hossam-Yaser)
* ✉️ Email: [hossamabdelhady000@gmail.com](hossamabdelhady000@gmail.com)


## 🙏 Acknowledgments

- Big thanks for Eng. Tharwat Samy for his effort
- Google Books API for providing comprehensive book data
- Flutter team for the amazing framework
- All open-source contributors whose packages made this project possible

---

⭐ If you found this project helpful, please consider giving it a star!

**Made with ❤️ and Flutter**
