   M S B A M L   `   `   `  ����@  <Salon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:SalonSalon  5          Salon.EmployeeAdminPage   5      _ [MaterialDesignThemes.Wpf, Version=5.0.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      %localclr-namespace:Salon     5        N� Title$  EmployeeAdminPage��5
      .��5      � ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ Black��6   � 5      $ 	#FFD63C3C��6    � Offset$ 1Q�61   5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5       �� 5!      �� 5"      �� 5#      .+�5%   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	SalonGrid��5%      $��3��6&   $��8��6:   �� 5&   
   -   5        $��Добавить��5&      $��3��6$   $��7��64   $��Center=�6A   $��Bottom=�6^   ���	#FF800900
�������$��
Constantia)�6�   6�   �� 5'   
   -   5        $��Удалить��5'      $��4��6#   $��7��63   $��Center=�6@   $��Bottom=�6]   ���	#FF800900
�������$��
Constantia)�6�   6�   �� 5(   
   -   5        $��Изменить��5(      $��5��6$   $��7��64   $��Center=�6A   $��Bottom=�6^   ���	#FF800900
�������$��
Constantia)�6�   6�   �� 5)   
   $��3��6   $��1��6$   $4��.      Данные для заполнения��61   $��Center=�6T   $��
Constantia)�6o   $��25(�6�   $��	20,0,19,0q�6�   ���	#FFFAF9F9$��3��6�   �� 5*   
   -   5         ��Name$ Surname��5+   	   $��Center=�5*      $��2��6.   $��3��6;   )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Фамилия��5,   	   $��	20,0,19,0q�62   
�������$��3��6X   .��6l   ��5-      �� 5.      
 �� Path$

 Name�5/       �� UpdateSourceTrigger$ PropertyChanged=�50       �� ValidationRules 51      53      .��54      55      �� 56   
   -   5        $
 Name��57   
   $��Center=�56      $��3��6.   $��3��6;   $	 Имя��58   
   $��	20,0,19,0q�6/   
�������$��3��6U   .��6i   ��59      �� 5:      $

 Name�5;      $ PropertyChanged=�5<       5=      5?      .��5@      5A      �� 5B   
   -   5        $ 
MiddleName��5C      $��Center=�5B      $��4��6.   $��3��6;   $	 Отчество��5D      $��	20,0,19,0q�60   
�������$��3��6V   .��6j   ��5E      �� 5F      $

 Name�5G      $ PropertyChanged=�5H       5I      5K      .��5L      5M      �� 5N   
   -   5         ��Name$
 Role��5N      $��3��6!   $��3��61   $��5��6E   $��	20,0,19,0q�6R   �� 5O   
   -	   5        $ Spesilization��5O      $��3��6*   $��3��6:   $��6��6N   $��	20,0,19,0q�6[   5Q      5R      