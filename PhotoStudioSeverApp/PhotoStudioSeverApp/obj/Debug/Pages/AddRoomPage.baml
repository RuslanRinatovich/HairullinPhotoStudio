   M S B A M L   `   `   `  ����N  JPhotoStudioSeverApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:PhotoStudioSeverApp.PagesPhotoStudioSeverApp.Pages  5      +    %PhotoStudioSeverApp.Pages.AddRoomPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      3local'clr-namespace:PhotoStudioSeverApp.Pages  5      X TXceed.Wpf.Toolkit, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5        N� Title$:  4Добавление и редактирование��5      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $��30 �6   �� 5      $��80 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��40 �6    � ColumnDefinitions 5   
   �� 5      $	��245 �6   �� 5      .+�5   
   �� -   5         ��Name$ BtnSave��5      $��9��6"   $��Сохранить��6/   $��Center=�5      $	��Top=�6.   $	��120��6F   $��1��5    &   $��213,3,222,0q�66   �� 5"   
   $��0��6   $��0��6"   $��Фото��62   $
��20 0q�6?   �� 5#   
   $��1��6   $��0��6!   $��Название��61   $
��20 0q�6B   �� 5$   
   $��2��6   $��0��6!   $��Описание��61   $
��20 0q�6B   �� 5%   
   $��3��6   $��0��6!   $��Площадь, м. кв.��61   $
��20 0q�6I   �� 5&   
   $��4��6   $��0��6!   $(��"Высота потолков, м.��61   $
��20 0q�6M   �� 5'   
   $��5��6   $��0��6!   $4��.Минимальная стоимость, р.��61   $
��20 0q�6S   �� 5(   
   $��6��6   $��0��6!   $��Направления��61   $
��20 0q�6E   �� 5*   
   $��7��6   $��0��6!   $!��Источник света��61   $
��20 0q�6H   �� 5.   
   -   5        $ BtnLoad��5.      $��0��6"   $��0��6/   $��	120,5,0,0q�6?   $
��Left=�5/      $	��Top=�6,   $��60��50   X   ��6&   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ ImageAdd=�6X   �� 52   
   -   5         ��Name$ TextBoxTitle��52      $��1��53      $��1��6   $	��0,2q�6/   $
��Auto��6=   ��52   (   �� *Title+53   =   �� 55   
   -   5        $ TextBoxDescription��55      $��2��56      $��1��6   $	��0,2q�6/   $
��Auto��6=    �� TextWrapping$
 Wrap=�6K   ��55   .   �� *Description+56   K   �� 58   
   -   5         ��Name$ ListBoxPhotos��58      $��0��6)   $��0 60 0 0q�59       �� SelectionMode$ Single=�6V   ��58   9   �� *Photos+��5:      �� 5;      	 �� 
TargetType"	 ��6   .�5<      �� 
 �� Property
 � �� �� Value$ 50��6/   5=      ��5?      �� 5@      .R�5A      ��  �� Orientation$ 
Horizontal=�6!   .+�5B      �� $��3q�6    ��6+   �� *
GetPhoto+�� 5C      $ 	BtnDelete��6!   -   5        $��Right=�5C   5    � ToolTip$ Удалить��5D   9      MaterialDesignFlatButton#��[  6K   ��5E        $ Trash=�5G      5H      5J      �� 5K   
   -   5         ��Name$ ImageCurrentPhoto��5K   2   $��1��6   $��Uniform=�6    62   %  Xceed.Wpf.Toolkit.IntegerUpDown  5L   
   -   5          Name$ IntegerUpDownArea��5L      $��3��69   $
��Left=�6G   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   DefaultValue$ 1X�6b   $��1��5M         Minimum$ 1X�6-   $	��100��69      Value 6E   �� *Area+$  Xceed.Wpf.Toolkit.DoubleUpDown  5N   
   -	   5          Name$  IntegerUpDownCeilingHeight��5N      $��4��6A   $
��Left=�6O   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   DefaultValue$ 1X�5O      $��1��6-      Minimum$ 1X�6=   �  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   	Increment$	 0.1X�6I   $	��100��6Y      Value 5P      �� *CeilingHeight+  5Q   
   -
   5        $ IntegerUpDownMinPrice��5Q      $
��Left=�6<   $��5��6X   $ 1X�6e   $��1��6v   $ 1X�6�   $	��100��6�    6�   �� *
MinPrice+ �� StringFormat$ c�� �� ConverterCulture$ ru-RU��%  Xceed.Wpf.Toolkit.CheckComboBox  5T   
   -   5          Name$ ComboCategories��5T      $��6��67   $��1��6D    �� DisplayMemberPath$ Title��5U   %   +  %Xceed.Wpf.Toolkit.Primitives.Selector   SelectedMemberPath$ Selected��5V      $��34��5W         MaxDropDownHeight$	 150Q�6+   �� 5X   
   -   5        $ TextBoxLight��5X      $��7��5Y      $��1��6   $	��0,2q�6/   $
��Auto��6=   ��5X   (   �� *Light+5Y   =   5Z      5[      