   M S B A M L   `   `   `  ����N  JPhotoStudioSeverApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:PhotoStudioSeverApp.PagesPhotoStudioSeverApp.Pages  5      ,    &PhotoStudioSeverApp.Pages.MyRewiewPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:PhotoStudioSeverApp.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          N� Title$  Мои отзывы��5	      .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $��40 �6   .+�5   
   � $��0��6   $��Stretch=�6!   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5         ��Name$ 
TBoxSearch��5   &   $	��275��6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$2 ,Введите название квеста��6:   5      5      �� 5      $ 
Horizontal=�6   5      �� 5      $ 
Horizontal=�6   .+�5      �� -   5         ��Name$ 	ComboSort��5      $	��275��5      $! Сортировать по��6(   .@�5!      �� $!��По возрастанию��6#   �� 5"      $��По убыванию��6#   5#      5$      5%      &   System.Windows.Controls.DataGrid  5&   
   -   5          Name$ DataGridGood��5&      $��1��6)      AutoGenerateColumns .     
IsReadOnly . 	   SelectionMode$	 Single=�5*      
   Columns
 5,      0  *System.Windows.Controls.DataGridTextColumn  5.      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6<   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Id+6<     5/      $ Зал��6D      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6Q    6%   �� *
Room.Title+6Q     50      $ Рейтинг��6>   $ * 6O    6%   �� *Rate+6O   4  .System.Windows.Controls.DataGridTemplateColumn  52      $
 auto 6)   $ Просмотр��66      CellTemplate 53      �� 54      .R�55      ��  ��Name$ BtnView��6%   -   5        $��0q�55   z   ��67   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$	 Eye=�6z   56      58        59      $
 auto 6)   $  Редактировать��66    5:      �� 5;      .R�5<      �� $ BtnEdit��6%   -   5        $��0q�5<   {   ��67     $
 Edit=�6{   5=      5?        5@      $
 auto 6)   $ Удалить��66    5A      �� 5B      .R�5C      �� $ 	BtnDelete��6%   -   5        $��0q�5C   �   ��69     $ Delete=�6�   5D      5F      5J      �� 5K   
   -   5         ��Name$ TextBlockCount��5K   !   $��2��6   $	��300��69   $
��Left=�6E   )	  #MaterialDesignThemes.Wpf.DialogHost	  5M   
   -	   5         	 Name$ DialogHostMoreInformation��5M   $       MaterialDesignDarkBackground#��[  5N   $   $	��600��5P   $   $	��600��60   $	��400��5Q   $   $	��400��61   $��1q�5R   $   $��Center=�68   $��Center=�6U   $��2��6p   $��2��6�    	  DialogContent 5T      �� 5U      $��20q�6   .+�5V      � .
  (MaterialDesignThemes.Wpf.ColorZoneAssist 
  Mode$
 Dark=�6    5W      �� 5X      $��60 �63   �� 5Y      $	��340 �63   .+�5_      �� $��0��6$   $��5q�66    �� TextAlignment$ Center=�6A   $��Stretch=�6Y   $��Отзывы��5`   (   $
��Wrap=�66   $��Center=�6J   $
��Bold"�5a   (   $��14(�6:   #  MaterialDesignThemes.Wpf.Card  5e      $	��600��6.   $��1��6:   .��5f      �  5g   "   �� 5h   &   $��30 �64   �� 5i   &   $��30 �64   �� 5j   &   $��30 �64   �� 5l   &    � ColumnDefinitions 5n   "   �� 5o   &   $	��180 �67   �� 5p   &   .+�5u   "   (  "MaterialDesignThemes.Wpf.RatingBar  $��10 0 0 0q�6;      IsPreviewValueEnabled . $��0��6j   $��0��6w      
IsReadOnly . 
   Max$ 5��6�      Value 6�   �� *Rate+6�   �� 5v   "   $��16(�6,   $��20 0 0 0q�6:   $��0��5w   <   $��1��6I    $  MaterialDesignSubtitle2TextBlock#��[ 5x   8   $
��Wrap=�5y   Z   $	��600��6n   $��Stretch=�5z   8   ��5y   8   ��  �� Path$ User.GetFIO�5z   8   �� 5   "   $��14(�6,   $��10 0 0 0q�6:   $��
Отзыв��6M   $��2��6Z   $��0��6g   $��2��6w   #��[ 5�   8   $��Stretch=�5�   8   �� 5�   "   $��Disabled=�6/   $
��Auto=�6Y   $��3��6}   $��0��6�   $��2��6�   .��5�   &   �� $��14(�60   $��10 0 0 0q�6>   $
��Wrap=�6h   $��Stretch=�5�   8   ��5�   Q   �� *Title+5�   8   5�   #   5�      5�      5�      �� 5�      -
   5        $ btnOk��5�      $	��100��6@   $��Center=�6L   .��5�      �� $ 
Horizontal=�6%   $��Center=�6>   .+�5�      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Check=�66   ���#FFF$��5q�6U   $��Center=�6`   �� 5�      $��OK��6(   $��Center=�62   5�      5�      5�      5�      5�      5�      