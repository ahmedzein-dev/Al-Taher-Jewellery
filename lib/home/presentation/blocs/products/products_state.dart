part of 'products_cubit.dart';

class ProductsState extends Equatable {
  final RequestState getProductsState;
  final RequestState getLatestProductsState;

  //final FilterState? filterState;
  final String? getProductsError;
  final String? getLatestProductsError;
  final HomeEntity homeEntity;
  final List<ProductEntity> latestProducts;

  // final List<Post> searchedPosts;

  const ProductsState({
    this.getProductsState = RequestState.loading,
    this.getLatestProductsState = RequestState.loading,
    // this.filterState,
    this.getProductsError,
    this.getLatestProductsError,
    this.latestProducts = const [],
    this.homeEntity = const HomeEntity(
      earrings: [],
      necklaces: [],
      rings: [],
      bars: [],
      bracelets: [],
      slider: [],
    ),
    //  this.searchedPosts = const [],
  });

  ProductsState copyWith({
    RequestState? getProductsState,
    RequestState? getLatestProductsState,
    //  FilterState? filterState,
    List<ProductEntity>? latestProducts,
    String? getProductsError,
    String? getLatestProductsError,
    HomeEntity? homeEntity,
    // List<Post>? searchedPosts,
  }) {
    return ProductsState(
      getProductsState: getProductsState ?? this.getProductsState,
      getLatestProductsState:
          getLatestProductsState ?? this.getLatestProductsState,
      //   filterState: filterState ?? this.filterState,
      getProductsError: getProductsError ?? this.getProductsError,
      getLatestProductsError:
          getLatestProductsError ?? this.getLatestProductsError,
      homeEntity: homeEntity ?? this.homeEntity,
      latestProducts: latestProducts ?? this.latestProducts,
      //  searchedPosts: searchedPosts ?? this.searchedPosts,
    );
  }

  @override
  List<Object?> get props => [
        getProductsState,
        getLatestProductsState,
        //  filterState,
        getProductsError,
        getLatestProductsError,
        homeEntity,
        latestProducts
        //     searchedPosts,
      ];
}
