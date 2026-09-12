#  Smart Car Controller System

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Firebase](https://img.shields.io/badge/firebase-%23039BE5.svg?style=for-the-badge&logo=firebase)
![ESP32](https://img.shields.io/badge/ESP32-%23000000.svg?style=for-the-badge&logo=espressif)
![C++](https://img.shields.io/badge/c++-%2300599C.svg?style=for-the-badge&logo=c%2B%2B&logoColor=white)

<img width="421" height="471" alt="image" src="https://github.com/user-attachments/assets/10380338-ba58-4197-b47f-142894695a8b" />

> **Bridging robust software architecture with real-time IoT hardware.**

##  About the Project

The **Smart Car Controller System** is a real-time, ultra-low-latency IoT project developed for the **MEGA Event at Creativa Banha** (August - September 2026). It serves as a powerful demonstration of seamless integration between a modern mobile application and embedded hardware. 

By leveraging Firebase Realtime Database with continuous data streams, the system entirely eliminates traditional polling delays. This architectural decision enables instant communication between the user's mobile device and the ESP32 microcontroller, delivering a highly responsive physical driving experience.

##  Key Features

- **Zero-Latency Control:** Utilizes WebSockets and continuous data streams for instantaneous communication between the Flutter app and the physical car.
- **Custom UI:** A sleek, user-friendly, and intuitive mobile interface tailored for precision control.
- **Clean Architecture & OOP:** The mobile application is meticulously structured using Clean Architecture and Object-Oriented Programming (OOP) principles to ensure maximum scalability and maintainability.
- **IoT Integration:** Flawless and robust synchronization between software ecosystems and hardware components.
- **Safety Timeouts:** Built-in safeguards at the hardware level to prevent motor damage or runaway scenarios in the event of connection drops.

##  System Architecture

The system is designed for a highly efficient data pipeline, transmitting directional commands (`F` for Forward, `B` for Backward, `R` for Right, `L` for Left, `S` for Stop) instantly from the user's fingertips to the physical motors:

1. **Frontend (Flutter):** Captures user inputs and translates them into control commands.
2. **Broker (Firebase):** Commands are pushed immediately to the Firebase Realtime Database.
3. **Hardware (ESP32):** The ESP32 maintains an open, continuous stream with Firebase, detecting data changes instantly without latency-inducing polling.
4. **Actuators:** The ESP32 translates the received characters into precise PWM (Pulse Width Modulation) signals sent to the **L298N Motor Driver**, which powers the DC motors accordingly.

##  Technologies Used

### Mobile Application
- **Framework:** Flutter
- **Language:** Dart
- **Design Pattern:** Clean Architecture, Object-Oriented Programming (OOP)

### Backend / Broker
- **Platform:** Firebase Realtime Database
- **Communication:** WebSockets / Continuous Data Streams

### Hardware / Embedded
- **Microcontroller:** ESP32
- **Language:** C++
- **Actuators:** L298N Motor Driver, DC Motors

## MEGA Event Showcase

This system was proudly developed for and showcased at the **MEGA Event at Creativa Banha** (August - September 2026), highlighting the incredible potential at the intersection of modern software engineering and embedded hardware systems. 

🔗 **[Read more about our journey and event showcase on LinkedIn](https://lnkd.in/p/eSvFqJnC)**



---
*Built with passion and engineering excellence for the MEGA Event 2026*
