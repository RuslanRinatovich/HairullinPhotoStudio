   M S B A M L   `   `   `  ����N  JPhotoStudioSeverApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:PhotoStudioSeverApp.PagesPhotoStudioSeverApp.Pages  5      )    #PhotoStudioSeverApp.Pages.RoomsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:PhotoStudioSeverApp.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          N� Title$  Залы��5
      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��40 �6   .+�5   
   � $��0��6   $��Stretch=�6!   .+�5      �� -   5         ��Name$ 
TBoxSearch��5   "   $	��275��6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$. (Введите название зала��67   6n   �� 5      -   5         ��Name$ ComboCategory��5   #   $	��275��6   $��14(�6:   $��3q�6H   $ Категория��6T    �� DisplayMemberPath$ Title��5      66   �� 5       -   5        $ 	ComboSort��5!      $	��275��5       $! Сортировать по��6#   $��10 0 0 0q�5"      .@�5#      �� .��5$      ��  �� Orientation$ 
Horizontal=�6!   .+�5%      �� $��Название��6$   '  !MaterialDesignThemes.Wpf.PackIcon  5&         Kind$ SortAscending=�62   $��5 0 0 0q�6G   5'      5(      �� 5)      .��5*      �� $ 
Horizontal=�6!   .+�5+      �� $��Название��6$     5,      $ SortDescending=�62   $��5 0 0 0q�6H   5-      5.      �� 5/      .��50      �� $ 
Horizontal=�6!   .+�51      �� $��Рейтинг��6$     52      $! SortNumericAscendingVariant=�62   $��5 0 0 0q�6U   53      54      �� 55      .��56      �� $ 
Horizontal=�6!   .+�57      �� $��Рейтинг��6$     58      $" SortNumericDescendingVariant=�62   $��5 0 0 0q�6V   59      5:      5;      5=      &   System.Windows.Controls.DataGrid  5>   
   -   5          Name$ DataGridGood��5>      $��1��6)   	   AutoGenerateColumns	 .  
   
IsReadOnly
 .    SelectionMode$ Single=�5A         MaterialDesignDataGrid#���   5B       � 	Resources 5C      )  #System.Windows.Controls.DataGridRow �� 
TargetType �� Property �� Value  WrapText 	 First 	 Align��%N  '        &	 U     &	 �     &	 �    �� 5E      "  6   .�5F      ��  � �� 63   �� *
GetColor+5G      �� 5I      " ��6   .�5J      ��  � ��$
 Wrap=�65   �� 5K       �@��TextAlignment$ Justify=�66   �� 5L       � ��$ Center=�6:   5M      �� 5N      " ��6   .�5O      ��  � ��$
 Wrap=�65   �� 5P       �@��TextAlignment$
 Left=�66   �� 5Q       � ��$ Center=�6:   5R      �� 5T      " ��6   .�5U      ��  �@��TextAlignment$ Center=�66   �� 5V       � ��$ Center=�6:   5W      5Y         Columns 5Z      4  .System.Windows.Controls.DataGridTemplateColumn  5[      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 200 6)      Header$ Фото��65      CellTemplate 5\      �� 5]      .R�5^      � .+�5_   "   ��  ��Name$ 
ImagePhoto��6(   $��0��6e   $	��200��6r   $��Uniform=�5`   %   ��5_   <   ��  �� Path$ GetCurrentPhoto�5`   %   �� 5a   "   -   5        $��0��5a   )   $��Center=�66   $
��Left=�6Q     MaterialDesignFlatButton#���  6l   ��5b   %   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	ArrowLeft=�
 � Tag 6o   ��  �� ElementName$ 
ImagePhoto���� 5d   "   -   5        $��0��5d   )   $��Center=�66   $��Right=�6Q   #���  6m   ��5e   %     $ 
ArrowRight=� 6p   �� $ 
ImagePhoto��5h      5i      5k      0	  *System.Windows.Controls.DataGridTextColumn	  5l      $/ )Минимальная стоимость��6n   $ * 6�   1
  +System.Windows.Controls.DataGridBoundColumn 
  ElementStyle# [ 6�    
  Binding 6%   �� *
MinPrice+ �� StringFormat$ c�� �� ConverterCulture$ ru-RU��6�   	  5m      $ Название��6?   $ * 6Q   # [ 6[    6%   �� *Title+6[   	  5o      $ Описание��6E   $ 3* 6W   # [ 6b    6%   �� *Description+6b     5q      $
 auto 6)   $ Рейтинг��67    5r      �� 5s      .R�5t      (  "MaterialDesignThemes.Wpf.RatingBar    Name$ ratingBarFearLevel��68      
IsReadOnly . $��Center=�6g   
   Max$ 5��6�       Orientation$  
Horizontal=�6�   $��Center=�5u   R   !   Value! 68   �� *	GetRate+"   ValueItemTemplate" 5v   "   �� 5w   &   # �� DataType$# system:Int32��63   .R�5x   *   � .+�5y   .     $��24��6F   $��24��6R   $
 Star=�6`   �� 5z   .   $��Center=�68   $��Center=�6V   $��8(�6r      PrimaryHueMidForegroundBrush#���  6�   ��6�   �� 5{   +   5|   '   5~      5      5�      	  5�      $# Высота потолков��6G   # [ 6`    6%   �� *CeilingHeight+6`   	  5�      $ Площадь��6>   # [ 6O    6%   �� *Area+6O   	  5�      $! Источник света��6?   # [ 6W    6%   �� *Light+6W     5�      $
 auto 6)   $ Удалить��66    5�      �� 5�      .R�5�      �� $ ��Name$$ 	BtnDelete��6%   -   5        $��0q�5�   9   .��5�   "     $ Delete=�6:   5�      5�      5�        5�      $
 auto 6)   $ Изменить��66    5�      �� 5�      .R�5�      �� $$ BtnEdit��6%   -	   5        $��0q�5�   7   .��5�   "     $
 Edit=�6:   5�      5�      5�        5�      $
 auto 6)   $ Расписание��66    5�      �� 5�      .R�5�      �� $$ BtnTimeTable��6%   -
   5        $��0q�5�   <   .��5�   "     $ 	Timelapse=�6:   5�      5�      5�      5�      �� 5�   
   $ 
Horizontal=�6   $��2��6.   $��Right=�6;   .+�5�      �� -   5        $$ BtnCategories��5�      % � ToolTip$#% Категории залов��5�   .   .��5�        $ FormatListBulletedType=�6+   $��0q�6I   5�      �� 5�      -   5        $$ BtnAdd��5�      $��1��6%   $
��Auto��62   $% Добавить��5�   >   ��6     $	 Add=�6Q   �� 5�      -   5        $$ 	BtnDelete��5�      $��1��6(   $
��Auto��65   $��3q�6B   $% Удалить��5�   A   ��6     $ Delete=�6A   5�      �� 5�   
   -   5        & ��Name$& TextBlockCount��5�   !   $��2��6   $	��300��69   $
��Left=�6E   5�      5�      