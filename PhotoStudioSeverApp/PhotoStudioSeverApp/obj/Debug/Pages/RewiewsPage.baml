   M S B A M L   `   `   `  ����N  JPhotoStudioSeverApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:PhotoStudioSeverApp.PagesPhotoStudioSeverApp.Pages  5      +    %PhotoStudioSeverApp.Pages.RewiewsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:PhotoStudioSeverApp.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          N� Title$  Мои отзывы��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $��40 �6   .+�5   
   � $��0��6   $��Stretch=�6!   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5         ��Name$ 
TBoxSearch��5   &   $	��275��6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$T NИмя пользователя, ФИО или название комнаты��6:   5      5      �� 5      $ 
Horizontal=�6   5      �� 5      $ 
Horizontal=�6   .+�5       �� -   5         ��Name$ 	ComboSort��5!      $	��275��5       $! Сортировать по��6(   .@�5#      �� $!��По возрастанию��6#   �� 5$      $��По убыванию��6#   5%      5&      5'      &   System.Windows.Controls.DataGrid  5(   
   -   5          Name$ DataGridGood��5(      $��1��6)      AutoGenerateColumns .     
IsReadOnly . 	   SelectionMode$	 Single=�5,      
   Columns
 5.      0  *System.Windows.Controls.DataGridTextColumn  50      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6<   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Id+6<     51      $ Зал��6D      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6Q    6%   �� *
Room.Title+6Q     52      $% Имя пользователя��6B   $ * 6\    6%   �� *
UserName+6\     53      $ ФИО��6E   $ * 6R    6%   �� *User.GetFIO+6R     54      $ Рейтинг��6>   $ * 6O    6%   �� *Rate+6O   4  .System.Windows.Controls.DataGridTemplateColumn  55      $
 auto 6)   $ Просмотр��66      CellTemplate 56      �� 57      .R�58      ��  ��Name$ BtnEdit��6%   -   5        $��0q�58   z   ��67   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$	 Eye=�6z   59      5;        5<      $
 auto 6)   $ Удалить��66    5=      �� 5>      .R�5?      �� $ 	BtnDelete��6%   -   5        $��0q�5?   �   ��69     $ Delete=�6�   5@      5B      5F      �� 5G   
   -   5         ��Name$ TextBlockCount��5G   !   $��2��6   $	��300��69   $
��Left=�6E   )	  #MaterialDesignThemes.Wpf.DialogHost	  5H   
   -   5         	 Name$ DialogHostMoreInformation��5H   $       MaterialDesignDarkBackground#��[  5I   $   $	��600��5K   $   $	��600��60   $	��400��5L   $   $	��400��61   $��1q�5M   $   $��Center=�68   $��Center=�6U   $��2��6p   $��2��6�    	  DialogContent 5O      �� 5P      $��20q�6   .+�5Q      � .
  (MaterialDesignThemes.Wpf.ColorZoneAssist 
  Mode$
 Dark=�6    5R      �� 5S      $��60 �63   �� 5T      $	��340 �63   .+�5Z      �� $��0��6$   $��5q�66    �� TextAlignment$ Center=�6A   $��Stretch=�6Y   $��Отзывы��5[   (   $
��Wrap=�66   $��Center=�6J   $
��Bold"�5\   (   $��14(�6:   #  MaterialDesignThemes.Wpf.Card  5`      $	��600��6.   $��1��6:   .��5a      �  5b   "   �� 5c   &   $��30 �64   �� 5d   &   $��30 �64   �� 5e   &   $��30 �64   �� 5g   &    � ColumnDefinitions 5i   "   �� 5j   &   $	��180 �67   �� 5k   &   .+�5p   "   (  "MaterialDesignThemes.Wpf.RatingBar  $��10 0 0 0q�6;      IsPreviewValueEnabled . $��0��6j   $��0��6w      
IsReadOnly . 
   Max$ 5��6�      Value 6�   �� *Rate+6�   �� 5q   "   $��16(�6,   $��20 0 0 0q�6:   $��0��5r   <   $��1��6I    $  MaterialDesignSubtitle2TextBlock#��[ 5s   8   $
��Wrap=�5t   Z   $	��600��6n   $��Stretch=�5u   8   ��5t   8   ��  �� Path$ User.GetFIO�5u   8   �� 5w   "   $��14(�6,   $��10 0 0 0q�6:   $��
Отзыв��6M   $��2��6Z   $��0��6g   $��2��6w   #��[ 5x   8   $��Stretch=�5z   8   �� 5{   "   $��Disabled=�6/   $
��Auto=�6Y   $��3��6}   $��0��6�   $��2��6�   .��5|   &   �� $��14(�60   $��10 0 0 0q�6>   $
��Wrap=�6h   $��Stretch=�5}   8   ��5|   Q   �� *Title+5}   8   5~   #   5      5�      5�      �� 5�      -	   5        $ btnOk��5�      $	��100��6@   $��Center=�6L   .��5�      �� $ 
Horizontal=�6%   $��Center=�6>   .+�5�      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Check=�66   ���#FFF$��5q�6U   $��Center=�6`   �� 5�      $��OK��6(   $��Center=�62   5�      5�      5�      5�      5�      5�      