drop database if exists purrget;

create database purrget;

use purrget;

create table categories (
  id int not null auto_increment primary key,
  categoryName varChar(255) not null unique key
);

create table cats (
  id int not null auto_increment primary key,
  catName varChar(255) not null,
  price decimal(10,2) not null default 99.99,
  rating decimal(10,2) null default 0.00,
  category_id int not null,
  INDEX categ_ind (category_id),
    FOREIGN KEY (category_id)
      REFERENCES categories(id)
      ON DELETE CASCADE,
  unique key (catName)
);


create table images (
  id int not null auto_increment primary key,
  url varChar(510) not null,
  cat_id int not null,
  INDEX cat_ind (cat_id),
    FOREIGN KEY (cat_id)
      REFERENCES cats(id)
      ON DELETE CASCADE
);

-- categories
INSERT INTO categories (categoryName) VALUES ('Floof');
INSERT INTO categories (categoryName) VALUES ('Hairless');
INSERT INTO categories (categoryName) VALUES ('Chonk');
INSERT INTO categories (categoryName) VALUES ('Adorable');

-- cats
-- actual data
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Ash', 199.99, 4.00, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Gizmo', 99.99, 3.33, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Kimono', 149.99, 3.5, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Midnyght', 200.00, 4.6, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Sassy', 49.49, 4.50, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Sphynx', 9.99, 0.00, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Tuxedo', 12.45, 4.00, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Walnut', 199.99, 4.25, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Xito', 499.99, 5.00, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Covid', 1.49, 0.50, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Grumpy', 99.99, 4.33, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Luna', 999.99, 1.5, 1);

-- dummy data - Adorable
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Oliver', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Bella', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Simba', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Chloe', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Max', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Lucy', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Lily', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Nala', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Sophie', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Milo', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Rocky', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Coco', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Charlie', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Smokey', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Mia', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Jack', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Angel', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Tigger', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Oreo', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Shadow', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Felix', 99.99, 3, 4);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Willow', 99.99, 3, 4);

-- dummy data - Floofs
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Romeo', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Molly', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Tiger', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Sammy', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Jasper', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Biscuit', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Bailey', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Gracie', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Loki', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Sasha', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Simon', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Toby', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Ruby', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Cleo', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Peanut', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Oscar', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Leo', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Lucky', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Buddy', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Daisy', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Jasmine', 99.99, 3, 1);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Callie', 99.99, 3, 1);


-- dummy data - Chonks
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Pepper', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Leon', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Lola', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Kitty', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Patches', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Princess', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Missy', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Lulu', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Mittens', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Sebastian', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Abby', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Orion', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Yuki', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Scout', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Sadie', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Cupcake', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('George', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Butters', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Cuddles', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Boots', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Whiskers', 99.99, 3, 3);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Mr. Snuffles', 99.99, 3, 3);

-- dummy data - Hairless
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Sheba', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Daenerys', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Tiffany', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Stella', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Ella', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Gypsy', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Alice', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Penny', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Cooper', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Harley', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Sam', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Garfield', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('NiuNiu', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Tucker', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Bandit', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Candy', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Ziggy', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Socks', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Rusty', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Batman', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Gatsby', 99.99, 3, 2);
INSERT INTO cats (catName, price, rating, category_id) VALUES ('Raven', 99.99, 3, 2);

-- images
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Ash/IMG_3878.PNG', 1);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Ash/IMG_3879.PNG', 1);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Ash/IMG_3880.PNG', 1);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Gizmo/1.jpg', 2);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Gizmo/2.jpg', 2);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Gizmo/3.jpg', 2);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Kimono/Screen+Shot+2020-06-16+at+7.33.10+PM.png', 3);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Kimono/Screen+Shot+2020-06-16+at+7.33.17+PM.png', 3);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Kimono/Screen+Shot+2020-06-16+at+7.33.54+PM.png', 3);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Midnyght/Screen+Shot+2020-06-16+at+4.12.31+PM.jpg', 4);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Midnyght/Screen+Shot+2020-06-16+at+4.13.18+PM.jpg', 4);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Midnyght/Screen+Shot+2020-06-16+at+4.13.51+PM.jpg', 4);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Sassy/1.jpg', 5);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Sassy/2.jpg', 5);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Sassy/3.jpg', 5);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Sphynx/Screen+Shot+2020-06-16+at+4.14.26+PM.jpg', 6);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Sphynx/Screen+Shot+2020-06-16+at+4.14.47+PM.jpg', 6);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Sphynx/Screen+Shot+2020-06-16+at+4.15.06+PM.jpg', 6);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Tuxedo/1.jpg', 7);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Tuxedo/2.jpg', 7);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Tuxedo/3.jpg', 7);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Walnut/IMG_3873.PNG', 8);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Walnut/IMG_3874.PNG', 8);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Walnut/IMG_3875.PNG', 8);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Xito/Screen+Shot+2020-06-16+at+4.10.59+PM.jpg', 9);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Xito/Screen+Shot+2020-06-16+at+4.11.14+PM.jpg', 9);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Xito/Screen+Shot+2020-06-16+at+4.11.22+PM.jpg', 9);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Covid/IMG_1668.jpeg', 10);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Covid/IMG_1670.jpeg', 10);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Covid/IMG_1671.jpeg', 10);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Grumpy/IMG_1661.jpeg', 11);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Grumpy/IMG_1662.jpeg', 11);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Grumpy/IMG_1664.jpeg', 11);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Luna/IMG_1665.jpeg', 12);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Luna/IMG_1666.jpeg', 12);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Luna/IMG_1667.jpeg', 12);

-- Adorable
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 13);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 14);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 15);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 16);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 17);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 18);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 19);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 20);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 21);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 22);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 23);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 24);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 25);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 26);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 27);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 28);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 29);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 30);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 31);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 32);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 33);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Adorable.jpg', 34);

-- Floof
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 35);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 36);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 37);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 38);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 39);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 40);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 41);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 42);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 43);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 44);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 45);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 46);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 47);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 48);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 49);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 50);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 51);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 52);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 53);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 54);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 55);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Floof.jpg', 56);

-- Chonk
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 57);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 58);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 59);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 60);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 61);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 62);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 63);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 64);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 65);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 66);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 67);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 68);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 69);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 70);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 71);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 72);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 73);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 74);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 75);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 76);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 77);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Chonk.jpg', 78);

-- Hairless
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 79);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 80);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 81);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 82);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 83);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 84);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 85);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 86);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 87);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 88);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 89);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 90);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 91);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 92);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 93);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 94);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 95);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 96);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 97);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 98);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 99);
INSERT INTO images (url, cat_id) VALUES ('https://purrget.s3.us-east-2.amazonaws.com/Generic+Cats/Hairless.jpg', 100);