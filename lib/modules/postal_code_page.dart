import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/core/validate/postal_code_validate.dart';
import 'package:postal_code_search/modules/controller/postal_code_input/postal_code_input_controller.dart';
import 'package:postal_code_search/modules/controller/postal_code_provider.dart';

class PostalCodePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = ref.watch(postalCodeProvider);
    final inputText = ref.watch(postalCodeInputProvider);

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
                    maxLength: 7,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: '郵便番号をハイフン無しで入力してください',
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: PostalCodeValidator.validate,
                    onChanged:
                        ref.read(postalCodeInputProvider.notifier).setText,
                  ),
                ),
                //ボタン
                inputText.inputText.length != 7
                    ? OutlinedButton.icon(
                        onPressed: null,
                        icon: Icon(Icons.search),
                        label: Text('検索'),
                      )
                    : ElevatedButton.icon(
                        onPressed: () async {
                          await ref
                              .watch(postalCodeProvider.notifier)
                              .addressSearch();
                        },
                        icon: Icon(
                          Icons.search,
                        ),
                        label: Text('検索'),
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
