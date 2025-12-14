# Caesar Cipher

## 📌 Overview

The Caesar Cipher is one of the earliest known encryption techniques, attributed to Julius Caesar. It works by shifting each letter in a message by a fixed number of positions in the alphabet. When the shift goes past the end of the alphabet, it wraps around to the beginning.

This project implements a **Ruby method** that encrypts a message using the Caesar Cipher while preserving letter case and ignoring non-alphabetic characters.

---

## 🧠 How It Works

For a given shift of `3`:

```text
Original alphabet:  abcdefghijklmnopqrstuvwxyz
Shifted alphabet:  defghijklmnopqrstuvwxyzabc
```

Example:

```ruby
message = "It's not enough to be good, you have to do good, whatever the cost."
shift = 3
```

Encrypted output:

```text
Lw'v qrw hqrxjk wr eh jrrg, brx kdyh wr gr jrrg, zkdwhyhu wkh frvw.
```

📌 **Note:**

* Only letters are encrypted
* Numbers, spaces, and symbols remain unchanged
* Uppercase and lowercase letters are preserved

---

## ✨ Features

* Supports positive and negative shifts
* Normalizes large shift values (e.g. `87`, `-52`)
* Preserves original letter casing
* Ignores non-alphabetic characters

---

## 🛠️ Implementation

The main method takes two parameters:

```ruby
def caesar_cipher(message, shift)
```

* `message` → the input string to encrypt
* `shift` → number of positions to shift each letter

It returns the encrypted string.

---

## 🧪 Testing

The project includes **RSpec tests** covering:

* Uppercase and lowercase letters
* Positive, negative, and zero shifts
* Large shift normalization
* Mixed input with numbers, spaces, and symbols

To run the tests:

```sh
rspec
```

---

## ⏱️ Algorithm Complexity

* **Time Complexity:** O(n), where n is the number of characters in the message
* **Space Complexity:** O(n), due to the creation of a new encrypted string

## 🧹 Code Style

This project follows standard Ruby style guidelines:

* 2-space indentation
* Clear and descriptive variable names
* Small, readable methods
* Emphasis on clarity over cleverness

---

## 💎 Language

* **Ruby**

---

## 🎓 Origin

This project is part of [The Odin Project](https://www.theodinproject.com/) Ruby curriculum and was developed as a learning exercise focused on algorithms, edge cases, and clean code practices.
