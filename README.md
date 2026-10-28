# Simple Interest Calculator

A simple program that calculates the **simple interest** earned or paid on a principal amount over a period of time at a fixed rate of interest.

## What is Simple Interest?

Simple interest is interest calculated only on the original principal amount. It does not compound — the interest earned in one period does not earn interest in later periods.

## Formula

```
Simple Interest (SI) = (P × R × T) / 100
Total Amount (A)     = P + SI
```

| Symbol | Meaning                          | Example   |
|--------|----------------------------------|-----------|
| P      | Principal (initial amount)       | 10,000    |
| R      | Rate of interest (% per year)    | 5         |
| T      | Time period (in years)           | 3         |
| SI     | Simple interest                  | 1,500     |
| A      | Total amount after time T        | 11,500    |

## Features

- Accepts principal, rate of interest and time period as input
- Validates that all inputs are positive numbers
- Displays the simple interest and the total amount payable/receivable
- Easy to read and extend

## How It Works

1. The user enters the **principal amount**.
2. The user enters the **annual rate of interest** (in percent).
3. The user enters the **time period** (in years).
4. The program applies the formula `SI = (P × R × T) / 100`.
5. The program prints the simple interest and the total amount `A = P + SI`.

## Example

**Input**

```
Enter principal amount: 10000
Enter rate of interest (% per year): 5
Enter time period (years): 3
```

**Output**

```
Simple Interest : 1500.00
Total Amount    : 11500.00
```

## Sample Code (Python)

```python
def simple_interest(principal, rate, time):
    return (principal * rate * time) / 100

p = float(input("Enter principal amount: "))
r = float(input("Enter rate of interest (% per year): "))
t = float(input("Enter time period (years): "))

if p <= 0 or r <= 0 or t <= 0:
    print("All values must be positive numbers.")
else:
    si = simple_interest(p, r, t)
    print(f"Simple Interest : {si:.2f}")
    print(f"Total Amount    : {p + si:.2f}")
```

## Running the Program

1. Install [Python 3](https://www.python.org/downloads/).
2. Save the sample code above as `simple_interest.py`.
3. Run:

   ```bash
   python simple_interest.py
   ```

## Use Cases

- Calculating interest on short-term loans
- Estimating returns on fixed deposits with simple interest
- Learning basic financial math and programming
