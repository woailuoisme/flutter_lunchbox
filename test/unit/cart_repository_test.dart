import 'package:dio/dio.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lunchbox/core/services/app_database.dart';
import 'package:lunchbox/core/services/storage_service.dart';
import 'package:lunchbox/features/cart/datasources/cart_rest_client.dart';
import 'package:lunchbox/features/cart/entities/cart_product_model.dart';
import 'package:lunchbox/features/cart/repositories/cart_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

CartProductModel _product({int stock = 10}) => CartProductModel(
  id: 1,
  name: '测试商品',
  description: 'desc',
  price: 9.9,
  imageUrl: 'https://example.com/a.png',
  stock: stock,
  type: 'food',
);

void main() {
  late AppDatabase db;
  late CartRepository repo;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    db = AppDatabase(NativeDatabase.memory());
    repo = CartRepository(
      StorageService(await SharedPreferences.getInstance()),
      CartRestClient(Dio()),
      db,
    );
  });

  tearDown(() => db.close());

  test('重复加购累加数量，超过库存时封顶', () async {
    await repo.addToCart(_product(stock: 2), deviceId: 'd1');
    await repo.addToCart(_product(stock: 2), deviceId: 'd1');
    await repo.addToCart(_product(stock: 2), deviceId: 'd1');

    expect(await repo.getProductQuantityInCart('1'), 2);
    expect(await repo.isInCart('1'), isTrue);
    expect((await repo.getCartItems()).single.deviceId, 'd1');
  });

  test('改数量、切选中、删除逐条生效', () async {
    await repo.addToCart(_product(), deviceId: 'd1');
    final id = (await repo.getCartItems()).single.id;

    await repo.updateCartItemQuantity(id, 5);
    await repo.toggleItemSelected(id, false);

    final item = (await repo.getCartItems()).single;
    expect(item.quantity, 5);
    expect(item.isSelected, isFalse);

    await repo.removeFromCart(id);
    expect(await repo.isCartEmpty(), isTrue);
  });
}
