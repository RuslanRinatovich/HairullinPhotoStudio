   M S B A M L   `   `   `  ����N  JPhotoStudioSeverApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:PhotoStudioSeverAppPhotoStudioSeverApp  5   	   $    PhotoStudioSeverApp.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:PhotoStudioSeverApp     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5           MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   $	��450��5   	   $	��800��6    � WindowStartupLocation$ CenterScreen=�5   !    � Title 5	      ��  �� ElementName$ 	MainFrame�� �� Path$ Content.Title�.��5      �  � RowDefinitions 5   
   �� 5      $��75 �6   �� 5      $��* �6   �� 5      $��30 �6   .+�5   
   � (  "MaterialDesignThemes.Wpf.ColorZone  5   
   $��16q�6&   
��� � �}�.  
�������   Mode$ Custom=�5      .��5      ]� .+�5       ��  �� Orientation$ 
Horizontal=�6!   $
��Left=�6:   $
��Left=�6P   .+�5!      �� $7��1/PhotoStudioSeverApp;component/Resources/logo.png��6   $
��Left=�5#      $��55��6+   $��63��67   �� 5$      $
��16,0q�6&   $��Center=�6:   $%��ФОТОСТУДИЯ СЕВЕР��6W    $  MaterialDesignHeadline5TextBlock#��[ 6o   �� 5&      -   5        	 ��Name$	 BtnRooms��5&      
 � ToolTip$
 Залы��5'        MaterialDesignFlatButton#��[ 6,   $y�	Collapsed=�5(   T   ��6   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$
 Room=�   Size$ 24X�6T   �� 5*      -   5        $	 
BtnBooking��5*      $y�	Collapsed=�6K   $)
 #Бронирование залов��5+      #��[ 6:   ��5,        $ BookAccount=�$ 24X��� 5/      -   5        $	 BtnUsers��5/      $
 Пользователи��6G   #��[ 50      $y�	Collapsed=�6P   ��51        $ People=�$ 24X��� 53      -   5        $	 BtnMyrewiew��53      $y�	Collapsed=�6M   $
 Мои отзывы��54      #��[ 55      ��56        $ MessageDraw=�$ 24X��� 59      -   5        $	 BtnAllRewiew��59      $y�	Collapsed=�6O   $
 Отзывы��5:      #��[ 5;      ��5<        $ MessageDraw=�$ 24X��� 5>      -   5        $	 BtnMyBooking��5>      $y�	Collapsed=�6N   $
 Бронирование��5?      #��[ 5@      ��5A        $
 Book=�$ 24X��� 5D      -   5        $	 BtnBack��5D      $
 
Назад��6D   $y�	Collapsed=�6U   #��[ 6l   ��5E        $ 	ArrowBack=�$ 24X�5H      �� 5I      $��Right=�6   $ 
Horizontal=�64   $��Right=�6M   .+�5J      �� -	   5        $	 BtnMyAccount��5J      $
 Мой профиль��6O   #��[ 5K      $y�	Collapsed=�6P   ��5L        $ Account=�$ 24X��� 5N      -
   5         ��Name$ TextBlockUser��5N       $��Center=�67    $  MaterialDesignHeadline6TextBlock#��[ 6R   �� 5O      -   5        $	 BtnEnter��5O      $
 
Войти��5P      #��[ 6-   $��60��5Q      .��5R      '  !MaterialDesignThemes.Wpf.PackIcon  -   5          Name$ 
IconBtnKey��5R   2      Kind$ Login=�6G   $��0q�6T   5S      5T      5U      5V       � 5Y   
   -   5          �Name$ 	MainFrame��5Y      $��1��6#     � NavigationUIVisibility$ Hidden=�5Z      $��1q�5[      6$   �� 5q   
   $��2��6      MaterialDesignDarkBackground#��[ 6!   5s      5t      