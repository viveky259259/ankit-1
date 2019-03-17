class ProductModel{
    String _name,_imageUrl;
    int _price;

    ProductModel(this._name, this._imageUrl, this._price);

    int get price => _price;

    set price(int value) {
      _price = value;
    }

    get imageUrl => _imageUrl;

    set imageUrl(value) {
      _imageUrl = value;
    }

    String get name => _name;

    set name(String value) {
      _name = value;
    }


}