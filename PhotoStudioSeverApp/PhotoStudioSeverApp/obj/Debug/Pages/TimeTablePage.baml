   M S B A M L   `   `   `  ����N  JPhotoStudioSeverApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:PhotoStudioSeverApp.PagesPhotoStudioSeverApp.Pages  5      -    'PhotoStudioSeverApp.Pages.TimeTablePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:PhotoStudioSeverApp.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        N� Title$  Расписание��5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��300 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��40 �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��2��6.   .+�5      �� $��Выберите зал��6    $   MaterialDesignSubtitle2TextBlock#��[  60   �� 5      -   5         ��Name$ 	ComboRoom��5   5   $��Stretch=�6   $	��400��6H    �� SelectedValuePath$ Id��5       �� DisplayMemberPath$ Title��5      5      #  MaterialDesignThemes.Wpf.Card  5   
   -   5          Name$ CardRoom��5   7   $	��300��6   $	��400��6*   $��1��6J    ! MaterialDesignLightBackground#��[ 6W   .��5       � .  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ SecondaryMid=�6    5!      �� 5#      $
��auto �6+   �� 5$      $��60 �6+   �� 5%      $��60 �6+   �� 5&      $	��100 �6+   �� 5'      $��40 �6+   �� 5(      $��40 �6+   .+�5,      �� -   5        	 ��Name$	 
ImagePhoto��5,      $��0��6U   $	��200��6c   $	��300��6q   $��Uniform=�5-   %   ��5,   ,   �� 
 �� Path$
 GetCurrentPhoto�5-   %   �� 5.      -   5        $��0��5.      $��Center=�6&   $
��Left=�6A     MaterialDesignFlatButton#���  6\   ��5/   %   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	ArrowLeft=�   Size$ 24X�6a   �� 51      -   5        $��0��51      $��Center=�6&   $��Right=�6A   #���  6]   ��52   %     $ 
ArrowRight=�$ 24X�6b   �� 54      $��1��6   $
��Left=�6H   
�������$
��Bold"�55   2   $��10q�6D   $��22(�56   1   ��54   1   �� *Title+56   1   �� 59      $��2��6   $
��Left=�6&   #���  6A   .��5:      �� $ 
Horizontal=�6!   .+�5;      �� $*��$Рейтинг по отзывам: ��6$   #��[  6@   (  "MaterialDesignThemes.Wpf.RatingBar  5<      -   5          Name$ RatingBarRate��5<   6   $��10 0 0 0q�6M      
IsReadOnly .    Value 5=   7   �� *	GetRate+5>      5?      �� 5@      $��3��6   $
��Wrap=�6B   
������� �� Padding$ 5q�6i   $��14(�6u   ��6)   �� *	GetInfo+6u   5C      5D      &   System.Windows.Controls.DataGrid  5F   
   -   5          Name$ DtData��5F         AutoGenerateColumns .  $��1��6@   $��1��6M      
IsReadOnly .    SelectionMode$ Single =�5H         Columns 5I      0  *System.Windows.Controls.DataGridTextColumn  5J      ,  &System.Windows.Controls.DataGridColumn   Header$ № п��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *Id+  5L      $ Дата��6%      Width5	  /System.Windows.Controls.DataGridLengthConverter$ *	 6x    63   �� *Date+ �� StringFormat$ d�� �� ConverterCulture$ ru-RU��6x     5M      $ 
Время��6%   $ *	 6_    64   �� *Time+$ t��6_     5N      $ Стоимость��6%    68   �� *Price+$ c��$ ru-RU��4
  .System.Windows.Controls.DataGridTemplateColumn
  5O      $
 auto	 6)   $  Редактировать��66    
  CellTemplate 5P      �� 5Q      .R�5R      ��  ��Name$ BtnEdit��6%   -   5        $��0q�5R   {   ��67     $
 Edit=�6{   5S      5U      
  5V      $
 auto	 6)   $ Удалить��66    5W      �� 5X      .R�5Y      �� $ 	BtnDelete��6%   -	   5        $��0q�5Y   �   ��69     $ Delete=�6�   5Z      5\      5_      �� 5`   
   $��2��6   $��1��6"   $ 
Horizontal=�62   $��Center=�6K   $��Center=�6f   .+�5a      �� -
   5        $ btnAdd��5a      $��Добавить��6%   68   5c      5e      5f      