��    W      �      �      �  -   �  m   �     )  ?   =  �   }  A        F  "   `  '   �     �     �  :   �  ;        X  ,   `  -   �     �  �   �  5   �	  >   �	     �	     
     &
     7
  	   U
  8   _
  G   �
     �
  >   �
  B   5  V   x  ~  �  N   N  /   �  #   �  S   �  +   E  J   q  +   �  3   �  )     .   F  -   u  M   �     �  (     �   ,     �     �  z     i   �  r   �  )   d  6   �     �  "   �            3   $  t   X     �  �  �  �   �  &   n  ~   �  W     �   l       #        8      R     s     �  %   �  .   �  ;   �  �   3  �   �  S   �  �   �  �   j  B   �  �   <  �   �  W   c  e   �    !  J   %   �   p   -   ^!  j   �!  �   �!  �   �"  9   9#  >   s#  :   �#  #   �#  @   $  ]   R$  N   �$     �$  u   %  J   �%  '   �%  V  �%  R   N'  l   �'  3   (     B(  #   b(  1   �(  #   �(  P   �(  p   -)     �)  \   �)  k   *  �   �*  �  A+  �   .  J   �.  9   �.  u   4/  J   �/  �   �/  <   �0  �   �0  R   o1  J   �1  I   2  �   W2  '   �2  >   3  6  @3  '   w4  A   �4  �   �4  �   �5  �   �6  Z   o7  k   �7  :   68  ;   q8     �8  )   �8  v   �8  �   g9     :  $  ;:  �   `=  P   E>  C  �>  �   �?  !  �@     �A  D   �A  1   �A  T   -B  1   �B  -   �B  s   �B  ]   VC  e   �C    D  #  2E  �   VF  �   �F    �G  a   �H  �   SI  8  LJ  �   �K  �   L   Activating the request and cancelling auction After auction is scheduled anybody can visit it to watch. The auction can be reached at `Auction.auctionUrl`: And activate a bid: And again we can confirm that there are two documents uploaded. And again we have `201 Created` response code, `Location` header and body with extra `id`, `auctionID`, and `dateModified` properties. And bidders can find out their participation URLs via their bids: And disqualify candidate: And indeed we have 2 auctions now. And one can retrieve the question list: And third illustration: And upload proposal document: And we can see that it is overriding the original version: And we can see that there are three uploaded illustrations. Auction Bidder can register a bid in `draft` status: Cancel the auction with the reasons prepared. Cancelling auction Candidate (participant that has submitted the highest bid at the auction) must sign the auction protocol and add it to the bid within **3 business days after becoming candidate**. Change the document description and other properties: Checking the listing again reflects the new modification date: Confirming qualification Contract registration Creating auction Disqualification of candidate Enquiries Error states that no `data` has been found in JSON body. Error states that the only accepted Content-Type is `application/json`. Exploring basic rules Fill it with the protocol describing the cancellation reasons. Filling cancellation with protocol and supplementary documentation For the best effect (biggest economy) auction should have multiple bidders registered: If the candidate didn't sign the auction protocol in 3 business days after becoming candidate, or didn't provide payment in 10 business days since becoming candidate, or didn't conclude contract based on the electronic auction results within 15 business days since becoming candidate, then organizer disqualifies the first candidate and awards participant with the next largest bid. In case we made an error, we can reupload the document over the older version: It is possible to check the uploaded documents: Just invoking it reveals empty set. Let's access the URL of the created object (the `Location` header of the response): Let's check what auction registry contains: Let's create auction with the minimal data set (only required properties): Let's satisfy the Content-type requirement: Let's see the list of all added contract documents: Let's see the list of contract documents: Let's see what listing of auctions reveals us: Let's try exploring the `/auctions` endpoint: Let's update auction by supplementing it with all other essential properties: Modifying auction Now let's attempt creating some auction: Only the request that has been activated (3rd step above) has power to cancel auction.  I.e.  you have to not only prepare cancellation request but to activate it as well. Or an individual answer: Organizer can answer them: Organizer can cancel auction anytime (except when auction has terminal status e.g. `usuccesfull`, `canceled`, `complete`). Organizer can upload PDF files into the created auction. Uploading should follow the :ref:`upload` rules. Organizer can upload illustration files into the created auction. Uploading should follow the :ref:`upload` rules. Organizer can upload second illustration: Organizer has to upload file with cancellation reason: Prepare cancellation request. Preparing the cancellation request Qualification Registering bid See :ref:`cancellation` data structure for details. See the `Bid.participationUrl` in the response. Similar, but different, URL can be retrieved for other participants: Signing contract Success! Now we can see that new object has been created. Response code is `201` and `Location` response header reports the location of the created object.  The body of response reveals the information about the created auction: its internal `id` (that matches the `Location` segment), its official `auctionID` and `dateModified` datestamp stating the moment in time when auction has been last modified. Pay attention to the `procurementMethodType`. Note that auction is created with `active.tendering` status. The candidate has **15 business days after becoming candidate** to conclude a contract with the bank based on the results of electronic auction. The following steps should be applied: The previous auction contained only required fields. Let's try creating auction with more data (auction has status `created`): The single array element describes the uploaded document. We can upload more documents: There is a possibility to set custom contract signature date. If the date is not set it will be generated on contract registration. You can register contract: Tutorial Upload new version of the document: Upload the file contents: Uploading contract documentation Uploading documentation Uploading illustration We can add another contract document: We can check whether illustration is uploaded. We can see the same response we got after creating auction. We do see the auction's internal `id` (that can be used to construct full URL by prepending `https://api-sandbox.ea.openprocurement.org/api/0/auctions/`) and its `dateModified` datestamp. We see the added properies have merged with existing auction data. Additionally, the `dateModified` property was updated to reflect the last modification datestamp. When auction is in `active.tendering` status, interested parties can ask questions: Within **10 business days after becoming candidate** this candidate must provide payment and organizer must confirm this payment: Within 15 business days since becoming candidate a new candidate must confirm qualification with steps described above (:ref:`Qualification`). You can upload contract documents. Let's upload contract document: You should pass `reason`, `status` defaults to `pending`. `id` is autogenerated and passed in the `Location` header of response. `201 Created` response code and `Location` header confirm document creation. We can additionally query the `documents` collection API endpoint to confirm the action: `201 Created` response code and `Location` header confirm that document has been added. `201 Created` response code and `Location` header confirm that the second document has been uploaded. Project-Id-Version: openprocurement.auctions.dgf 0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-09-12 15:36+0300
PO-Revision-Date: 2016-09-19 15:59+0200
Last-Translator: Zoriana Zaiats <sorenabell@quintagroup.com>
Language-Team: Ukrainian <support@quintagroup.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: uk
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Lokalize 2.0
 Активація запиту та скасування аукціону Після того, як аукціон заплановано, будь-хто може його відвідати для перегляду. Аукціон можна подивитись за допомогою `Auction.auctionUrl`: І активувати пропозицію: І знову можна перевірити, що є два завантажених документа. І знову код відповіді `201 Created`,  заголовок `Location` і тіло з додатковим `id`, `auctionID`, та властивість `dateModified`. Учасники можуть дізнатись свої URL-адреси для участі через свої пропозиції: Та дискваліфікувати кандидата: Дійсно, в нас зараз є дві аукціони. Можна отримати список запитань: І третю ілюстрацію: І завантажити документ пропозиції: І ми бачимо, що вона перекриває оригінальну версію: Ми бачимо, що є три завантажені ілюстрації. Аукціон Учасник може зареєструвати пропозицію у статусі `draft` (чернетка): Скасуйте закупівлю через подані причини Скасування закупівлі Кандидат (учасник, який подав найвищу ставку на аукціоні) повинен підписати протокол аукціону і додати його до цінової пропозиції протягом **3 робочих днів після того, як став кандидатом**. Зміна опису документа та інших властивостей: Ще одна перевірка списку відображає нову дату модифікації: Підтвердження кваліфікації Реєстрація угоди Створення аукціону Дискваліфікація кандидата Уточнення (питання) Помилка вказує, що `data` не знайдено у тілі JSON. Помилка вказує, що єдиний прийнятний тип вмісту це `application/json`. Базові правила Наповніть його протоколом про причини скасування. Наповнення протоколом та іншою супровідною документацією Для найкращого результату (найбільшої економії) аукціон повинен мати багато зареєстрованих учасників. Якщо кандидат не підписав протокол аукціону за 3 робочі дні, після того як став кандидатом; або не надав оплату протягом 10 робочих днів після того, як став кандидатом; або не уклав угоду на основі результатів електронного аукціону протягом 15 робочих днів після того, як став кандидатом, то організатор дискваліфікує першого кандидата і кандидатом стає учасник з наступною за величиною пропозицією. Якщо сталась помилка, ми можемо ще раз завантажити документ поверх старої версії: Можна перевірити завантажені документи: При виклику видає пустий набір. Використаємо URL створеного об’єкта (заголовок відповіді `Location`): Перевіримо, що містить реєстр аукціонів: Створимо аукціон з мінімально допустимим набором даних (тільки параметри обовязкові для заповнення) : Задовільнимо вимогу типу вмісту: Тепер переглянемо знову усі документи пов’язані із укладанням угоди: Переглянемо список завантажених документів: Подивимось, що показує список аукціонів: Подивимось як працює точка входу `/auctions`: Оновимо аукціон шляхом надання йому усіх інших важливих властивостей: Модифікація аукціону Спробуймо створити новий аукціон: Запит на скасування, який не пройшов активації (3-й крок), не матиме сили, тобто, для скасування закупівлі буде обов’язковим не тільки створити заявку, але і активувати її. або окрему відповідь: Організатор може на них відповісти: Організатор може скасувати аукціон у будь-який момент (крім аукціонів у кінцевому стані, наприклад, `usuccesfull`, `canceled`, `complete`). Замовник може завантажити PDF файл у створений аукціон. Завантаження повинно відбуватись згідно правил :ref:`upload`. Організатор може завантажити файли з ілюстраціями у створений аукціон. Завантаження повинно відповідати правилам :ref:`upload`. Організатор може завантажити ще одну ілюстрацію: Організатор повинен завантажити файл з причинами відміни: Приготуйте запит на скасування. Формування запиту на скасування Кваліфікація Реєстрація пропозиції Див. структуру запиту :ref:`cancellation` для більш детальної інформації. Дивіться на `Bid.participationUrl` у відповіді. Схожу, але іншу, URL-адресу можна отримати для інших учасників. Підписання угоди Успіх! Тепер ми бачимо, що новий об’єкт було створено. Код відповіді `201` та заголовок відповіді `Location` вказує місцерозташування створеного об’єкта. Тіло відповіді показує інформацію про створений аукціон, його внутрішнє `id` (яке співпадає з сегментом `Location`), його офіційне `auctionID` та `dateModified` дату, що показує час, коли аукціон востаннє модифікувався. Зверніть увагу на `procurementMethodType`, а також на те, що аукціон створюється зі статусом `active.tendering`. Кандидат має **15 робочих днів після того, як став кандидатом**, щоб укласти угоду на основі результатів електронного аукціону. Для цього потрібно виконати наступні кроки: Попередній аукціон був створений лише з обов’язковими полями. Тепер додамо аукціон з максимально допустимим набором даних при створенні (аукціон повинен бути у статусі `created`). Один елемент масиву описує завантажений документ. Ми можемо завантажити більше документів: Є можливість встановити дату підписання договору. Якщо дата не встановлена, то вона буде згенерована під час реєстрації угоди. Ви можете зареєструвати угоду: Туторіал Завантаження нової версії документа: Завантаження вмісту файлу: Завантаження документів щодо укладання угоди Завантаження документації Завантаження ілюстрації Тепер спробуємо додати ще один документ щодо укладанням угоди: Ми можемо перевірити, чи завантажилась ілюстрація. Ми бачимо ту ж відповідь, що і після створення аукціону. Ми бачимо внутрішнє `id` аукціону (що може бути використано для побудови повної URL-адреси, якщо додати `http://api-sandbox.openprocurement.org/api/0/auctions/`) та його `dateModified` дату. Ми бачимо, що додаткові властивості об’єднані з існуючими даними аукціону. Додатково оновлена властивість `dateModified`, щоб відображати останню дату модифікації. Коли закупівля має статус `active.tendering`, зацікавлені сторони можуть задавати питання: Цей кандидат протягом **10 робочих днів після того, як став кандидатом**  повинен надати оплату, а організатор повинен підтвердити цей платіж: Новий кандидат протягом 15 робочих днів після того, як став кандидатом, повинен підтвердити кваліфікацію кроками описаними вище (:ref:`Qualification`). Спробуємо завантажити документ пов’язаний з угодою: Ви повинні передати змінні `reason`, `status` у стані `pending`. `id` генерується автоматично і повертається у додатковому заголовку відповіді `Location`: Код відповіді `201 Created` та заголовок `Location` підтверджують, що документ було створено. Додатково можна зробити запит точки входу API колекції `документів`, щоб підтвердити дію: Код відповіді `201 Created` та заголовок `Location` підтверджують, що документ додано. Код відповіді `201 Created` та заголовок `Location` підтверджують, що ще один документ було додано. 