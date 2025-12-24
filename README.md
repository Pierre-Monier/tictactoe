# Tic-Tac-Toe Flutter

Une application Tic-Tac-Toe complète développée en Flutter avec une gestion d'état moderne et une architecture propre.

## Note Synthétique du Projet

### Approche Générale
Le projet suit une architecture **Clean Architecture** en couches : modèle métier, notifier (état), et présentation UI. Cette séparation garantit une testabilité maximale et une maintenabilité optimale. La logique métier est entièrement découplée de l'UI, permettant des tests unitaires complets sans dépendances Flutter.

### Choix d'Architecture et State Management
- **State Management** : Riverpod avec `@riverpod` generator pour une gestion d'état réactive et type-safe
- **Immutabilité** : Freezed pour les classes de données (Value Objects) assurant l'immutabilité et les copies profonds
- **Modèle de données** : Board représenté par une liste de `Cell` avec positions (0-8), permettant une validation et manipulation simples
- **Patterns** : Pattern matching (switch/case) pour la gestion des résultats de jeu
- **UI Composant** : Utilisation de CustomPaint pour le rendu des symboles (Cross/Nought)

### Ce qui est Implémenté
✓ Jeu tic-tac-toe fonctionnel complet (2 joueurs)
✓ Détection automatique du gagnant (lignes, colonnes, diagonales)
✓ Gestion des parties nulles (draw)
✓ Système de score persistant en mémoire (accumule les victoires)
✓ Interface utilisateur complète et responsive
✓ Réinitialisation de jeu (replay)
✓ Device Preview pour test multi-écrans
✓ Suite de tests unitaires pour la logique métier
✓ **AI Feature avec Google Gemini** : Joueur IA alimenté par l'API Gemini pour jouer contre l'utilisateur
✓ **Thème clair/sombre** : Support automatique des modes clair et sombre basé sur le thème du système d'exploitation

### Ce qui n'a pas été Traité par Manque de Temps
- Persistence des données (SQLite/Hive) : Score stocké uniquement en mémoire
- Animations avancées : Transitions basiques uniquement
- Modes de jeu multiples (modes rapides, time-attack, etc.)
- Internationalization (i18n) : Interface en français uniquement
- Customisation du thème (couleurs, polices) : Utilise les thèmes Material par défaut

## Configuration

### Gemini API Key
L'application utilise l'API Google Gemini pour l'intelligence artificielle du jeu. Vous devez fournir votre clé API Gemini via `--dart-define` lors du lancement ou de la compilation de l'application.

#### Obtenir votre clé Gemini
1. Accédez à [Google AI Studio](https://aistudio.google.com/apikey)
2. Créez une nouvelle clé API
3. Utilisez cette clé pour lancer l'application

#### Lancer l'application avec la clé Gemini

Pour lancer l'application avec votre clé Gemini, utilisez le flag `--dart-define` :

**Pour le mode debug :**
```bash
flutter run --dart-define=GEMINI_KEY=your_gemini_api_key
```

**Pour compiler une release :**
```bash
flutter build apk --dart-define=GEMINI_KEY=your_gemini_api_key
```

Remplacez `your_gemini_api_key` par votre clé API Gemini réelle.

### Améliorations Possibles avec Plus de Temps
- Ajouter une base de données locale pour persister les scores entre sessions
- Ajouter des animations de transition et feedback haptic
- Support multi-langue (anglais, espagnol, etc.)
- Thème sombre/clair avec preferences utilisateur
- Leaderboard et statistiques avancées
