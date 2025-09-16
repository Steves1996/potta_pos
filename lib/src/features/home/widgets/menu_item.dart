import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItem extends StatefulWidget {
  final String imagePath;
  final String title;
  final String price;
  final Function(bool isSelected, int quantity)? onSelectionChanged;

  const MenuItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.onSelectionChanged,
  });

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool _isSelected = false;
  int _quantity = 1;
  DateTime? _lastTapTime;


  void _handleTap() {
    final now = DateTime.now();

    // Vérifier si c'est un double tap (dans les 300ms)
    if (_lastTapTime != null &&
        now.difference(_lastTapTime!).inMilliseconds < 300) {
      // Double tap - déselectionner
      setState(() {
        _isSelected = false;
        _quantity = 1;
      });
    } else {
      // Simple tap - sélectionner
      setState(() {
        _isSelected = true;
      });
    }

    _lastTapTime = now;
    widget.onSelectionChanged?.call(_isSelected, _quantity);
  }

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
    widget.onSelectionChanged?.call(_isSelected, _quantity);
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
      widget.onSelectionChanged?.call(_isSelected, _quantity);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: _handleTap,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: _isSelected
                  ? Border.all(color: Colors.green, width: 2)
                  : Border.all(color: Colors.grey.shade300, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        image: DecorationImage(image: AssetImage(widget.imagePath), fit: BoxFit.cover),
                      ),
                    ),

                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.title,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.black87),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        widget.price,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        if (_isSelected)
          Positioned(
            top: -180,
            bottom: 5,
            left: 18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Bouton moins
                GestureDetector(
                  onTap: _decrementQuantity,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: _quantity > 1 ? Colors.green : Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.remove, color: _quantity > 1 ? Colors.white : Colors.grey.shade600, size: 18),
                  ),
                ),

                // Quantité
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    '$_quantity',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                ),

                // Bouton plus
                GestureDetector(
                  onTap: _incrementQuantity,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                    child: const Icon(Icons.add, color: Colors.white, size: 18),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
