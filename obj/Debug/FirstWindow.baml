   M S B A M L   `   `   `  ����@  <Salon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:SalonSalon  5   	       Salon.FirstWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Salon     5   	     � Title$  FirstWindow��5   	   $	��450��6   $	��800��6*   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	SalonGrid��5      �� 5   
   -   5        $��Авторизация��5      $��2��6'   $��3��64   $��Center=�6H   ���	#FF800900
�������$��
Constantia)�6�   $��	10,0,10,0q�6�   $��51��6�   �� 5   
   -   5         ��Name$ button��5      $��РОЛИ��6!   $��0��60   ���	#FF800900
�������$��
Constantia)�6j   $��16(�6�   6�   �� 5   
   -   5        $ button1��5      $��СОТРУДНИКИ��6"   $��1��67   ���	#FF800900
�������$��
Constantia)�6q   $��16(�6�   6�   �� 5   
   -   5        $ button2��5      $0��*ДАННЫЕ ДЛЯ АВТОРИЗАЦИИ��6"   $��2��6C   ���	#FF800900
�������$��
Constantia)�6}   $��16(�6�   6�    � 5   
   -   5          �Name$ 	PageFrame��5      $��1��6#   $��3��60     � NavigationUIVisibility$ Hidden=�6D   5      5      