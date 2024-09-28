# **Özel Obje Bazlı Stash Sistemi - FiveM için QBCore & ox_inventory Uyumlu**

Bu script, FiveM QBCore frameworkü ile `ox_inventory` kullanarak, her objeye özel stash oluşturma ve yönetme imkanı sunar. Diğer stash sistemlerinden farklı olarak, aynı modeldeki objelerin farklı lokasyonlarda bile benzersiz stash'lere sahip olabilmesini sağlar. Oyuncular, belirli objelerle etkileşime geçerek kolayca stash'lerini açabilirler.

### **Öne Çıkan Özellikler:**
- **Dinamik Stash Oluşturma:** Belirli objeler üzerinde stash oluşturma ve açma işlemini kolaylaştırır. Objelerin modeline ve koordinatlarına göre eşsiz stash'ler oluşturulabilir.
- **Her Objeye Özgü Slot ve Ağırlık Kapasitesi:** Her obje için ayrı ayrı slot ve ağırlık değerleri tanımlanabilir. Örneğin, bir kutu daha fazla eşya taşıyabilirken, bir sandalye daha sınırlı kapasiteye sahip olabilir.
- **ox_target ile Etkileşim:** Objelerle etkileşime geçmek için `ox_target` kullanılır. Bu, oyuncuların belirli objelere yaklaşarak stash açma seçeneği sunar.
- **Esnek ve Özelleştirilebilir:** Yeni objeler ve bunların stash bilgileri (`slots` ve `weight`) `ObjectList` içine eklenerek hızlıca özelleştirilebilir ve genişletilebilir.

### **Kullanım:**
1. **ObjectList Tanımlaması:** Script'te yer alan `ObjectList` kısmında hangi objelerin stash özelliğine sahip olacağını belirtebilirsiniz. Bu listede her objenin slot ve ağırlık kapasitesi tanımlanmıştır.
2. **ox_target Kullanımı:** Belirtilen objeler, `ox_target` kullanılarak etkileşim için hedeflenebilir hale gelir. Oyuncular, belirli bir mesafede (örneğin, 4 metre) objeye yaklaştıklarında stash açma seçeneği ile karşılaşırlar.
3. **Dinamik Stash Oluşturma:** Server tarafında, obje modeli ve koordinatlarına göre stash kaydı yapılır. Her obje için farklı `slots` ve `weight` değerleri kaydedilir, böylece stash her objeye özgü hale gelir.
4. **Stash'inizi Açın:** Oyuncular stash'e erişmek için obje ile etkileşime geçtiğinde stash açılır. Her obje kendi stash'ine sahip olur ve stash bilgileri dinamik olarak kaydedilir.

### **Nasıl Kurulur:**
1. `ox_inventory` ve `ox_target` kaynaklarının sunucunuzda kurulu olduğundan emin olun.
2. Bu script'i `resources` klasörüne ekleyin ve sunucunuzda başlatın.
3. `ObjectList`'e stash'e sahip olmasını istediğiniz objeleri ve bunların slot/ağırlık kapasitelerini ekleyin.

### **Gelecek Planları:**
- Belirli koşullarda stash erişimi sınırlamaları.
- Daha fazla özelleştirilebilir stash tipi ve slot/ağırlık seçenekleri.

Bu script, objelere etkileşimli stash eklemek isteyenler için benzersiz ve güçlü bir çözüm sunar. Farklı objeler üzerinde değişken stash kapasiteleri sunarak oyun dünyanızı daha dinamik ve ilgi çekici hale getirebilirsiniz.


Prew: https://streamable.com/xqdlcp
