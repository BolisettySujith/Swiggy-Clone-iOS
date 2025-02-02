import Foundation

class AppConstants {
    
    static let banners: [String] = [
        "https://blog.swiggy.com/wp-content/uploads/2024/10/Famous-04.png",
        "https://blog.swiggy.com/wp-content/uploads/2024/04/Rx-North-Indian.png",
        "https://blog.swiggy.com/wp-content/uploads/2024/04/IMG_3882-scaled.jpg",
        "https://blog.swiggy.com/wp-content/uploads/2024/04/Rx-Biryani-Blog-Cover-01.png",
        "https://blog.swiggy.com/wp-content/uploads/2024/04/Rx-North-Indian.png",
        "https://blog.swiggy.com/wp-content/uploads/2024/04/IMG_3882-scaled.jpg",

    ]
    
    static let exploreRestaurants : [RestaurantModel] = [
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/nln9ubwxhtwv60rjpvlm",
            name: "The Urban Spice",
            rating: 4.5,
            time: "30 mins",
            popularItems: "Pasta, Pizza",
            location: "Downtown",
            distance: "1.2 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/7/16/5b9c53df-e0cb-48fc-ac31-f02735592edc_10575.jpg",
            name: "Burger Nation",
            rating: 4.3,
            time: "25 mins",
            popularItems: "Burgers, Fries",
            location: "Main Street",
            distance: "2.5 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/9/25/87c93596-f97f-401a-9cf8-606553e04a64_936458.jpg",
            name: "Sushi World",
            rating: 4.7,
            time: "15 mins",
            popularItems: "Sushi, Sashimi",
            location: "Harborview",
            distance: "1.8 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/a79403b3daea9a1ede0a7b1ec36bc943",
            name: "Tandoor Express",
            rating: 4.8,
            time: "20 mins",
            popularItems: "Indian Thali, Paneer",
            location: "Eastside",
            distance: "3.0 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/11/12/288a1642-d466-4662-bb54-2d27b7f28cb4_977917.jpg",
            name: "Dragon Kitchen",
            rating: 4.2,
            time: "35 mins",
            popularItems: "Fried Rice, Manchurian",
            location: "Sunset Boulevard",
            distance: "4.2 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/6/12/806f9c5a-7d65-4319-bf52-35913d0577a6_350560.jpg",
            name: "Momo Magic",
            rating: 4.6,
            time: "28 mins",
            popularItems: "Momos, Dumplings",
            location: "Lakeside",
            distance: "2.8 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/9/3/1a4b28c8-3cda-4ef9-8385-0cea7d191eaf_273161.jpg",
            name: "Taco Delights",
            rating: 4.4,
            time: "30 mins",
            popularItems: "Tacos, Nachos",
            location: "Fiesta Square",
            distance: "1.5 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/10/8/5539071e-bd61-4e7b-ac8e-37d02b61d4db_420484.jpg",
            name: "Steakhouse 88",
            rating: 4.9,
            time: "20 mins",
            popularItems: "Steak, Fries",
            location: "Grill Street",
            distance: "2.0 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/gmcud4kfjsy2kf2bbrme",
            name: "Pasta & Co.",
            rating: 3.9,
            time: "25 mins",
            popularItems: "Pasta, Garlic Bread",
            location: "Baker's Lane",
            distance: "1.0 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/11/22/58b8f6a4-e360-4640-a771-92442e523a87_994854.jpg",
            name: "Noodle Station",
            rating: 4.5,
            time: "18 mins",
            popularItems: "Noodles, Spring Rolls",
            location: "Chinatown",
            distance: "2.1 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/12/17/eaa1c7b3-2162-4924-8bbb-2022fefa3945_439628.JPG",
            name: "Curry House",
            rating: 4.6,
            time: "24 mins",
            popularItems: "Curry, Roti",
            location: "Market Square",
            distance: "1.7 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/whfviizdgvwg0uwfk8dy",
            name: "Biryani Bay",
            rating: 4.3,
            time: "15 mins",
            popularItems: "Biryani, Kebabs",
            location: "Old Town",
            distance: "1.3 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/7/28/669c68ba-a0a7-4dc8-b642-d22d5318d1a6_396741.JPG",
            name: "Salad Supreme",
            rating: 4.8,
            time: "28 mins",
            popularItems: "Salads, Smoothies",
            location: "Green Park",
            distance: "2.3 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/12/23/a58040de-06dc-40d2-bff9-95522a58bdb4_197238.JPG",
            name: "Wraps & Rolls",
            rating: 4.7,
            time: "22 mins",
            popularItems: "Sandwiches, Wraps",
            location: "Park Avenue",
            distance: "1.6 km"
        ),
        RestaurantModel(
            image: "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/12/23/da7b84bd-6e62-4c24-a1ce-589ea71a4941_74444.JPG",
            name: "Risotto House",
            rating: 4.2,
            time: "30 mins",
            popularItems: "Pasta, Risotto",
            location: "West End",
            distance: "3.5 km"
        ),
    ]

    
    static let topRestaurants: [RestaurantModel] = [
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/7/16/5b9c53df-e0cb-48fc-ac31-f02735592edc_10575.jpg",
            name: "Bangalore Bistro",
            rating: 4.5,
            time: "30 min",
            popularItems: "Biryani, Tandoori",
            location: "MG Road, Bangalore",
            distance: "1.5 km"
        ),
        
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/6/11/4ee8bc77-ca9f-41bd-a0f3-511c70902b91_77949.JPG",
            name: "The Food Hub",
            rating: 4.2,
            time: "20 min",
            popularItems: "Pizza, Burgers",
            location: "Indiranagar, Bangalore",
            distance: "2.1 km"
        ),
        
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/11/29/bc7d25a1-b576-4540-a951-585519799529_23846.jpg",
            name: "Spice Corner",
            rating: 3.9,
            time: "40 min",
            popularItems: "Indian, Punjabi",
            location: "Koramangala, Bangalore",
            distance: "3.0 km"
        ),
        
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/10/24/3ab699af-9b2c-4107-9d66-88c5e4e540ae_822315.JPG",
            name: "Tandoor Treats",
            rating: 4.7,
            time: "25 min",
            popularItems: "Tandoor, Biryani",
            location: "Jayanagar, Bangalore",
            distance: "1.2 km"
        ),
        
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/9/18/5e7991d9-6a0d-4034-82a9-59bd2bbdc0b3_43836.jpg",
            name: "The Curry Spot",
            rating: 4.3,
            time: "35 min",
            popularItems: "Curry, Roti",
            location: "Whitefield, Bangalore",
            distance: "5.4 km"
        ),
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/12/9/5b283b24-3a8e-4feb-90f3-98a9c7a3b5b4_432976.JPG",
            name: "Biryani Delights",
            rating: 4.8,
            time: "50 min",
            popularItems: "Biryani, Kebab",
            location: "Bellandur, Bangalore",
            distance: "4.0 km"
        ),
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/12/12/e7ccd786-be92-4743-8e0c-f3d3a577d48f_622202.jpg",
            name: "Pizza Mania",
            rating: 3.5,
            time: "15 min",
            popularItems: "Pizza, Pasta",
            location: "Banaswadi, Bangalore",
            distance: "3.2 km"
        ),
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/9/30/59e251dc-b6d9-4566-97c3-931b83ef7061_643832.JPG",
            name: "Sushi World",
            rating: 4.1,
            time: "30 min",
            popularItems: "Sushi, Rolls",
            location: "Frazer Town, Bangalore",
            distance: "2.8 km"
        ),
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/5/19/741d7d41-1341-4358-b6e0-cc22b8e82f9a_750396.JPG",
            name: "Café Bliss",
            rating: 3.8,
            time: "20 min",
            popularItems: "Coffee, Sandwich",
            location: "Rajajinagar, Bangalore",
            distance: "6.2 km"
        ),
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/8/30/14414940-565f-4b31-8880-eb44478a5ec0_681612.jpg",
            name: "Grill Junction",
            rating: 4.0,
            time: "45 min",
            popularItems: "Grill, BBQ",
            location: "HSR Layout, Bangalore",
            distance: "3.6 km"
        ),
        RestaurantModel(
            image:"https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/RX_THUMBNAIL/IMAGES/VENDOR/2024/12/2/83e964f1-413b-4e48-8027-b2168fccf24d_788304.JPG",
            name: "Pasta Paradise",
            rating: 4.6,
            time: "25 min",
            popularItems: "Pasta, Salad",
            location: "Sarjapur Road, Bangalore",
            distance: "4.3 km"
        )
    ]
    
    static let allRestaurants : [RestaurantModel] =  exploreRestaurants + topRestaurants

    static let imageUrls = [
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/12/19/1374dec2-82eb-4aba-b062-afeaf1222ed1_CakesDesserts.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Biryani.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_burger.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/12/19/8e758aa3-2ce1-46bc-bdb9-1cb3f1a6f4e3_GiftHamper.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Pizzas.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_North%20Indian.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Chinese.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/17/58760e8e-324f-479e-88fa-31800120ea38_Rolls1.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_chocolate%20icecream.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_Salad-1.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Kebabs.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/f1263395-5d4a-4775-95dc-80ab6f3bbd89_shawarma.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/f1263395-5d4a-4775-95dc-80ab6f3bbd89_pasta.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/f1263395-5d4a-4775-95dc-80ab6f3bbd89_pastry.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Noodles.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_Pure%20Veg.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_Salad.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Momos.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Paratha.png",
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Dosa.png"
    ]
    
    static let menuItems = [
        // Indian Cuisine
        "Butter Chicken",
        "Paneer Tikka Masala",
        "Biryani",
        "Garlic Naan",
        "Gulab Jamun",
        
        // Italian Cuisine
        "Pizza Margherita",
        "Spaghetti Carbonara",
        "Fettuccine Alfredo",
        "Bruschetta",
        "Tiramisu",
        
        // Chinese Cuisine
        "Kung Pao Chicken",
        "Vegetable Fried Rice",
        "Spring Rolls",
        "Hot and Sour Soup",
        "Dim Sum",

        // American Cuisine
        "Cheeseburger",
        "Barbecue Ribs",
        "Mac and Cheese",
        "Chicken Wings",
        "Apple Pie",
        
        // Mexican Cuisine
        "Tacos al Pastor",
        "Chicken Quesadilla",
        "Guacamole with Chips",
        "Churros",
        "Enchiladas",
        
        // Japanese Cuisine
        "Sushi Platter",
        "Ramen",
        "Teriyaki Chicken",
        "Edamame",
        "Mochi Ice Cream",
        
        // Mediterranean Cuisine
        "Falafel Wrap",
        "Hummus and Pita",
        "Greek Salad",
        "Lamb Gyro",
        "Baklava",
        
        // Thai Cuisine
        "Pad Thai",
        "Green Curry",
        "Tom Yum Soup",
        "Thai Fried Rice",
        "Mango Sticky Rice",

        // Dessert and Beverages
        "Chocolate Lava Cake",
        "Blueberry Cheesecake",
        "Espresso Coffee",
        "Masala Chai",
        "Fresh Lime Soda"
    ]

}
