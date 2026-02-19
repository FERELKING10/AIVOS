# AIVO - E-Commerce Mobile App

<p align="center">
  <img src="readme%20image/Build%20you%20shop%20app%20in%20days.png" alt="AIVO E-Commerce App" style="width: 500px; height: auto;">
</p>

<p align="center">
  AIVO is a modern, feature-rich e-commerce mobile application built with Flutter. Designed for both Android and iOS, AIVO provides a seamless shopping experience with 100+ carefully crafted screens covering all essential e-commerce functionality.
</p>

## Features

AIVO includes a comprehensive set of features and screens:

### Core Functionality
- **Onboarding & Authentication** - Welcome screens, login, signup, and password recovery
- **Product Browsing** - Intuitive product search, filters, and discovery
- **Shopping Cart** - Manage items with ease
- **Checkout** - Streamlined payment and order process
- **Order Tracking** - Track your orders in real-time
- **User Profile** - Manage account, addresses, and preferences
- **Wallet & Payments** - Secure payment methods and balance management

### UI Components
- **100+ Screens** - Comprehensive screen library covering all shopping scenarios
- **Light & Dark Themes** - Full theme support for both light and dark modes
- **Custom Loading States** - Elegant skeleton loaders for better UX
- **Responsive Design** - Optimized for all device sizes and orientations

### Navigation
- **Bottom Navigation** - Easy access to main sections (Home, Discover, Bookmarks, Cart, Profile)
- **Smooth Transitions** - Polished page transitions and animations
- **Deep Linking** - Complete routing system with named routes

## Architecture

The project is organized with a clean, modular structure:

```
lib/
├── components/        # Reusable UI components
├── models/           # Data models
├── screens/          # Screen pages (organized by feature)
├── route/            # Navigation and routing
├── theme/            # Theme and styling
├── constants.dart    # App constants
├── main.dart         # App entry point
└── entry_point.dart  # Main navigation controller
```

## Screens Included

### Auth & Onboarding
- Onboarding carousel
- Login & Sign up
- Password recovery
- Terms & conditions

### Main Navigation
- **Home** - Featured products and offers
- **Discover** - Browse categories
- **Bookmarks** - Saved items
- **Cart** - Shopping cart management
- **Profile** - User account

### Product Pages
- Product details with reviews
- Product gallery
- Shipping information
- Returns policy
- Size guide
- Store availability

### Checkout & Orders
- Cart review
- Address selection
- Payment methods
- Order confirmation
- Order tracking
- Order history

### User Management
- Profile editing
- Address management
- Notification settings
- Payment methods
- Wallet management
- Help & support

## Technology Stack

- **Flutter** - Cross-platform mobile framework
- **Dart** - Programming language
- **Material Design** - UI design system
- **Custom Animations** - Smooth transitions and effects

## Getting Started

### Prerequisites
- Flutter 3.2.0 or higher
- Dart 3.0.0 or higher
- Android SDK 21+ or iOS 12+

### Installation

1. Clone the repository
```bash
git clone <repository-url>
cd AIVOS
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
flutter run
```

## Development

### Building

Build an Android APK:
```bash
flutter build apk --release
```

Build an iOS app:
```bash
flutter build ios --release
```

### Customization

The app is highly customizable:
- **Colors & Branding** - Update in `lib/theme/app_theme.dart`
- **Assets** - Add your images to `assets/images/`
- **Strings** - Centralize text in constants or use localization
- **API Integration** - Connect to your backend in the data models

## Project Structure Details

### /lib/components
Reusable UI components used across screens:
- Product cards and variations
- Banner components
- Loading skeletons
- Modal dialogs

### /lib/screens
Organized by feature domain:
- `home/` - Home page components
- `product/` - Product detail screens
- `auth/` - Authentication flow
- `checkout/` - Cart and payment flow
- `profile/` - User account screens
- And more...

### /lib/theme
Application theming:
- `app_theme.dart` - Theme configuration
- Light and dark theme colors
- Typography settings

### /lib/route
Navigation management:
- `router.dart` - Route generation logic
- `route_constants.dart` - Route path constants
- `screen_export.dart` - Screen imports

## Performance Optimization

- Skeleton loading states for smoother UX
- Cached image loading
- Efficient list rendering with builders
- Optimized page transitions

## Future Enhancements

Potential areas for expansion:
- Backend API integration
- User authentication with Firebase
- Real-time notifications
- Advanced search and filtering
- Social features (reviews, ratings, recommendations)
- Multi-language support
- Payment gateway integration

## License

This project is proprietary and confidential.

## Support

For questions or support, please refer to the project documentation or contact the development team.

---

**Built with ❤️ using Flutter**
