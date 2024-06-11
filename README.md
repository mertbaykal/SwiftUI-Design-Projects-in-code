### SwiftUI Design Projects

This repository contains various design projects created using SwiftUI. The projects demonstrate user interface design and interactive components. Each project showcases the use of different UI elements, helping users learn how to create effective interfaces with SwiftUI.

---

## Table of Contents
- [Installation](#installation)
- [Projects](#projects)
  - [ContentView](#contentview)
  - [Inspiration Page](#inspiration-page)
  - [Login Page](#login-page)
  - [Recipe Page](#recipe-page)
- [Contributing](#contributing)
- [License](#license)

---

## Installation
To clone and run this project locally, follow these steps:

1. **Clone the repository:**
   ```sh
   git clone https://github.com/username/Design.git
   ```

2. **Navigate to the project directory:**
   ```sh
   cd Design
   ```

3. **Open the project in Xcode:**
   ```sh
   open Design.xcodeproj
   ```

4. **Run the project:**
   In Xcode, select the target device and click the 'Run' button.

---

## Projects

### ContentView
`ContentView` is a main screen created to demonstrate basic UI components and layouts. It includes various colored rectangles, text, and images.

```swift
struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            let screenWidth = geometry.size.width
            let screenHeight = geometry.size.height
            
            VStack {
                TextComponent(content: "hello", fontSize: 30)
                HStack(spacing: 0) {
                    RedView().frame(width: screenWidth/2, height: 100)
                    Rectangle().fill(.green).frame(width: 80, height: 80).padding([.leading, .trailing], 3)
                    Rectangle().fill(.blue).frame(width: 50, height: 50).padding(.top, 30).padding(.bottom, 3)
                }
                Image("Image").frame(width: screenWidth/2, height: screenHeight/2)
            }
        }
    }
}
```

### Inspiration Page
`InspirationPage` is a screen design featuring a motivational message and a button. It uses a geometry reader to dynamically position components based on screen dimensions.

```swift
struct InspirationPage: View {
    var body: some View {
        GeometryReader { geometry in
            let screenWidth = geometry.size.width
            let screenHeight = geometry.size.height
            VStack {
                Image("job").frame(width: screenWidth, height: screenHeight / 3).padding(0)
                VStack(spacing: 100) {
                    Text("Steve Jobs")
                    Text("The people who are crazy enough to think they can change the world are the ones who do.").multilineTextAlignment(.center).padding()
                    Button("Inspire") {
                        // Action to be taken when button is tapped.
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(30)
                }
            }
        }
    }
}
```

### Login Page
`LoginPage` is a simple login screen with fields for username and password, and a login button.

```swift
struct LoginPage: View {
    @State private var username = " "
    @State private var password = " "

    var body: some View {
        VStack(spacing: 50) {
            Image("logo")
            TextField("username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Log In") {
                // Login actions
            }.foregroundColor(.white)
                .padding()
                .background(.red)
                .cornerRadius(8)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.indigo)
    }
}
```

### Recipe Page
`RecipePage` is a screen designed to show a recipe. It includes an image, title, description, and two buttons.

```swift
struct RecipePage: View {
    var body: some View {
        GeometryReader { geometry in
            let screenWidth = geometry.size.width
            let screenHeight = geometry.size.height
            
            VStack {
                Image("foodimage")
                    .resizable()
                    .frame(width: screenWidth, height: screenHeight / 3)
                VStack(alignment: .leading) {
                    Text("Meatballs").font(.system(size: 30))
                        .foregroundColor(.red)
                    HStack {
                        Text("suitable for grilling")
                        Spacer()
                        Text("January 10")
                    }.padding()
                }.padding()
                Text("Grilled meatballs are a staple of Turkish cuisine. Typically prepared with ground meat, onions, parsley, and spices, the meatball mixture is shaped and cooked on a grill or barbecue.")
                    .multilineTextAlignment(.leading)
                    .padding([.leading, .trailing], 50)
                Spacer()
                HStack(spacing: 0) {
                    Button("like") {
                        // Like button actions
                    }.foregroundColor(.black)
                        .frame(width: screenWidth / 2, height: screenHeight / 10)
                        .background(.yellow)
                    Button("comment") {
                        // Comment button actions
                    }.foregroundColor(.white)
                        .frame(width: screenWidth / 2, height: screenHeight / 10)
                        .background(.orange)
                }
            }
        }
    }
}
```

---

## Contributing
If you would like to contribute to this project, please create a pull request or open an issue. We welcome all feedback and contributions!

---

## License
This project is licensed under the MIT License. For more information, please see the `LICENSE` file.
