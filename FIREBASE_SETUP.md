# Firebase Setup — Tomorrow Checklist

Everything on the app side is ready. Follow these steps to turn on real backend.
Estimated time: **15 minutes**.

## Prerequisites

- You're logged into `firebase-tools` locally (`firebase login`)
- You have a Firebase project created (or will create one below)

## Step 1 — Find Your Firebase Project ID

```bash
firebase projects:list
```

Note the `Project ID` column. If you don't have a project yet:

```bash
firebase projects:create balam-ai-prod --display-name "Balam.AI"
```

(Project IDs must be globally unique — if `balam-ai-prod` is taken, try `balam-ai-2026` or similar.)

## Step 2 — Configure Flutter for Firebase

From project root:

```bash
cd ~/Desktop/AppAltai/Balam.AI
export PATH="$PATH:$HOME/.pub-cache/bin"
flutterfire configure --project=<YOUR_PROJECT_ID>
```

Select **all platforms**: iOS, Android, Web (use space to check, enter to confirm).

This generates:
- `lib/firebase_options.dart` (gitignored — secrets stay off GitHub)
- `ios/Runner/GoogleService-Info.plist` (gitignored)
- `android/app/google-services.json` (gitignored)

## Step 3 — Update main.dart to Use Generated Options

Edit `lib/main.dart`:

```dart
import 'firebase_options.dart';

// Inside main():
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
```

## Step 4 — Enable Services in Firebase Console

Go to https://console.firebase.google.com → your project.

### Authentication
1. Click **Authentication** in left sidebar
2. **Get started**
3. **Sign-in method** → Email/Password → Enable

### Firestore Database
1. Click **Firestore Database** → **Create database**
2. Choose **production mode**
3. Pick a region close to users: `europe-west3` (Frankfurt) or `asia-south1` (Mumbai)
4. Deploy the security rules we already have:
   ```bash
   firebase deploy --only firestore:rules
   ```

### Analytics
Analytics is usually enabled automatically during project creation. Check:
- **Analytics** → **Dashboard** — you should see an empty dashboard

## Step 5 — Test Signup Flow

```bash
flutter run
```

1. Sign up with a new email/password
2. Go to Firebase Console → Authentication → Users tab
3. You should see the new user appear
4. Go to Firestore Database → **users** collection → the user's doc with `createdAt`, `email`, etc.

## Step 6 — Check Analytics

Events start flowing within minutes. See them at:
- **Firebase Console** → **Analytics** → **DebugView** (real-time)
- **Analytics** → **Events** (24hr delay for aggregates)

Events we track:
- `sign_up`, `login`, `stage_selected`, `due_date_set`
- `tracking_entry`, `ai_chat_message`, `tool_opened`
- `sound_played`, `contraction_logged`, `food_viewed`
- `product_clicked`, `feature_viewed`

## Step 7 — Rebuild for TestFlight

```bash
flutter clean
flutter build ipa --release
```

Open `build/ios/ipa/` in Finder, drag the `.ipa` into Transporter.

## Where to See Your Signups

- **Firebase Console → Authentication → Users** — list of every signup with email + date
- **In-app → Admin login → Live Metrics** — total users, today, past 7 days, stage breakdown
- **Firebase Console → Analytics → Dashboard** — daily active users, retention, funnels

## If Something Goes Wrong

The app gracefully falls back to demo mode if Firebase isn't configured. You can always roll back:

```bash
rm lib/firebase_options.dart
flutter run
```

The app will continue working — just without persistence.
