import 'package:flutter/material.dart';
import 'tempat_wisata.dart';

class LayarTempatWisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tempat Pariwisata Indonesia'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return _buatTataLetakMobile();
          } else if (constraints.maxWidth < 900) {
            return _buatTataLetakTablet();
          } else {
            return _buatTataLetakDesktop();
          }
        },
      ),
    );
  }

  Widget _buatTataLetakMobile() {
    return ListView.builder(
      itemCount: tempatWisata.length,
      itemBuilder: (context, index) {
        return _buatItemDaftar(index);
      },
    );
  }

  Widget _buatTataLetakTablet() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
      ),
      itemCount: tempatWisata.length,
      itemBuilder: (context, index) {
        return _buatItemGrid(index);
      },
    );
  }

  Widget _buatTataLetakDesktop() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
      ),
      itemCount: tempatWisata.length,
      itemBuilder: (context, index) {
        return _buatItemGrid(index);
      },
    );
  }

  Widget _buatItemDaftar(int index) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: ListTile(
        key: ValueKey<int>(index),
        leading: Image.asset(
          tempatWisata[index].gambar,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(tempatWisata[index].nama),
        subtitle: Text(tempatWisata[index].lokasi),
      ),
    );
  }

  Widget _buatItemGrid(int index) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: Card(
        key: ValueKey<int>(index),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                tempatWisata[index].gambar,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(tempatWisata[index].nama),
              subtitle: Text(tempatWisata[index].lokasi),
            ),
          ],
        ),
      ),
    );
  }
}
