   M S B A M L   `   `   `  ����N  JPhotoStudioSeverApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:PhotoStudioSeverApp.WindowsPhotoStudioSeverApp.Windows  5   	   2    ,PhotoStudioSeverApp.Windows.MakeRewiewWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:PhotoStudioSeverApp.Windows     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      X TXceed.Wpf.Toolkit, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5
   	     � Title$  
Отзыв��5   
    � WindowStartupLocation$ CenterScreen=�5   	   $	��600��60   $	��800��6=   .��5      �  � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $	��200 �6   �� 5      $��40 �6   �� 5      $��80 �6    � ColumnDefinitions 5   
   �� 5      $	��160 �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ TextBoxRoomTitle��5      $��0��6,   $��Center=�6<   $��0��6W   $��30��6d   $��
0,5,-0.4,5q�6p    �� 
IsReadOnly . $��2��6�   �� 5   
   -   5        $ 
TbUserName��5      $��0��6@   $��Center=�6P   $��1��6k   $��30��6x   $��
0,5,-0.4,5q�6�    . $��2��6�   ��6&   �� *
UserName+6�   �� 5   
   -   5        $ TbTitle��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Отзыв��6:   $��20 5 0 0q�5      $��0��6%   $��Stretch=�5       �� TextWrapping$
 Wrap=�6.   $��2��6C   $��
0,7,-0.4,7q�6Q   $��2��6e   ��5   #   �� *Title+5   e   �� 5    
   $��3��6   $��10 0 0 0q�6!   $��Рейтинг��64   (  "MaterialDesignThemes.Wpf.RatingBar  5!   
   -   5          Name$ RatingBarRate��5!   %   $��3��6=   	   IsPreviewValueEnabled	 . 

   Max$
 5��5"   %   
   Min$ 1��6.      ValueIncrements$ 1Q�67   $��1��5#   <      Value 6%   �� *Rate+6<   �� 5$   
   $��Center=�6    �� Orientation$ 
Horizontal=�62   $��6��6K   $��160.8,0,303.6,0q�6X   $	��162��6q   $��1��6}   .+�5%      �� -   5         �� 	IsDefault . $��60��5%   ;   $��5q�6I   .��6T   OK6X   �� 5&       �� IsCancel . $��60��6%   $��5q�63   .��6>   Отмена6F   5'      5(      5)      