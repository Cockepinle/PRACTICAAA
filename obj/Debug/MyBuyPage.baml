   M S B A M L   `   `   `  ����@  <Salon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:SalonSalon  5          Salon.MyBuyPage   5      _ [MaterialDesignThemes.Wpf, Version=5.0.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      %localclr-namespace:Salon     5        N� Title$  	MyBuyPage��5      .��5      � ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ Black��6   � 5      $ 	#FFD63C3C��6    � Offset$ 1Q�61   5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5       �� 5!      �� 5"      �� 5#      �� 5$      �� 5%      .+�5'   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	SalonGrid��5'      $��4��6&   $��2��67   $��3��6D     5(   
   -   5        $ ChekGrid��5(      $��4��6%   $��2��66   $��3��6C   $��4��6W   �� 5)   
   -   5         ��Name$ TotalPriceTextBox��5)      $��1��6.   $��6��6;   ���	#FFFCD8D8	 �� 
CaretBrush	 �	#FFF4E3E2
 �� SelectionBrush
 �	#FFF6EFED6y   �� 5*   
   $��3��6   $��1��6$   $6��0Товары в чеке. Полная цена:��61   $��Center=�6T   $��
Constantia)�6o   $��20(�6�   $��	20,0,19,0q�6�   ���	#FFFAF9F9$��3��6�   �� 5+   
   $��0��6   $��1��6$   $'��!              Все товары��61   $��Center=�6Q   $��
Constantia)�6l   $��25(�6�   $��	20,0,19,0q�6�   ���	#FFFAF9F9$��3��6�   �� 5,   
   -   5        $ Address��5-      $��Center=�5,      $��6��6.   $��2��6;   $��0��6O   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$4 .Сумма, которую дал клиент��5.      $��	20,0,45,0q�6@   
�������.��6f   ��5/      �� 50       �� Path$
 Name�51   	    �� UpdateSourceTrigger$ PropertyChanged=�52   	    �� ValidationRules 53      55      .��56      57      �� 58   
   -   5         ��Name$	 Cer��58      $��6��6    $��3��6-   $��2��6A   $��	20,0,19,0q�6Q   �� 59   
   -   5        $
 Skid��5:      $��Center=�59      $��6��6.   $��2��6;   $��5��6O   $ Скидка��5;      $��	20,0,45,0q�6)   
�������.��6O   ��5<      �� 5=      $
 Name�5>      $ PropertyChanged=�5?       5@      5B      .��5C      5D      �� 5E   
   -   5        $1��+Закрыть и выгрузить чек��5E      $��7��63   $��7��6G   $��Center=�6U   $��Center=�6r   ���	#FF800900
�������$��
Constantia)�6�    � Cursor$
 Hand��6�   $	��710��6�   �� 5F   
   -   5        $��+��5F      $��3��6   $��2��6-   $��Center=�6;   $��Center=�6X   ���	#FF800900
�������$��
Constantia)�6�   $
 Hand��6�   �� 5G   
   -	   5        $��-��5G      $��3��6   $��5��6-   $��Center=�6;   $��Center=�6X   ���	#FF800900
�������$��
Constantia)�6�   $
 Hand��6�   5H      5I      