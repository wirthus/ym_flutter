import 'package:test/test.dart';
import 'package:ym_api/ym_api.dart';

/// tests for ProductsApi
void main() {
  final instance = YmApi().getProductsApi();

  group(ProductsApi, () {
    //Future<ProductEntity> productControllerCreate(CreateProductDto createProductDto) async
    test('test productControllerCreate', () async {
      // TODO
    });

    //Future<ProductEntity> productControllerGet(num id) async
    test('test productControllerGet', () async {
      // TODO
    });

    //Future<ProductGroupWithProductsEntity> productControllerGetGroupWithProducts(num id, { bool subGroups }) async
    test('test productControllerGetGroupWithProducts', () async {
      // TODO
    });

    //Future<BuiltList<ProductGroupEntity>> productControllerGetGroups() async
    test('test productControllerGetGroups', () async {
      // TODO
    });

    //Future<BuiltList<GroupProductsCountEntity>> productControllerGetGroupsProductsCount() async
    test('test productControllerGetGroupsProductsCount', () async {
      // TODO
    });

    //Future<BuiltList<ProductGroupWithProductsEntity>> productControllerGetGroupsWithProducts({ bool subGroups }) async
    test('test productControllerGetGroupsWithProducts', () async {
      // TODO
    });

    //Future<ProductInfoEntity> productControllerGetInfo(num id) async
    test('test productControllerGetInfo', () async {
      // TODO
    });

    //Future<BuiltList<ProductEntity>> productControllerGetProductsByGroup(num id) async
    test('test productControllerGetProductsByGroup', () async {
      // TODO
    });

    //Future<BuiltList<ProductGroupEntity>> productControllerGetSubGroups() async
    test('test productControllerGetSubGroups', () async {
      // TODO
    });

    //Future<BuiltList<ProductSubGroupEntity>> productControllerGetSubGroupsByProductId(num id) async
    test('test productControllerGetSubGroupsByProductId', () async {
      // TODO
    });

    //Future<BuiltList<ProductEntity>> productControllerSearch(String name) async
    test('test productControllerSearch', () async {
      // TODO
    });

    //Future<BuiltList<ProductSearchResultEntity>> productControllerSearchEx(SearchProductAdvancedDto searchProductAdvancedDto) async
    test('test productControllerSearchEx', () async {
      // TODO
    });
  });
}
