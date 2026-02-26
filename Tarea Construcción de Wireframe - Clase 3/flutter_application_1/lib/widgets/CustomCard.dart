import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget{
  final String title;
  final String subtitle;
  final IconData icon;
  //final VoidCallback onTap;

  const CustomCard ({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
   // required this.onTap,
 
  });
  
   @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }


}




class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const CategoryCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Imagen
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 16),

            // Textos
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}