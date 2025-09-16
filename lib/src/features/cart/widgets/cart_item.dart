import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatefulWidget {
  final String name;
  final double unitPrice;
  final String imageUrl;
  final Color backgroundColor;

  const CartItem({
    super.key,
    required this.name,
    required this.unitPrice,
    required this.imageUrl,
    this.backgroundColor = Colors.yellow,
  });

  @override
  State<CartItem> createState() => _CartItemItemState();
}

class _CartItemItemState extends State<CartItem> {
  int quantity = 2;

  void _increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  double get totalPrice => widget.unitPrice * quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 5, offset: const Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              image: DecorationImage(image: AssetImage(widget.imageUrl), fit: BoxFit.cover),
            ),
          ),

          const SizedBox(width: 16),

          // Informations du produit
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
                ),
                const SizedBox(height: 8),
                Text(
                  '${totalPrice.toStringAsFixed(0)}F',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          ),

          Row(
            children: [
              GestureDetector(
                onTap: _decreaseQuantity,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(color: quantity > 1 ? Colors.red:Colors.grey[200], shape: BoxShape.circle),
                  child: const Icon(Icons.remove, size: 16, color: Colors.black54),
                ),
              ),

              const SizedBox(width: 16),

              // Affichage quantité
              Text(
                '$quantity',
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87),
              ),

              const SizedBox(width: 16),

              // Bouton augmenter
              GestureDetector(
                onTap: _increaseQuantity,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                  child: const Icon(Icons.add, size: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
