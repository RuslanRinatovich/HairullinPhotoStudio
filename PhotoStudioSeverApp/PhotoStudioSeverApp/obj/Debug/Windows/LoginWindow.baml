   M S B A M L   `   `   `  ����N  JPhotoStudioSeverApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:PhotoStudioSeverApp.WindowsPhotoStudioSeverApp.Windows  5   	   -    'PhotoStudioSeverApp.Windows.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:PhotoStudioSeverApp.Windows     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � Title$ Вход��6<   $	��250��6K   $	��400��5   	   $	��250��6   $	��400��6%    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�67   .��5      �  � ColumnDefinitions 5   
   �� 5       � RowDefinitions 5   
   �� 5      $��75 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      �� 5      $��20 �6   .+�5   
   � '  !MaterialDesignThemes.Wpf.PackIcon  5   
      Kind$	 Key=�6"     PrimaryHueMidBrush#��[ 6-   $��	10,10,0,0q�5       $
��Left=�5!      $��55��6+   $��62��67   �� 5"   
   $��0��6   $��
СЕВЕР��6!   $��Center=�5#      $��Center=�5$      $��16(�5%       �� TextAlignment$ Center=�6#   $
��Bold"�5&      $��60��6&   $	��281��63   �� 5)   
   -   5        	 ��Name$	 TbLogin��5)      $��1��6$   $��1��5*      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 
Логин��6&   $	��300��5+      $��admin��6"   G� 5-   
   -   5         G�Name$ TbPass��5-      $��30��6&   $	��300��62   $
 Пароль��6>    G� Password$ 1��6f   $��2��6s   �� 5.   
    �� Orientation$ 
Horizontal=�6   $��3��6.   $��Center=�6;   .+�5/      �� -   5         ��Name$ BtnOk��51      $	��100��5/      $��30��6!   $��OK��50       �� 	IsDefault . 52   (   �� 53      -   5        $ 	BtnCancel��56      $	��100��53      $��30��54      $��Cancel��55       �� IsCancel . 57      58      �� 59   
   -   5        $��4��59      $��Регистрация��6   $��0q�64   $��10(�6@   $��20��6N   6Z   )  #MaterialDesignThemes.Wpf.DialogHost  5:   
   -   5          Name$ 
DialogHost��5:   $   $��1q�5;   #      DialogContent 5<      �� 5?      .+�5A      � $	��Top=�6   $��35, 60q�63   $	��180��6C   $	��420��6P   .+�5B      �� $��Регистрация ��6    $��Center=�67   $	��Top=�6T   $��0 0 0 20q�6l   
�������$��18(�6�   �� 5C      $��Center=�6%   $��15q�6@   .+�5D      �� -   5        $	 
tbRegLogin��5D   &   $��0, 10q�6:    �� TextAlignment$
 Left=�6J   $
 
ЛОГИН��6_   $��18(�6�   G� 5E      -   5        $ psbPassword1��5E   *   $
��0,10q�6@   $
 ПАРОЛЬ��6N   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton . $��18(�6�   G� 5F      -	   5        $ psbPassword2��5F   *   $
��0,10q�6@   $
 ПАРОЛЬ��6N    . $��18(�6�   5G      5H      �� 5I      $��Center=�6!   $��10 20q�6>   .+�5K      �� $ 
Horizontal=�6%   $��Center=�6>   .+�5L      �� -
   5        $ btnOk��5L   %   .��5M   "   �� $ 
Horizontal=�6-   $��Center=�6F   .+�5N   &     $ Check=�6>   $��5q�6L   $��Center=�6W   �� 5O   &   $��Ok��60   $��Center=�6:   5P   #   5R      �� 5U      -   5        $ 	btnCancel��5U   %   .��5V   "   �� $ 
Horizontal=�6-   $��Center=�6F   .+�5W   &     $ Cancel=�6>   $��5q�6M   $��Center=�6X   �� 5X   &   $��Cancel��60   $��Center=�6>   5Y   #   5Z      5[      5\      5]      5_      5`      5a      