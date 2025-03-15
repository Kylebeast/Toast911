# Toast911 - FiveM 911 & 311 Call System

## Description
**Toast911** is a **realistic emergency call system** for FiveM, allowing players to send different types of **911 and 311 calls** in chat. The script automatically creates **blips** on the map for responders and plays an **alert sound** when a call is made.

## Features
✅ Supports multiple call types:
   - **911** (Emergency) - Red Blip (ID: 55)
   - **911L** (Local Emergency) - Orange Blip (ID: 55)
   - **911P** (Priority Emergency) - Dark Red Blip (ID: 39)
   - **311** (Non-Emergency) - Blue Blip
✅ Displays the street location of the call
✅ Automatically creates a **blip** on the map for emergency responders
✅ Plays an **alert sound** when a call is made
✅ Blips automatically disappear after **5 minutes**

## Installation
1. **Download** the repository
2. Place the folder in your **resources** directory
3. Add `ensure Toast911` to your `server.cfg`
4. Restart your server

## Dependencies
- FiveM Server (QBCore / ESX / Standalone)

## Usage
Players can use the following chat commands:
- `/911 [message]` → Sends a **911 emergency call**
- `/911l [message]` → Sends a **local emergency call**
- `/911p [message]` → Sends a **priority emergency call**
- `/311 [message]` → Sends a **non-emergency call**

## License
This project is **open-source**. Feel free to modify and customize it for your server!
