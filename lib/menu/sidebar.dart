import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final bool isExpanded;
  final int selectedIndex;
  final List<Map<String, dynamic>> menuItems;
  final Function(int) onMenuItemTap;
  final Function onToggle;

  const Sidebar({
    super.key,
    required this.isExpanded,
    required this.selectedIndex,
    required this.menuItems,
    required this.onMenuItemTap,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isExpanded ? 220 : 0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueGrey[900]!, Colors.blueGrey[700]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: isExpanded
          ? Column(
        children: [
          // Logo veya Başlık
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    "MyApp",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () => onToggle(),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.white30, thickness: 1),
          // Menü Öğeleri
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                bool isSelected = selectedIndex == index;
                return InkWell(
                  onTap: () => onMenuItemTap(index),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.orange.withOpacity(0.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          menuItems[index]['icon'],
                          color: isSelected
                              ? Colors.orange
                              : Colors.white,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          menuItems[index]['title'],
                          style: TextStyle(
                            color: isSelected
                                ? Colors.orange
                                : Colors.white,
                            fontSize: 16,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )
          : null,
    );
  }
}
