enum ItemsAndCartsMenuItems {
  howToCreateNewCart(
    title: 'How do I create a new cart?',
    description: 'On the Home screen, tap the "+ Create" button in the bottom‑right corner, enter a custom name or choose a suggestion in the dialog, and confirm to add your new cart. Once the list is created, you can invite others to the list',
  ),

  howToChangeCartName(
    title: 'How to change the cart title?',
    description: 'Open your cart, tap the three‑dot menu in the top‑right, select Rename, enter your new title, and tap Save.',
  ),

  howToAddCollaborator(
    title: 'How to add a cart collaborator?',
    description: 'In your cart, tap the users icon (or the three‑dot menu) in the top‑right, choose Collaborators, tap Add Collaborator, enter their name or email, select them, and hit Save.',
  ),

  howToRemoveCollaborator(
    title: 'How to remove a cart collaborator?',
    description: 'Open your cart, tap the users icon (or the three‑dot menu) at the top‑right and choose Collaborators, then tap the ❌ next to the user’s name and confirm Delete.',
  ),

  howToArchiveCart(
    title: 'How to archive the cart?',
    description: 'Open your cart, tap the three‑dot menu in the top‑right corner, and select Archive.',
  ),

  howToDeleteCart(
    title: 'How to delete the cart?',
    description: 'Open your cart, tap the three‑dot menu in the top‑right corner, select Delete, and confirm to remove the cart.',
  ),

  howToAddProductToCart(
    title: 'How to add a product to a cart?',
    description: 'Open your cart, then either type a product name into the bottom input bar and tap it when it appears, or select a category to browse its catalog and tap any product to add it.',
  ),

  howToChangeUnitOfProduct(
    title: 'How to change the unit of the product?',
    description: 'Long‑press a product in your cart to open its details, tap the Unit field to open the units dialog, select your desired unit (pcs, kg, lb, etc.), and tap Save.',
  ),

  howToChangePriceOfProduct(
    title: 'How to change the price of the product?',
    description: 'Long‑press a product in your cart to open its details, tap the Price field, enter your new amount in the bottom sheet’s numeric keyboard, and tap Save.',
  ),

  howToChangeCommentOfProduct(
    title: 'How to change the comment of the product?',
    description: 'Long‑press a product in your cart to open its details, tap the Comment field, enter your new comment in the bottom‑sheet dialog, and tap Save.',
  ),

  howToAttachUrlOfProduct(
    title: 'How to attach a url of the product?',
    description: 'Long‑press a product to open its details, tap the Attach URL button, enter an optional Display Name and the required Address (or use the paste icon), and tap Save.',
  ),

  howToCreateProduct(
    title: 'How to create a product?',
    description: 'In your cart, either type a new product name into the bottom input bar and tap on it, or select the By Me category, tap the bottom‑right Create button, enter your product name, and tap Create.',
  ),

  howToRemoveProductFromCart(
    title: 'How to remove a product from a cart?',
    description: 'Long‑press the product in your cart to open its details, increase the quantity to 0 by tapping the bottom-right button.',
  ),
  ;

  final String title;
  final String description;

  const ItemsAndCartsMenuItems({required this.title, required this.description});
}
