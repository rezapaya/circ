userInput = new UserInputHandler $('#input'), $(window)
scriptHandler = new window.script.ScriptHandler
chat = new window.chat.Chat

userInput.setContext chat
userInput.setKeyboardShortcuts chat.getKeyboardShortcuts()

scriptHandler.addEventsFrom chat
scriptHandler.addEventsFrom userInput

chat.listenToCommands scriptHandler
chat.listenToScriptEvents scriptHandler
chat.listenToIRCEvents scriptHandler
chat.init()
