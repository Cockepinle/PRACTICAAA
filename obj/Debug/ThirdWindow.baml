   M S B A M L   `   `   `  ����@  <Salon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:SalonSalon  5   	       Salon.ThirdWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Salon     5   	     � Title$  ThirdWindow��5   	   $	��450��6   $	��800��6*   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	SalonGrid��5      �� 5   
   -   5        $��Авторизация��5      $��2��6'   $��4��64   $��Center=�6H   ���	#FF800900
�������$��
Constantia)�6�   $��	10,0,10,0q�6�   $��51��6�   �� 5   
   -   5         ��Name$ button��5      $��ПОКУПКА��6!   $��0��63   ���	#FF800900
�������$��
Constantia)�6m   $��16(�6�    � Cursor$
 Hand��6�   �� 5   
   -   5        $ button2��5      $%��СОХРАНЕННЫЕ ЧЕКИ��6"   $��2��6=   ���	#FF800900
�������$��
Constantia)�6w   $��16(�6�   $
 Hand��6�    � 5   
   -   5          �Name$ 	PageFrame��5      $��1��6#   $��3��60     � NavigationUIVisibility$ Hidden=�6D   5      5      