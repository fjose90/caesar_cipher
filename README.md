# Caesar Cipher

## Table of Contents

- [Caesar Cipher](#caesar-cipher)
  - [Table of Contents](#table-of-contents)
  - [Use Case](#use-case)
  - [Project Description](#project-description)
  - [Language and Frameworks](#language-and-frameworks)

## Use Case

Julius Caesar protected his confidential information by encrypting it using a cipher. Caesar's cipher shifts each letter by a number of letters. If the shift takes you past the end of the alphabet, just rotate back to the front of the alphabet. In the case of a rotation by 3, w, x, y and z would map to z, a, b and c.

```sh
Original alphabet:      abcdefghijklmnopqrstuvwxyz
Alphabet rotated +3:  defghijklmnopqrstuvwxyzabc
```

Example:

mensage = It's not enough to be good, you have to do good, whatever the cost.

shift = 3

The alphabet is rotated by 3 , matching the mapping above. The encrypted string is:

Lw'v qrw hqrxjk wr eh jrrg, brx kdyh wr gr jrrg, zkdwhyhu wkh frvw.

Note: The cipher only encrypts letters; symbols, such as -, remain unencrypted.

## Project Description

This project is a function that has as parameters the message and the number of displacements (shift) and returns the encrypted message.

## Language and Frameworks

[Ruby](https://ruby-doc.org/)