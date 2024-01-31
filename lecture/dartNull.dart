
void main() {
  /** Nullable type */
  int? x;
  x = 10;
  x = null;

  x == null? print("x is null") : print("x isn't null");

  /**Null error handling */
  int? y = x ?? 0;
  
  /**
   * Same as this
   * int? x,y;
   * if (x== null) y = 0;
   */

  /**
   * Map
   */

  var mathConts = {
  'exp ': 2.718 , 
  'pi ': 3.14 , 
  true : 'yes ', 
  false :'no',
 };

  mathConts.forEach((key, value) {
    print(value);
  });

  Map<String,int> myproduct = {
    'iphone': 48000,
    'Note 12': 35000,
    'Mi': 30000,
  };

  Map<String,List<int>> myproductList = {
    'iphone': [48000, 4000, 28000],
    'Note 12': [35000,32211,34511],
    'Mi': [30000,43252, 12333],
  };

  myproduct.forEach((key, value) {
    print('$key $value');
  });

  myproductList.forEach((key, value) {
    
    print('$key= $value');
  });

  /**
   * Function
   */
  
}