   M S B A M L   `   `   `  ����E  ASampleTalk, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SampleTalk.ControlsSampleTalk.Controls  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      A =WpfLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA-clr-namespace:WpfLib.Controls;assembly=WpfLibWpfLib.Controls 5	      &     SampleTalk.Controls.LoginControl   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:SampleTalk.Controls     5      [ WFontAwesome6.Svg.Net, Version=2.5.1.0, Culture=neutral, PublicKeyToken=150287d219411f042fa6(http://schemas.fontawesome.com/icons/svg  5      3system&clr-namespace:System;assembly=mscorlib  5      <controls-clr-namespace:WpfLib.Controls;assembly=WpfLib  5	         ColorPrimary#��[  5        � 	Resources  5        ElementHeight  BottomButton �� 
TargetType �� Property  	ColorGray �� Value  	FontSmall��%�   &	       &	      7  7  X�5   
   35Q�62   �� 5   
   " ��6%   .�5      ��  � ��8   6+   �� 5       � ��
 ���� 6+   �� 5       � ��
 ���� 6,   �� 5       � ��8  6)   5      5      .��5      � $��20 40 20 20q�6    � RowDefinitions 5   
   �� 5      $
��1.3* �6   �� 5      $��3* �6   �� 5      $��30 �6   .+�5!   
   !  FontAwesome6.Svg.SvgAwesome     Icon$ Brands_Rocketchat=�6   $��20q�62      PrimaryColor# [ 6>   �� 5$   
   $��1��6   $��30 10q�6"   .+�5%      %  WpfLib.Controls.ComboBoxControl  
�������#��[ 6:      WaterMarkText$# 이메일을 입력하세요.��6b      WaterMarkTextColor
 ��  �	   
IsEditable$
	 True��5&   A   
   
Validating$
 False��6S      ItemsSource 6f   �� *Emails+(  "WpfLib.Controls.PasswordBoxControl  5'      
�������   WaterMarkText$&  비밀번호를 입력하세요.��6=   #��[ 6Z   �� 5(      $��	로그인��6   #��[ 6#   $��0 10 0 0q�6K   � 5*      #��[ 6    � ColumnDefinitions 5+      �� 5,      �� 5-      $
��Auto �6'   �� 5.      .+�50      �� $��0��6   �� 51      $��1��6   $��또는��6,   $��Center=�66   $	��5 0q�6Q   �� 52      $��2��6   53      �� 54      $��QR코드 로그인��6   #��[ 6(   � 55       56      �� 57      $��* �6'   �� 58      $��* �6'   .+�5:      �� $��0��6   $"��카카오톡으로 로그인��6)   #��[ 6>   ���#eeee00��5;      �� *LoginWithKakaoCommand+�� 5<      $��1��6   $��카카오톡 로그아웃��6)   #��[ 6=   ���#eeee00��5=      �� *LogoutKakaoCommand+5>      �� 5@      $��20(�62   ��6   �� *
CustomText+62   � 5B       5C      �� 5D      $��* �6'   �� 5E      $��* �6'   .+�5G      �� $��0��6   $��커스텀 메시지��6)   #��[ 6;   
���������5H      �� *SendCustomMessageCommand+�� 5I      $��1��6   $��템플릿 메시지��6)   #��[ 6;   
���������5J      �� *SendTemplateMessageCommand+5K      �� 5N       �� Orientation$ 
Horizontal=�6   #��[ 62   .+�5O      �� $��자동로그인��6   $��Center=�6+   �� 5P      $��2q�6   #��[ 5Q      #��[ 5R      $��17��5S      $��17��5T      $	��5 0q�5U        5V      ��%_   '��       �� 5W      " ��6    .�5X      ��  �@��CornerRadius$ 30��6=   5Y      5Z      .��5[        $ 
Solid_Info=�6%   
 �����67   5\      5]      5^      )   #SampleTalk.Controls.MainNaviControl  5a   
   $��2��6       
HideButton$ Login=�6-   5b      5c      