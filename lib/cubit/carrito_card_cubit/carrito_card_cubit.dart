import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'carrito_card_state.dart';

class CarritoCardCubit extends Cubit<CarritoCardState> {
  CarritoCardCubit({required int quantity, required double price})
    : super(CarritoCardInitial(quantity: quantity, price: price));

  void increaseQuantity() {
  final currentState = state as CarritoCardInitial;

  emit(currentState.copyWith(
    quantity: currentState.quantity + 1,
    price: currentState.price + 20, 
  ));
}

 void decreaseQuantity() {
  final currentState = state as CarritoCardInitial;
  if (currentState.quantity > 1) {
    emit(
      currentState.copyWith(
        quantity: currentState.quantity - 1,
        price: currentState.price - 20.0,
      ),
    );
  } else {
    emit(
      currentState.copyWith(
        quantity: 1, 
        price: 20.0, 
      ),
    );
  }
}
}
