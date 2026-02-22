# weather_app

An application designed to check the weather in your area and also in other areas of the world.
Uses open-source tools.

Due to the use of code generation (Freezed, JSON Serializable), some extra steps are required before building.

---

## Dependencies

This project uses the following main packages:

### Core

- flutter_bloc
- dio
- get_it
- rxdart

### Location & Maps

- geolocator
- flutter_map
- latlong2

### Serialization & Code Generation

- freezed_annotation
- json_annotation

### Utilities

- intl
- shared_preferences

### Dev dependencies

- build_runner
- freezed
- json_serializable
- flutter_lints

---

## Before build

Install dependencies:

```
flutter pub get
```

Then run code generation:

```
dart run build_runner build --delete-conflicting-outputs
```

If you change models later, you must run it again.

---
