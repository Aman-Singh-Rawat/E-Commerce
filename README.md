# E-Commerce Flutter App

A robust open-source e-commerce application built with **Flutter**. This project includes a modular structure, onboarding, authentication, shopping flows, and personalization features tailored for practical usage and learning.

---

## Features

- **Onboarding** (with skip/next) for a welcoming start
- **Authentication**: Signup, login, email verification, password reset
- **Home/Store Experience**:
  - Product banners and promotions
  - Browse categories and brands
  - Wishlist and cart
- **Profile & Settings**:
  - Manage account, addresses, orders, coupons, notifications, privacy
- **Modern UI/UX**:
  - Light/dark mode, custom icons, smooth navigation, beautiful typography

---

## Structure Overview

```
lib/
  app.dart               // Main app entry, theme setup
  main.dart              // Entry point
  features/
    authentication/      // Signup, login, onboarding, password
    personalization/     // Profile & settings
    shop/                // Home, store, wishlist
  common/widgets/        // Reusable shared UI components
  utils/
    constants/           // Colors, images, text, sizes
    theme/               // Custom theme setup
    helpers/             // Utility functions
assets/
  fonts/                 // App fonts
  icons/                 // Brand/category/payment icons
  images/                // Product images, banners, animation
```

## Dependencies and Tech

- **Flutter** (Material 3, dart 3.9+)
- **GetX** for state management
- Carousel, smooth page indicators, custom asset icons, and more
- Cleanly separated constants, theme, and widget libraries

## Getting Started

1. **Clone repository**
   ```bash
   git clone <repo-url>
   cd e_commerce
   ```
2. **Install dependencies**
   ```bash
   flutter pub get
   ```
3. **Run the app**
   ```bash
   flutter run
   ```
4. **Assets** are included for products, banners, onboarding, and icons – see `assets/`.

---

## Customization

- To add products/categories: add images/icons in `assets/` and reference them in `lib/utils/constants/`
- UI: Tweak fonts, colors, and themes via `lib/utils/constants/` and `lib/utils/theme/`

---

## Contributing

Feel free to fork, open issues, or submit pull requests!

---

MIT License © 2025
