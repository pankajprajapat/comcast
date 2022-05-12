# List of rake task to generate basket and add apple in basket
Things you may want to cover:

* This will create 50 Baskets in DB
```
rake data:generate_basket
```

* This will create number of Baskets in DB
```
rake data:generate_basket[pass any number here]
```

* This will add apple in existing baskets (this will auto pick data in rake task)
```
rake data:add_apple_to_basket
```

* This will add apple in existing baskets (first arges is variety and second one is count)
```
rake data:add_apple_to_basket[apple,400]
```