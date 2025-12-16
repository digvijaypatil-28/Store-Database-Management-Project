-- 1. STORES TABLE
CREATE TABLE stores(
    store_id INT PRIMARY KEY AUTO_INCREMENT,
    store_name VARCHAR(200) NOT NULL,
    phone VARCHAR(25) NOT NULL UNIQUE,
    email VARCHAR(200) UNIQUE,
    street VARCHAR(200),
    city VARCHAR(30) NOT NULL,
    state VARCHAR(30),
    zip_code VARCHAR(30),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- 2. BRANDS TABLE
CREATE TABLE brands(
    brand_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_name VARCHAR(200) NOT NULL UNIQUE
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- 3. CATEGORIES TABLE
CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(200) NOT NULL UNIQUE   
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- 4. PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(200) UNIQUE NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    model_year INT NOT NULL,
    list_price DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_products_brands 
        FOREIGN KEY (brand_id) REFERENCES brands(brand_id),
    CONSTRAINT fk_products_category
        FOREIGN KEY (category_id) REFERENCES categories(category_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- 5. CUSTOMERS TABLE
CREATE TABLE customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) ,
    phone VARCHAR(30) NOT NULL UNIQUE,
    email VARCHAR(200)  UNIQUE,
    street VARCHAR(200) ,
    city VARCHAR(30) NOT NULL,
    state VARCHAR(30) ,
    zip_code VARCHAR(30) ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- 6. STAFFS TABLES
CREATE TABLE staffs (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200),
    email VARCHAR(200) UNIQUE,
    phone VARCHAR(30) NOT NULL UNIQUE,
    active TINYINT(1) NOT NULL DEFAULT 1,
    store_id INT NOT NULL,
    manager_id INT ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_staffs_store
        FOREIGN KEY (store_id) REFERENCES stores (store_id),
    
    CONSTRAINT fk_staffs_manager
        FOREIGN KEY (manager_id) REFERENCES staffs(staff_id)

) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- 7. ORDERS TABLE
CREATE TABLE orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_status TINYINT(1) NOT NULL DEFAULT 1,
    order_date DATE NOT NULL,
    required_date DATE ,
    shipped_date DATE ,
    store_id INT NOT NULL ,
    staff_id INT NOT NULL ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_orders_store 
        FOREIGN KEY (store_id) REFERENCES stores (store_id),
    
    CONSTRAINT fk_orders_staff
        FOREIGN KEY (staff_id) REFERENCES staffs(staff_id),

    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- 8. ORDERS ITEMS
CREATE TABLE order_items(
    order_id INT NOT NULL ,
    item_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    list_price DECIMAL(10,2) NOT NULL,
    discount DECIMAL(10,2) NOT NULL DEFAULT 0.00,

    PRIMARY KEY (order_id,item_id),

    CONSTRAINT fk_orders_items_order
        FOREIGN KEY (order_id) REFERENCES orders(order_id),
    
    CONSTRAINT fk_orders_items_product
        FOREIGN KEY (product_id) REFERENCES products(product_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- 9. STOCKS TABLE
CREATE TABLE stocks (
    store_id INT NOT NULL, 
    product_id INT NOT NULL, 
    quantity INT NOT NULL,

    PRIMARY KEY (store_id,product_id),

    CONSTRAINT fk_stocks_store
        FOREIGN KEY (store_id) REFERENCES stores(store_id),

    CONSTRAINT fk_stocks_product
        FOREIGN KEY (product_id) REFERENCES products(product_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
