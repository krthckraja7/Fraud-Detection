   M S B A M L   `   `   `  ����K  GDarkKnightCoders, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:DarkKnightCodersDarkKnightCoders  5   	       DarkKnightCoders.Output   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:DarkKnightCoders     5   	     � WindowState$  	Maximized=�5   	    � Title$ Output��5	   	   
�������$	��720��6+   $
��1080��68   .��5
      � 
�������.+�5   
   �� $��Total Transactions��6   $
��Left=�6-   $��100,100,0,0q�6H   $	��Top=�6]   $��32��6u   $	��133��6�   �� 5   
   $��Total Proper Transactions��6   $
��Left=�64   $��100,140,0,0q�6O   $	��Top=�6d   $��32��6|   $	��180��6�   �� 5   
   $��Total Fraud Transactions��6   $
��Left=�63   $��100,180,0,0q�6N   $	��Top=�6c   $��32��6{   $	��174��6�   �� 5   
   -   5        $��lblTotalTransactions��5      $
��Bold"�6,   $
��Left=�6>   $��250,100,0,0q�6Y   $	��Top=�6n   $��32��6�   $��50��6�   �� 5   
   -   5        $ ��lblTotalProperTransactions��5      $
��Bold"�62   $
��Left=�6D   $��250,140,0,0q�6_   $	��Top=�6t   $��32��6�   $��50��6�   �� 5   
   -   5        $��lblTotalFraudTransactions��5      $
��Bold"�61   $
��Left=�6C   $��250,180,0,0q�6^   $	��Top=�6s   $��32��6�   $��50��6�   �� 5   
   $��Fraud Transactions��6   $
��Left=�6-   $��100,250,0,0q�6H   $	��Top=�6]   $��33��6u   $	��137��6�   �� 5   
   -   5        $��lstFraud��5   -   $
��Left=�6   $	��123��6=   $��100,301,0,0q�6J   $	��Top=�6_   $	��730��6w   �� 5   
   $>��8Criterias that the machine has learned from the dataset:��6   $
��Left=�6S   $��100,471,0,0q�6n   $	��Top=�6�   $��32��6�   $	��353��6�   �� 5   
   -   5        $��
lstLearned��5   -   $
��Left=�6   $	��122��6?   $��100,523,0,0q�6L   $	��Top=�6a   $	��444��6y   �� 5   
   $(��"Transaction Report After Analyzing��6   $
��Bold"�6>   $��24(�6P   $
��Left=�6^   $��
337,32,0,0q�6y   $	��Top=�6�    J� RenderTransformOrigin$ -0.337,-2.808&�6�   �� 5   
   -   5        $��
lblMessage��5   +   $
��Left=�6   
���  ��$��380,120,0,0q�6N   $	��Top=�6c   �� 5   
   $��Trusted Locations��6   $
��Left=�6,   $��600,497,0,0q�6G   $	��Top=�6\   �� 5   
   -   5        $��lstTrustedLocations��5   -   $
��Left=�6   $	��122��6H   $��600,523,0,0q�6U   $	��Top=�6j   $	��230��6�   �� 5   
   $%��Type  --  Conditions for Amount��6   $
��Left=�6:   $��100,496,0,0q�6U   $	��Top=�6j   �� 5   
   $>��8InvoiceNo.  --  Type  --  Date  --  Location  --  Amount��6   $
��Left=�6S   $��100,274,0,0q�6n   $	��Top=�6�   5      5      