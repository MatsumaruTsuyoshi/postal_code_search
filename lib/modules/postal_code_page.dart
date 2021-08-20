import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/modules/controller/postal_code_provider.dart';

class PostalCodePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchTextController = useTextEditingController();
    final address = ref.watch(postalCodeProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //郵便番号入力
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    controller: searchTextController,
                    decoration: const InputDecoration(
                      labelText: '郵便番号をハイフン無しで入力してください',
                    ),
                  ),
                ),
                //ボタン
                IconButton(
                  onPressed: () async {
                    await ref
                        .watch(postalCodeProvider.notifier)
                        .addressSearch(searchTextController.value.text);
                  },
                  icon: Icon(Icons.search),
                ),
              ],
            ),
            address.when(
                data: (data) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //郵便番号の住所を表示
                        Text('都道府県：${data.address1}'),
                        Text('市区：${data.address2}'),
                        Text('町村：${data.address3}'),
                      ],
                    ),
                loading: () => CircularProgressIndicator(),
                error: (e, __) => Text(e.toString()))
          ],
        ),
      ),
    );
  }
}
