import 'package:dart_bank/models/account.dart';

void transferService(Account origin, Account destination, double value) {
  if (origin == destination) {
    throw Exception('Contas iguais');
  } 
 

 if (origin.getBalance() <= value) {
    throw Exception('Saldo insuficiente');
  }
  if (value <= 0) {
   throw Exception('Valor invalido');
  }
  
  origin.removeBalance(value);
    destination.addBalance(value);
} 