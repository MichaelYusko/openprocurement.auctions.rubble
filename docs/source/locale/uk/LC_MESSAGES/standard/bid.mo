��    !      $      ,      ,     -  +   D     p     t     �     �     �     �  #   �           0  	   9     C     X     _     s     w     �  2   �  .   �  D   �  @   9     z  ^   �  Z   �     <     A     P  )   `     �  #   �     �    �  %   �  <   �     -     1  "   J  &   m  .   �  .   �  3   �  /   &	     V	  	   _	      i	  
   �	  2   �	     �	  "   �	  &   �	  L   #
  U   p
  t   �
  �   ;     �  �   �  �   z       4   #     X  �   w  
     F     %   b   :ref:`Value`, required A web address for participation in auction. Bid Feature code. Feature value. ID of related :ref:`lot`. List of :ref:`Document` objects List of :ref:`LotValue` objects List of :ref:`Organization` objects List of :ref:`Parameter` objects LotValue Parameter Possible values are: Schema UID, auto-generated URL Validation rules: `active` `amount` should be less than `Auction.value.amout` `amount` should be less than `Lot.value.amout` `currency` should either be absent or match `Auction.value.currency` `currency` should either be absent or match `Lot.value.currency` `draft` `valueAddedTaxIncluded` should either be absent or match `Auction.value.valueAddedTaxIncluded` `valueAddedTaxIncluded` should either be absent or match `Lot.value.valueAddedTaxIncluded` bool bool, required float, required required for dgfFinancialAssets procedure string string, :ref:`date`, auto-generated string, required Project-Id-Version: openprocurement.auctions.dgf 0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-09-12 15:36+0300
PO-Revision-Date: 2016-09-19 17:35+0200
Last-Translator: Zoriana Zaiats <sorenabell@quintagroup.com>
Language-Team: Ukrainian <support@quintagroup.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: uk
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Lokalize 2.0
 :ref:`Value`, обов’язково Веб-адреса для участі в аукціоні. Bid Код критерію. Значення критерію. ID пов’язаного :ref:`lot`. Список об’єктів :ref:`Document` Список об’єктів :ref:`LotValue` Список об’єктів :ref:`Organization`  Список об’єктів :ref:`Parameter` LotValue Parameter Можливі значення: Схема UID, генерується автоматично URL-адреса Правила валідації: `active` - активна ставка `amount` повинно бути меншим, ніж `Auction.value.amount` Значення `amount` повинно бути меншим за `Lot.value.amout` `currency` повинно або бути відсутнім, або відповідати `Auction.value.currency` Значення `currency` повинно бути або відсутнім, або співпадати з `Lot.value.currency` `draft` - чернетка Значення `valueAddedTaxIncluded` повинно бути або відсутнім, або співпадати з `Auction.value.valueAddedTaxIncluded` `valueAddedTaxIncluded` повинно або бути відсутнім, або відповідати `Lot.value.valueAddedTaxIncluded` булеве значення булеве значення, обов'язково float, обов’язково обов'язково для dgfFinancialAssets процедури (продаж права вимоги за кредитними договорами) рядок рядок, :ref:`date`, генерується автоматично рядок, обов’язковий 