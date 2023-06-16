-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 08:44 AM
-- Server version: 5.7.40-google-log
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `padicure_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `howtocure` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `image`, `description`, `howtocure`) VALUES
(1, 'Brown Spot', 'https://storage.googleapis.com/cs_padicure/public/items/BrownSpot.jpg', 'Brown spots on rice leaves typically appear as irregularly shaped patches or spots of varying sizes. The color may range from light brown to dark brown, and the spots can be surrounded by a yellow halo or reddish discoloration.\r\n\r\nCauses:\r\n\r\nFungal or Bacterial Infections: Diseases like leaf blast (caused by the fungus Magnaporthe oryzae) or bacterial leaf blight (caused by Xanthomonas oryzae) can result in brown spots on rice leaves. These pathogens typically enter through wounds or natural openings and cause lesions, leading to the development of brown spots.\r\n\r\nNutrient Deficiencies: Brown spots can also be a symptom of nutrient deficiencies, such as manganese or copper deficiency. Insufficient levels of these nutrients can disrupt the metabolic processes within the plant, resulting in leaf discoloration.\r\n\r\nEnvironmental Stress: Various environmental factors can contribute to brown spots on rice leaves. For instance, extreme temperature fluctuations, drought stress, excessive sunlight exposure, or improper irrigation practices can all lead to leaf damage and the formation of brown spots.\r\n\r\nInsect or Pest Damage: Certain insects or pests can cause brown spots on rice leaves through feeding activities. For example, leafhoppers, stem borers, or planthoppers can puncture the leaves, causing localized tissue damage and brown spots.\r\n\r\nChemical Damage: Exposure to certain chemicals, including herbicides or pesticides, in excessive amounts or incorrect application can result in leaf damage, leading to brown spots.', 'To prevent the occurrence of brown spots on rice leaves, it\'s essential to implement certain preventive measures. Here are some strategies that can help minimize the risk of brown spot development:\r\n\r\n- Crop Rotation: Practice crop rotation by alternating rice cultivation with other non-rice crops. This helps break the disease cycle and reduces the build-up of pathogens that cause brown spots.\r\n\r\n- Resistant Varieties: Plant rice varieties that are resistant or tolerant to diseases causing brown spots. Resistant varieties can significantly reduce the incidence and severity of brown spot infections.\r\n\r\n- Sanitation: Maintain good field sanitation practices by removing and destroying crop residues from previous rice crops. This reduces the presence of fungal spores or bacterial cells that can cause brown spots.\r\n\r\n- Proper Irrigation: Ensure proper irrigation practices to avoid waterlogged or excessively dry conditions. Consistent moisture levels can help prevent stress on the rice plants and reduce susceptibility to diseases.\r\n\r\n- Balanced Fertilization: Implement a balanced fertilization program based on soil tests and crop nutrient requirements. Adequate levels of essential nutrients, especially manganese and copper, can help prevent nutrient deficiencies associated with brown spot development.\r\n\r\n- Integrated Pest Management (IPM): Implement IPM strategies to manage insect pests effectively. Regular scouting, early detection, and appropriate pest control measures can prevent pest damage that may lead to brown spots.\r\n\r\n- Proper Chemical Application: Follow proper guidelines and recommended dosages when applying chemicals, including herbicides and pesticides. Incorrect application or excessive use of chemicals can cause leaf damage and increase the susceptibility of rice plants to diseases.\r\n\r\n- Timely Planting: Plant rice at the appropriate time to avoid exposing the crop to unfavorable weather conditions. Early planting can help establish healthy plants before disease pressure increases.\r\n\r\n- Regular Monitoring: Conduct regular field inspections to monitor for any signs of disease or pest infestation. Prompt identification and intervention can help prevent the spread of brown spot infections.\r\n\r\n- Consult Experts: Seek guidance from agricultural extension services, local experts, or plant pathologists for specific recommendations tailored to your region and the prevalent diseases in your area.\r\n\r\nThe specific preventive measures may vary depending on your location, climate, and prevalent diseases. Local agricultural authorities and experts can provide the most accurate and relevant advice for preventing brown spots on rice leaves in your specific farming context.'),
(2, 'Healthy', 'https://storage.googleapis.com/cs_padicure/public/items/BrownSpot.jpg', 'A healthy rice leaf is an essential component of a thriving rice plant. Here is a description of a healthy rice leaf:\r\n\r\n- Color: A healthy rice leaf typically displays a vibrant green color. The shade of green may vary depending on the rice variety, but the leaf should appear uniformly green without any yellowing, browning, or discoloration.\r\n\r\n- Texture: A healthy rice leaf has a smooth and supple texture. When touched, it should feel firm and turgid, indicating that it is well-hydrated and properly functioning.\r\n\r\n- Shape and Size: Rice leaves are generally long and slender, with a lanceolate or ovate shape. The leaves emerge from the stem in an alternate arrangement and are evenly spaced. The size of the leaf can vary depending on the growth stage of the plant, with younger leaves being smaller and gradually increasing in size as they mature.\r\n\r\n- Leaf Structure: Each healthy rice leaf consists of a leaf blade and a leaf sheath. The leaf blade is the flattened, expanded portion of the leaf responsible for photosynthesis. The leaf sheath surrounds the stem at the base of the leaf, providing support and protection.\r\n\r\n- Veins and Midrib: Healthy rice leaves have a well-developed network of veins and a prominent midrib running through the center of the leaf. The veins transport water, nutrients, and sugars throughout the leaf, enabling optimal growth and functioning.\r\n\r\n- Leaf Orientation: Healthy rice leaves typically exhibit an upward orientation, reaching towards the sunlight. This allows maximum exposure of the leaf surface to light, facilitating efficient photosynthesis.\r\n\r\n- Absence of Symptoms: A healthy rice leaf should be free from any visible symptoms of diseases, pests, or nutrient deficiencies. It should not show spots, lesions, holes, wilting, curling, or any other signs of damage or abnormalities.', 'To maintain healthy rice leaves, it is essential to implement proper cultivation and management practices. Here are some tips to help you maintain healthy rice leaves:\r\n\r\n- Adequate Irrigation: Provide sufficient and timely irrigation to rice plants. Rice requires consistent moisture, but avoid waterlogging as it can lead to oxygen deprivation and root rot. Maintain proper drainage in the field to prevent water stagnation.\r\n\r\n- Nutrient Management: Ensure proper nutrient management by conducting soil tests and applying appropriate fertilizers based on the specific nutrient requirements of rice. A balanced supply of essential nutrients, including nitrogen, phosphorus, and potassium, is crucial for healthy leaf development. Follow recommended fertilization practices and monitor nutrient levels throughout the growing season.\r\n\r\n- Weed Control: Implement effective weed control measures to minimize competition for nutrients, light, and space. Weeds can hinder the growth and development of rice plants and may serve as hosts for diseases and pests. Use appropriate herbicides, manual weeding, or integrated weed management strategies to keep weed populations in check.\r\n\r\n- Disease and Pest Management: Regularly monitor rice plants for signs of diseases and pests. Implement integrated pest management (IPM) practices to minimize the impact of pests and diseases on rice leaves. This may include the use of resistant rice varieties, biological control agents, cultural practices (such as crop rotation and field sanitation), and judicious application of pesticides when necessary.\r\n\r\n- Proper Plant Spacing: Plant rice seedlings at appropriate spacing to ensure adequate sunlight penetration and airflow between plants. Crowded plantings can lead to increased humidity and promote the development of diseases.\r\n\r\n- Timely Harvest: Harvest rice at the appropriate stage of maturity. Delayed harvesting can increase the risk of diseases, particularly fungal infections. Harvesting at the right time helps preserve the quality of rice leaves and minimize post-harvest losses.\r\n\r\n- Field Sanitation: Practice good field sanitation by removing and properly disposing of crop residues, as they can harbor pests and diseases. This helps reduce the carryover of pathogens and pests to the next planting season.\r\n\r\n- Monitoring and Early Intervention: Regularly monitor rice plants for any signs of stress, nutrient deficiencies, diseases, or pests. Early detection allows for timely intervention and management, reducing the impact on rice leaves and overall plant health.\r\n\r\nNote that specific management practices may vary depending on the rice-growing region, prevalent strains of the fungus, and recommendations from local agricultural experts.'),
(3, 'Hispa', 'https://storage.googleapis.com/cs_padicure/public/items/Hispa.jpg', 'The hispa beetle (Dicladispa armigera) is a small, elongated insect that measures around 3-4 millimeters in length. It has a narrow body with a metallic bluish-green or black coloration. The adult beetles have a characteristic hump-like structure on their back, which gives them a distinct appearance. The larvae of the hispa beetle are small, pale yellow grubs with dark heads.\r\n\r\nThe presence of hispa beetles on rice plants can be identified through the following symptoms:\r\n\r\n- Feeding Damage: The characteristic feeding damage caused by hispa beetles includes the presence of irregularly shaped holes or elongated patches on the leaves. The affected areas appear translucent or brownish due to the removal of leaf tissue.\r\n\r\n- Scrapped Leaf Surfaces: The beetles scrape the upper leaf surfaces, which can give the leaves a rough and damaged appearance. The feeding activity may also result in the accumulation of brownish excrement on the leaf surface.\r\n\r\n- Stunted Growth: Severe infestations of hispa beetles can lead to stunted growth and reduced vigor in rice plants. This can result in decreased yield and overall plant health.', 'To manage hispa beetle infestations and minimize damage to rice plants, several strategies can be employed:\r\n\r\n- Cultural Practices: Implementing proper field hygiene, such as removing crop residues and weeds, can help reduce the presence of overwintering sites for hispa beetles. Crop rotation with non-rice crops can also disrupt the life cycle of the pests.\r\n\r\n- Biological Control: Encouraging natural predators and parasitoids of hispa beetles, such as spiders, ladybugs, lacewings, or certain wasps, can help control their population naturally.\r\n\r\n- Chemical Control: In severe infestations, insecticides specifically formulated for controlling hispa beetles can be used. However, it is important to follow the instructions and recommendations provided by local agricultural authorities and use insecticides judiciously.\r\n\r\n- Resistant Varieties: Planting rice varieties that are resistant or tolerant to hispa beetles can help minimize damage. Consult with local agricultural experts to identify suitable resistant varieties for your region.\r\n\r\n- Early Detection and Monitoring: Regular field monitoring is crucial to detect hispa beetle infestations early. Early intervention allows for timely management actions to be taken before the infestation becomes severe.\r\n\r\nIntegrated Pest Management (IPM) approaches that combine multiple management strategies are recommended for effective control of hispa beetles while minimizing the use of chemicals and preserving ecological balance.\r\n\r\nNote that specific management practices may vary depending on the rice-growing region, prevalent strains of the fungus, and recommendations from local agricultural experts.'),
(4, 'Leaf Blast', 'https://storage.googleapis.com/cs_padicure/public/items/LeafBlast.jpg', 'Leaf blast is caused by the fungus Magnaporthe oryzae. The disease primarily affects the leaves of rice plants but can also extend to other plant parts. The symptoms of leaf blast vary depending on the stage of infection:\r\n\r\n- Initial Infection: The disease begins with small, water-soaked lesions on the leaves. These lesions are usually spindle-shaped or elliptical and appear gray or light green. Under favorable conditions, such as high humidity, the lesions may develop a white to grayish center with a dark brown to purplish border.\r\n\r\n- Lesion Expansion: As the infection progresses, the lesions enlarge and become more elongated. The centers of the lesions may turn pale gray or white with a diamond-shaped or elliptical appearance, while the borders remain brown or purplish.\r\n\r\n- Lesion Coalescence: With severe infections, the lesions may coalesce, resulting in larger irregularly shaped lesions. This can cause extensive damage to the leaf tissue, leading to wilting, withering, and even death of the affected leaves.\r\n\r\n- Spore Formation: Under favorable conditions, the fungus produces spore-bearing structures called conidiophores. These structures appear as black or dark gray spore masses at the center of the lesions. When the conidiophores break, they release spores, which can spread the disease to other plants or plant parts.', 'To manage leaf blast and minimize its impact on rice plants, a combination of cultural, chemical, and genetic control measures can be implemented:\r\n\r\n- Resistant Varieties: Planting rice varieties that are resistant or tolerant to leaf blast is an effective strategy. Resistant varieties have inherent genetic traits that minimize disease development.\r\n\r\n- Crop Rotation: Implementing a crop rotation system with non-rice crops can help break the disease cycle and reduce the inoculum levels in the field.\r\n\r\n- Seed Treatment: Treating rice seeds with fungicides or biocontrol agents can help protect seedlings from early infection.\r\n\r\n- Fungicide Application: In severe cases, foliar application of fungicides can be considered. However, it is important to follow the recommended guidelines and apply fungicides judiciously.\r\n\r\n- Field Sanitation: Removing and destroying crop residues, which can harbor the fungal spores, can help reduce the disease\'s overwintering potential.\r\n\r\n- Timely Planting: Planting rice at the recommended time can help avoid high disease pressure and reduce the risk of leaf blast infections.\r\n\r\nRegular field monitoring, early detection of symptoms, and timely intervention are crucial for effective disease management.\r\n\r\nNote that specific management practices may vary depending on the rice-growing region, prevalent strains of the fungus, and recommendations from local agricultural experts.');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
