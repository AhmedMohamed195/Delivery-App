part of 'carrito_card_cubit.dart';

sealed class CarritoCardState extends Equatable {
  const CarritoCardState();

  @override
  List<Object> get props => [];
}

final class CarritoCardInitial extends CarritoCardState {
  final int quantity; 
  final double price; 

  const CarritoCardInitial({
    required this.quantity,
    required this.price,
  });

  @override
  List<Object> get props => [quantity, price];

  CarritoCardInitial copyWith({int? quantity, double? price}) {
    return CarritoCardInitial(
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }
}
