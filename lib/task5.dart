class OverdrawException implements Exception {
  String errorMessage() => 'Cannot withdraw amount: Insufficient funds.';
}

class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit amount must be positive.');
      return;
    }
    balance += amount;
    print('Deposited: \$${amount}. New balance: \$${balance}');
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be positive.');
      return;
    }
    if (amount > balance) {
      throw OverdrawException();
    }
    balance -= amount;
    print('Withdrew: \$${amount}. New balance: \$${balance}');
  }
}
