import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/page/admin/custom_card.dart';
import 'package:lgpb_compliance/stores/admin_store.dart';

class AdminPage extends StatelessWidget {
  final ScrollController controller = ScrollController();
  final AdminStore adminStore = GetIt.I<AdminStore>();

  AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return adminStore.loadingAdminPage
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: TextFormField(
                        onChanged: adminStore.filterUser,
                        cursorColor: Colors.grey.shade900,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {},
                          ),
                          hintText: 'Filtrar usuário',
                          filled: true,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: const Color(0xFFF3F3F3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 2,
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                        controller: controller,
                        itemCount: adminStore.listUser.length,
                        itemBuilder: (context, index) {
                          final user = adminStore.listUser[index];
                          return CustomCard(
                            userModel: user,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
