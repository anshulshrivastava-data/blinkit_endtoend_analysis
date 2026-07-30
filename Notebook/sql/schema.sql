-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: blinkit_db
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blinkit_customer_feedback`
--

DROP TABLE IF EXISTS `blinkit_customer_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blinkit_customer_feedback` (
  `feedback_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `rating` bigint DEFAULT NULL,
  `feedback_text` text,
  `feedback_category` text,
  `sentiment` text,
  `feedback_date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blinkit_customers`
--

DROP TABLE IF EXISTS `blinkit_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blinkit_customers` (
  `customer_id` bigint DEFAULT NULL,
  `customer_name` text,
  `email` text,
  `phone` bigint DEFAULT NULL,
  `address` text,
  `area` text,
  `pincode` bigint DEFAULT NULL,
  `registration_date` text,
  `customer_segment` text,
  `total_orders` bigint DEFAULT NULL,
  `avg_order_value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blinkit_delivery_performance`
--

DROP TABLE IF EXISTS `blinkit_delivery_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blinkit_delivery_performance` (
  `order_id` bigint DEFAULT NULL,
  `delivery_partner_id` bigint DEFAULT NULL,
  `promised_time` text,
  `actual_time` text,
  `delivery_time_minutes` double DEFAULT NULL,
  `distance_km` double DEFAULT NULL,
  `delivery_status` text,
  `reasons_if_delayed` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blinkit_inventory`
--

DROP TABLE IF EXISTS `blinkit_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blinkit_inventory` (
  `product_id` bigint DEFAULT NULL,
  `date` text,
  `stock_received` bigint DEFAULT NULL,
  `damaged_stock` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blinkit_inventorynew`
--

DROP TABLE IF EXISTS `blinkit_inventorynew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blinkit_inventorynew` (
  `product_id` bigint DEFAULT NULL,
  `date` text,
  `stock_received` bigint DEFAULT NULL,
  `damaged_stock` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blinkit_marketing_performance`
--

DROP TABLE IF EXISTS `blinkit_marketing_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blinkit_marketing_performance` (
  `campaign_id` bigint DEFAULT NULL,
  `campaign_name` text,
  `date` text,
  `target_audience` text,
  `channel` text,
  `impressions` bigint DEFAULT NULL,
  `clicks` bigint DEFAULT NULL,
  `conversions` bigint DEFAULT NULL,
  `spend` double DEFAULT NULL,
  `revenue_generated` double DEFAULT NULL,
  `roas` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blinkit_order_items`
--

DROP TABLE IF EXISTS `blinkit_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blinkit_order_items` (
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `unit_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blinkit_orders`
--

DROP TABLE IF EXISTS `blinkit_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blinkit_orders` (
  `order_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `order_date` text,
  `promised_delivery_time` text,
  `actual_delivery_time` text,
  `delivery_status` text,
  `order_total` double DEFAULT NULL,
  `payment_method` text,
  `delivery_partner_id` bigint DEFAULT NULL,
  `store_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blinkit_products`
--

DROP TABLE IF EXISTS `blinkit_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blinkit_products` (
  `product_id` bigint DEFAULT NULL,
  `product_name` text,
  `category` text,
  `brand` text,
  `price` double DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `margin_percentage` double DEFAULT NULL,
  `shelf_life_days` bigint DEFAULT NULL,
  `min_stock_level` bigint DEFAULT NULL,
  `max_stock_level` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category_icons`
--

DROP TABLE IF EXISTS `category_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_icons` (
  `category` text,
  `Img` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rating_icon`
--

DROP TABLE IF EXISTS `rating_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_icon` (
  `Rating` bigint DEFAULT NULL,
  `Emoji` text,
  `Star` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-30 12:25:34
