import 'package:get/get.dart';
import 'package:klinik_hewan/app/modules/Doctor/model/doctor.dart';

class TambahdoctorController extends GetxController {
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  var doktorList = <Dokter>[].obs;
  var namaDoctor = ''.obs;
  var spesialis = ''.obs;
  var token = ''.obs;

  void createDoctor() async {
    if (namaDoctor.value.isNotEmpty && spesialis.value.isNotEmpty) {
      isLoading.value = true;

      // Data yang akan dikirim ke API
      Map<String, dynamic> doctorData = {
        'nama_obat': namaDoctor.value,
        'keterangan': spesialis.value,
      };

      // Panggil layanan API untuk menambahkan obat baru
      // final response = await ApiService.createObat(obat, token.value);

      isLoading.value = false;

      //   if (response.statusCode == 200) {
      //     Get.snackbar('Sukses', 'obat berhasil ditambahkan');
      //   } else {
      //     Get.snackbar('Error', 'Gagal menambahkan obat');
      //   }
      // } else {
      //   Get.snackbar('Error', 'Mohon isi semua data');
    }
  }
}
