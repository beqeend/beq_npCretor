# 🧍‍♂️ beq_npcCreator - Standalone Çoklu Target Destekli NPC Scripti


[PNG](https://i.hizliresim.com/43f127g.png?_gl=1*ncxi93*_ga*MTEzMzgzNTg3Ni4xNzUxMjA1OTM5*_ga_M9ZRXYS2YN*czE3NTM0MzU5ODkkbzIkZzEkdDE3NTM0MzYwNDMkajYkbDAkaDA.)


FiveM sunucularında **tamamen framework bağımsız** (standalone) çalışan, **çoklu target sistemi** destekleyen dinamik NPC scripti!
 ```

 ```
---

## 🚀 Özellikler

✅ **Standalone**  
Herhangi bir framework'e (ESX, QBCore, vs.) ihtiyaç duymaz.

✅ **Çoklu Target Sistemi Desteği**
- `ox_target`
- `qb-target`
- `pa-target`
- `bt-target`
- Target sistemi yoksa otomatik olarak **DrawText** fallback sistemi devreye girer.

✅ **Kolay Konfigürasyon**  
NPC'leri ve eventlerini kolayca `config.lua` üzerinden tanımlayabilirsin.

✅ **Her NPC’ye Özel Event**  
Her bir NPC’ye farklı event atayabilir ve farklı işlevler yükleyebilirsin.

✅ **Sınırsız NPC**  
İstediğin kadar NPC oluşturabilirsin.

✅ **Kullanıcı Dostu Etkileşim**  
NPC'ye yaklaşıldığında otomatik olarak target menüsü veya DrawText görünür.

---

## 🛠️ Kurulum

1. Scripti `resources` klasörüne at.
2. `server.cfg` dosyana aşağıdaki satırı ekle:
   ```bash
   ensure beq_npcCreator
