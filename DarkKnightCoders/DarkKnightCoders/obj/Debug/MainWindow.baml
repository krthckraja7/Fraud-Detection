   M S B A M L   `   `   `  ����K  GDarkKnightCoders, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:DarkKnightCodersDarkKnightCoders  5   	   !    DarkKnightCoders.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:DarkKnightCoders     5   	     � 
ResizeMode$  CanMinimize=�5   	    � Title$ 
MainWindow��5	   	   $	��450��6   $	��800��6)   .��5
      � .+�5   
   �� -   5        $��Start��5      $
��Left=�6!   $��360,320,0,0q�6<   $	��Top=�6Q   $��80��6i   6t   �� 5   
   $=��7Load Your Transaction Dataset in the file 'C:\data.csv'��6   $��18(�6R   $
��Left=�6`   $��
185,54,0,0q�6{   $	��Top=�6�   �� 5   
   $��Format for the CSV File��6   $
��Bold"�62   $
��Left=�6D   $��
334,99,0,0q�6_   $	��Top=�6s   � 5   
    � ShowGridLines . $	��100��6$   $	��800��64   $��50,150,50,173q�6C    � ColumnDefinitions 5      �� 5      $
��auto �6#   $	��177��60   6A   �� 5      $
��auto �6#   $��82��60   6@   �� 5      $
��auto �6#   62   �� 5      $
��auto �6#   62   �� 5      $
��auto �6#   $��90��60   6@   �� 5      $
��auto �6#   $��86��60   6@    � RowDefinitions 5      �� 5      $	��100 �6    6/   .+�5      �� $�� Invoice Number ��6   $��0��60   $��0��6=   $��16(�6M   $��Center=�6[   $��Center=�6v    �� TextAlignment$ Center=�6�   $��20��6�   $��
0,40,10,40q�6�   $	��167��6�   6�   �� 5      $�� Type ��6   $��0��6&   $��1��63   $��16(�6C   $��Center=�6Q   $��Center=�6l   $ Center=�6�   $��20��6�   $��10,40q�6�   $��62��6�   6�   �� 5      $�� Description ��6   $��0��6-   $��2��6:   $��16(�6J   $��Center=�6X   $��Center=�6s   $ Center=�6�   $��20��6�   $��	1,40,0,40q�6�   $	��109��6�   6�   �� 5      $�� Transaction date ��6   $��0��62   $��3��6?   $��16(�6O   $��Center=�6]   $��Center=�6x   $ Center=�6�   $��20��6�   $��
10,40,0,40q�6�   $	��137��6�   6�   �� 5      $��
 Location ��6   $��0��6*   $��4��67   $��16(�6G   $��Center=�6U   $��Center=�6p   $ Center=�6�   $��20��6�   $
��0,40q�6�   $��90��6�   6�   �� 5      $�� Amount ��6   $��0��6(   $��5��65   $��16(�6E   $��Center=�6S   $��Center=�6n   $ Center=�6�   $��20��6�   $��	0,40,1,40q�6�   $��85��6�   6�   5       �� 5!   
   $��Once done Click��6   $
��Left=�6*   $��18(�6E   $��332,280,0,0q�6S   $	��Top=�6h   �� 5"   
   $$��To Find the Fraud Transactions��6   $
��Left=�69   $��18(�6T   $��277,345,0,0q�6b   $	��Top=�6w   5#      5$      