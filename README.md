# 🎉 FizzBuzz Project

Welcome to the **FizzBuzz** project, a fun and simple Elixir application that reads numbers from a file, converts them to integers, and checks whether each number is divisible by 3, 5, or both! 🚀

This project follows the classic FizzBuzz rules:

- If a number is divisible by **3**, it returns `:fizz`.
- If a number is divisible by **5**, it returns `:buzz`.
- If a number is divisible by **both 3 and 5**, it returns `:fizzbuzz`.
- Otherwise, it returns the number itself.

## 🛠️ How It Works

The FizzBuzz module provides a function that reads numbers from a file, processes them, and returns the results in a list. Each number in the list will either be returned as `:fizz`, `:buzz`, `:fizzbuzz`, or just the number.

### File Input

The file input should contain a **comma-separated list of numbers** as strings. For example:

1,2,3,4,5,10,15,20

The program will:

1. Read the file.
2. Convert each number from a string to an integer.
3. Apply the FizzBuzz logic.

## 🚀 Getting Started

### Prerequisites

To run this project, you'll need to have **Elixir** installed on your machine. You can download it [here](https://elixir-lang.org/install.html).

### Running the Project

1. Clone this repository to your local machine.
2. Create a file named `numbers.txt` in the root directory with some numbers separated by commas. For example:

1,2,3,4,5,10,15,20

3. Run the project in the terminal with:

```bash
iex -S mix
```
Use the build/1 function to process the file:

FizzBuzz.build("numbers.txt")

The result will look something like this:

{:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}

Running the Tests
This project comes with a simple set of tests to ensure everything works correctly. To run the tests, simply execute:

````mix test```

📄 Project Structure

FizzBuzz Module:
build/1: Reads the file, processes the numbers, and returns the results.

FizzBuzzTest Module:
Contains test cases to validate the functionality.

🔧 Example
Here’s an example of how the program behaves with the input file numbers.txt:

Input:
1,2,3,4,5,10,15,20

Output:
{:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}

💡 Notes

Make sure the file you provide exists in the root directory of the project.
The file must contain numbers separated by commas without spaces (e.g., 1,2,3).

🤝 Contributing
Feel free to fork this project, open issues, or submit pull requests! Contributions are always welcome! 😊

📜 License
This project is licensed under the MIT License.