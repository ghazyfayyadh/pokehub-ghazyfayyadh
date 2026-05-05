import 'package:flutter/material.dart';

void main() {
  runApp(const PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ghazy Fayyadh - 9b',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E17),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1B1E2B),
          elevation: 0,
          centerTitle: true,
        ),
        cardColor: const Color(0xFF1E2235),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        primaryColor: const Color(0xFFA5F202),
      ),
      home: const PokemonListScreen(),
    );
  }
}

class Pokemon {
  final int id;
  final String name;
  final String imagePath;
  final String type;
  final String hp;
  final String atk;
  final String def;
  final String spAtk;
  final String spDef;
  final String speed;
  final String ability;
  final String weakness;
  final String? evolution;
  final String description;
  final String role;
  final List<String> partners;

  Pokemon({
    required this.id, required this.name, required this.imagePath, required this.type, required this.hp,
    required this.atk, required this.def, required this.spAtk, required this.spDef,
    required this.speed, required this.ability, required this.weakness,
    this.evolution, required this.description, required this.role, required this.partners,
  });
}

final List<Pokemon> pokemonList = [
  Pokemon(
    id: 1, name: "Bulbasaur", imagePath: "assets/images/bulbasaur.png", type: "Grass / Poison",
    hp: "45", atk: "49", def: "49", spAtk: "65", spDef: "65", speed: "45",
    ability: "Overgrow", weakness: "Fire, Ice, Flying, Psychic", evolution: "Ivysaur (Lv.16)",
    description: "Bulbasaur adalah Pokémon yang mengandalkan keseimbangan antara offense dan defense. Tanaman di punggungnya menyimpan energi matahari untuk memperkuat serangan.",
    role: "Support / Tank awal game",
    partners: ["Pikachu", "Growlithe", "Geodude"],
  ),
  Pokemon(
    id: 2, name: "Charizard", imagePath: "assets/images/charizard.png", type: "Fire / Flying",
    hp: "78", atk: "84", def: "78", spAtk: "109", spDef: "85", speed: "100",
    ability: "Blaze", weakness: "Rock (x4), Water, Electric", evolution: "Final",
    description: "Charizard adalah attacker cepat dengan damage tinggi, terutama di Special Attack. Sangat berbahaya tapi punya kelemahan besar terhadap Rock-type.",
    role: "Special Attacker / Sweeper",
    partners: ["Blastoise", "Jolteon", "Excadrill"],
  ),
  Pokemon(
    id: 3, name: "Blastoise", imagePath: "assets/images/blastoise.png", type: "Water",
    hp: "79", atk: "83", def: "100", spAtk: "85", spDef: "105", speed: "78",
    ability: "Torrent", weakness: "Electric, Grass", evolution: null,
    description: "Blastoise adalah tank kuat dengan defense tinggi. Cocok untuk bertahan lama dan memberikan tekanan stabil.",
    role: "Tank / Defensive Support",
    partners: ["Venusaur", "Raichu", "Dragonite"],
  ),
  Pokemon(
    id: 4, name: "Pikachu", imagePath: "assets/images/pikachu.png", type: "Electric",
    hp: "35", atk: "55", def: "40", spAtk: "50", spDef: "50", speed: "90",
    ability: "Static", weakness: "Ground", evolution: null,
    description: "Pikachu adalah Pokémon cepat dengan serangan listrik yang efektif melawan Water dan Flying. Tapi cukup rapuh.",
    role: "Fast Attacker / Utility",
    partners: ["Charizard", "Bulbasaur", "Gyarados"],
  ),
  Pokemon(
    id: 5, name: "Gengar", imagePath: "assets/images/gengar.png", type: "Ghost / Poison",
    hp: "60", atk: "65", def: "60", spAtk: "130", spDef: "75", speed: "110",
    ability: "Cursed Body", weakness: "Ghost, Dark, Psychic", evolution: null,
    description: "Gengar adalah glass cannon dengan Special Attack tinggi dan kecepatan luar biasa. Cocok untuk menghabisi lawan dengan cepat.",
    role: "Special Sweeper",
    partners: ["Snorlax", "Tyranitar", "Alakazam"],
  ),
  Pokemon(
    id: 6, name: "Dragonite", imagePath: "assets/images/dragonite.png", type: "Dragon / Flying",
    hp: "91", atk: "134", def: "95", spAtk: "100", spDef: "100", speed: "80",
    ability: "Inner Focus", weakness: "Ice (x4), Rock, Dragon, Fairy", evolution: null,
    description: "Dragonite adalah pseudo-legendary dengan stat tinggi di hampir semua aspek. Walau terlihat ramah, dia sangat kuat di battle.",
    role: "Physical Sweeper / All-rounder",
    partners: ["Heatran", "Magnezone", "Blastoise"],
  ),
  Pokemon(
    id: 7, name: "Snorlax", imagePath: "assets/images/snorlax.png", type: "Normal",
    hp: "160", atk: "110", def: "65", spAtk: "-", spDef: "110", speed: "30",
    ability: "Thick Fat", weakness: "Fighting", evolution: null,
    description: "Snorlax adalah tank dengan HP besar. Sulit dikalahkan dan bisa jadi tembok tim.",
    role: "Tank / Wall",
    partners: ["Gengar", "Togekiss", "Excadrill"],
  ),
  Pokemon(
    id: 8, name: "Eevee", imagePath: "assets/images/eevee.png", type: "Normal",
    hp: "55", atk: "55", def: "50", spAtk: "45", spDef: "65", speed: "55",
    ability: "Adaptability", weakness: "Fighting", evolution: null,
    description: "Eevee unik karena punya banyak evolusi (Eeveelutions). Fleksibel sesuai kebutuhan tim.",
    role: "Flexible / Support",
    partners: ["Tergantung evolusinya (Jolteon, Vaporeon, dll)"],
  ),
  Pokemon(
    id: 9, name: "Vaporeon", imagePath: "assets/images/vaporeon.png", type: "Water",
    hp: "130", atk: "65", def: "60", spAtk: "110", spDef: "95", speed: "65",
    ability: "Water Absorb", weakness: "-", evolution: null,
    description: "Tank spesial dengan HP besar dan sustain tinggi.",
    role: "Special Tank / Support",
    partners: ["Jolteon", "Flareon", "Ferrothorn"],
  ),
  Pokemon(
    id: 10, name: "Jolteon", imagePath: "assets/images/jolteon.png", type: "Electric",
    hp: "65", atk: "65", def: "60", spAtk: "110", spDef: "95", speed: "130",
    ability: "Volt Absorb", weakness: "-", evolution: null,
    description: "Salah satu Pokémon tercepat. Cocok untuk strike cepat.",
    role: "Fast Special Sweeper",
    partners: ["Vaporeon", "Charizard", "Scizor"],
  ),
  Pokemon(
    id: 11, name: "Flareon", imagePath: "assets/images/flareon.png", type: "Fire",
    hp: "65", atk: "130", def: "60", spAtk: "-", spDef: "110", speed: "65",
    ability: "-", weakness: "-", evolution: null,
    description: "Damage fisik tinggi tapi agak lambat.",
    role: "Physical Attacker",
    partners: ["Jolteon", "Vaporeon", "Tyranitar"],
  ),
  Pokemon(
    id: 12, name: "Lucario", imagePath: "assets/images/lucario.png", type: "Fighting / Steel",
    hp: "70", atk: "110", def: "70", spAtk: "115", spDef: "-", speed: "90",
    ability: "-", weakness: "-", evolution: null,
    description: "Fighter dengan aura power, bisa mixed attacker.",
    role: "Mixed Sweeper",
    partners: ["Gengar", "Garchomp", "Rotom-Wash"],
  ),
  Pokemon(
    id: 13, name: "Greninja", imagePath: "assets/images/greninja.png", type: "Water / Dark",
    hp: "72", atk: "95", def: "-", spAtk: "103", spDef: "-", speed: "122",
    ability: "-", weakness: "-", evolution: null,
    description: "Ninja Pokémon super cepat dengan ability unik (Protean).",
    role: "Speed Sweeper",
    partners: ["Talonflame", "Aegislash", "Garchomp"],
  ),
  Pokemon(
    id: 14, name: "Machamp", imagePath: "assets/images/machamp.png", type: "Fighting",
    hp: "90", atk: "130", def: "80", spAtk: "-", spDef: "-", speed: "55",
    ability: "-", weakness: "-", evolution: null,
    description: "Petarung kuat dengan 4 tangan.",
    role: "Physical Attacker",
    partners: ["Alakazam", "Gengar", "Snorlax"],
  ),
  Pokemon(
    id: 15, name: "Alakazam", imagePath: "assets/images/alakazam.png", type: "Psychic",
    hp: "55", atk: "-", def: "-", spAtk: "135", spDef: "-", speed: "120",
    ability: "-", weakness: "-", evolution: null,
    description: "Glass cannon dengan kecerdasan tinggi.",
    role: "Special Sweeper",
    partners: ["Machamp", "Gengar", "Scizor"],
  ),
  Pokemon(
    id: 16, name: "Gyarados", imagePath: "assets/images/gyarados.png", type: "Water / Flying",
    hp: "95", atk: "125", def: "-", spAtk: "-", spDef: "-", speed: "-",
    ability: "-", weakness: "-", evolution: null,
    description: "Agresif dan kuat secara fisik.",
    role: "Physical Sweeper",
    partners: ["Jolteon", "Garchomp", "Ferrothorn"],
  ),
  Pokemon(
    id: 17, name: "Tyranitar", imagePath: "assets/images/tyranitar.png", type: "Rock / Dark",
    hp: "100", atk: "134", def: "-", spAtk: "-", spDef: "-", speed: "-",
    ability: "-", weakness: "-", evolution: null,
    description: "Tank + attacker kuat, summon sandstorm.",
    role: "Tank / Sweeper",
    partners: ["Excadrill", "Garchomp", "Rotom-Wash"],
  ),
];

class EHubHeader extends StatelessWidget {
  const EHubHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 35, height: 35,
                decoration: BoxDecoration(color: const Color(0xFFA5F202), borderRadius: BorderRadius.circular(6)),
                child: const Icon(Icons.catching_pokemon, color: Colors.black, size: 25),
              ),
              const SizedBox(width: 10),
              const Text("POKÉHUB", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 1.5, color: Colors.white)),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.person, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}

class EHubSearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const EHubSearchBar({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 45,
      decoration: BoxDecoration(color: const Color(0xFF1E2235), borderRadius: BorderRadius.circular(8)),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(color: Colors.white, fontSize: 14),
        decoration: const InputDecoration(
          hintText: "Cari Pokémon... (nama)",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
          prefixIcon: Icon(Icons.search, color: Colors.grey, size: 20),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}

class PokemonCollectibleCard extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonCollectibleCard({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 600),
            reverseTransitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (context, animation, secondaryAnimation) => PokemonDetailScreen(pokemon: pokemon),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              var curve = CurvedAnimation(parent: animation, curve: Curves.easeOutQuint);
              return ScaleTransition(
                scale: Tween<double>(begin: 0.85, end: 1.0).animate(curve),
                child: FadeTransition(
                  opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curve),
                  child: child,
                ),
              );
            },
          ),
        );
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFA5F202), width: 2),
          boxShadow: [
            BoxShadow(color: const Color(0xFFA5F202).withOpacity(0.3), blurRadius: 10, offset: const Offset(0, 4)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Hero(
                tag: 'pokemon_image_${pokemon.id}',
                child: Image.asset(
                  pokemon.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.9), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.0, 0.6], 
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(color: Colors.black.withOpacity(0.7), borderRadius: BorderRadius.circular(4)),
                          child: Text(pokemon.type.toUpperCase(), style: const TextStyle(fontSize: 9, color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(pokemon.name.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 1.2, color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({super.key});

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  String _searchQuery = '';

  Widget _buildHorizontalSection(String title, List<Pokemon> list) {
    if (list.isEmpty) return const SizedBox.shrink();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1, color: Colors.white70)),
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return PokemonCollectibleCard(pokemon: list[index]);
            },
          ),
        ),
        const Divider(color: Color(0xFF1B1E2B), thickness: 2, height: 2),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredList = pokemonList.where((p) {
      return p.name.toLowerCase().contains(_searchQuery.toLowerCase());
    }).toList();

    final attackIds = [2, 5, 10, 11, 12, 13, 14, 15, 16];
    final versatileIds = [1, 4, 6, 8];
    final defenseIds = [3, 7, 9, 17];

    final attackersList = filteredList.where((p) => attackIds.contains(p.id)).toList();
    final versatileList = filteredList.where((p) => versatileIds.contains(p.id)).toList();
    final defenseList = filteredList.where((p) => defenseIds.contains(p.id)).toList();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const EHubHeader(),
            EHubSearchBar(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
            const SizedBox(height: 10),
            Expanded(
              child: filteredList.isEmpty
                  ? const Center(
                      child: Text("Pokémon tidak ditemukan.", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildHorizontalSection("ATTACK POKÉMON", attackersList),
                          _buildHorizontalSection("VERSATILE POKÉMON", versatileList),
                          _buildHorizontalSection("DEFENSE POKÉMON", defenseList),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class PokemonDetailScreen extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailScreen({super.key, required this.pokemon});

  Pokemon? _findPartnerPokemon(String partnerName) {
    try {
      return pokemonList.firstWhere((p) => p.name == partnerName);
    } catch (e) {
      return null;
    }
  }

  Widget _buildPartnerBadge(String partnerName) {
    final partner = _findPartnerPokemon(partnerName);
    
    return Column(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: const Color(0xFF1B1E2B),
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFA5F202).withOpacity(0.5), width: 1.5),
            boxShadow: [
              BoxShadow(color: const Color(0xFFA5F202).withOpacity(0.2), blurRadius: 5),
            ],
          ),
          child: ClipOval(
            child: partner != null
                ? Image.asset(
                    partner.imagePath,
                    fit: BoxFit.cover,
                  )
                : const Icon(
                    Icons.catching_pokemon,
                    color: Colors.white70,
                    size: 30,
                  ),
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 75,
          child: Text(
            partnerName, 
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 10, color: Colors.white70, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isWideScreen = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pokemon.name.toUpperCase(), style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 2)),
            Text(pokemon.role.toUpperCase(), style: const TextStyle(fontSize: 14, color: Color(0xFFA5F202), letterSpacing: 1)),
            const SizedBox(height: 24),

            Flex(
              direction: isWideScreen ? Axis.horizontal : Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: isWideScreen ? 1 : 0,
                  child: Column(
                    children: [
                      Container(
                        height: 400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFFA5F202).withOpacity(0.5), width: 2),
                          boxShadow: [BoxShadow(color: const Color(0xFFA5F202).withOpacity(0.2), blurRadius: 15)],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Hero(
                            tag: 'pokemon_image_${pokemon.id}',
                            child: Image.asset(
                              pokemon.imagePath,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildInfoPanel("TIPE", pokemon.type),
                      _buildInfoPanel("ABILITY", pokemon.ability),
                      _buildInfoPanel("WEAKNESS", pokemon.weakness),
                    ],
                  ),
                ),
                if (isWideScreen) const SizedBox(width: 32) else const SizedBox(height: 32),

                Expanded(
                  flex: isWideScreen ? 2 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(color: const Color(0xFF1E2235), borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("ATTACKING & DEFENDING STATS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 12)),
                            const Divider(color: Colors.grey, thickness: 0.5),
                            _buildStatRow("HP", pokemon.hp),
                            _buildStatRow("Attack", pokemon.atk),
                            _buildStatRow("Defense", pokemon.def),
                            _buildStatRow("Sp. Attack", pokemon.spAtk),
                            _buildStatRow("Sp. Defense", pokemon.spDef),
                            _buildStatRow("Speed", pokemon.speed),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E2235), 
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("PROFILE & DESCRIPTION", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 12)),
                            const Divider(color: Colors.grey, thickness: 0.5),
                            const SizedBox(height: 8),
                            Text(pokemon.description, style: const TextStyle(fontSize: 14, height: 1.5, color: Colors.white)),
                            const SizedBox(height: 24),
                            
                            const Text("RECOMMENDED PARTNERS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 12)),
                            const Divider(color: Colors.grey, thickness: 0.5),
                            const SizedBox(height: 16),
                            Wrap(
                              spacing: 16, 
                              runSpacing: 16,
                              children: pokemon.partners.map((p) => _buildPartnerBadge(p)).toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoPanel(String title, String value) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: const Color(0xFF1E2235), borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(value.toUpperCase(), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildStatRow(String label, String valueStr) {
    int value = int.tryParse(valueStr) ?? 0;
    
    Color statColor;
    if (value >= 90) statColor = const Color(0xFF00C853);
    else if (value >= 75) statColor = const Color(0xFFA5F202);
    else if (value >= 60) statColor = Colors.amber;
    else statColor = const Color(0xFFD50000);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(flex: 2, child: Text(label, style: const TextStyle(fontSize: 15, color: Colors.white70))),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(color: statColor, borderRadius: BorderRadius.circular(6)),
            child: Text(
              valueStr,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: value >= 60 ? Colors.black : Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}