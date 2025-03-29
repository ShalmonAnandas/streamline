import 'dart:async';
import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamline/core/base_widget/riverpod_stateless_widget.dart';
import 'package:streamline/src/features/home_screen/widgets/build_grid.dart';
import 'package:streamline/src/features/search/search_provider.dart';

class SearchUi extends ConsumerStatefulWidget {
  const SearchUi({super.key});

  @override
  ConsumerState<SearchUi> createState() => _SearchUiState();
}

class _SearchUiState extends ConsumerState<SearchUi> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  String _query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Amicons.iconly_arrow_left_2_broken,
          ),
        ),
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: GoogleFonts.quicksand(
              color: Colors.grey,
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 14.0,
              horizontal: 16.0,
            ),
          ),
          onChanged: (value) {
            if (_debounce?.isActive ?? false) _debounce!.cancel();
            _debounce = Timer(const Duration(milliseconds: 800), () {
              setState(() {
                _query = value.trim();
              });
            });
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _searchController.text.isEmpty
            ? Center(child: Text("Start Typing to search"))
            : RiverpodStatelessWidget(
                provider: searchProvider(query: _query),
                child: (resultsModel) => BuildGrid(
                  title: "search",
                  results: resultsModel,
                ),
              ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }
}
