   M S B A M L   `   `   `  ����E  ASampleTalk, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SampleTalk.ControlsSampleTalk.Controls  5      A =WpfLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA-clr-namespace:WpfLib.Controls;assembly=WpfLibWpfLib.Controls 6s   '    !SampleTalk.Controls.SignupControl   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:SampleTalk.Controls     5      [ WFontAwesome6.Svg.Net, Version=2.5.1.0, Culture=neutral, PublicKeyToken=150287d219411f042fa6(http://schemas.fontawesome.com/icons/svg  6>   <controls-clr-namespace:WpfLib.Controls;assembly=WpfLib  6s      ColorPrimary#��[  5	        � 	Resources  5
        ValidationTextStyle �� 
TargetType �� Property �� Value �� Triggers �� Binding �� Value  EmailValidationTextStyle��%�  &	       &	 �     �� 5   
   " ��6,   .�5      ��  � y�$ Visible=�6+    5      �� 5       6   �� *ValidationText+  6A   .a�5      ��  � y�$ 	Collapsed=�63   5      5      �� 5   
   " ��61   .�5      ��  � y�$ Visible=�6+    5      �� 5       6   �� *EmailValidationText+  6F   .a�5      ��  � y�$ 	Collapsed=�63   5      5      5      .��5      � $��20 40 20 20q�6    � RowDefinitions 5   
   �� 5      $
��1.3* �6   �� 5       $��3* �6   �� 5!      $��30 �6   .+�5%   
   !  FontAwesome6.Svg.SvgAwesome     Icon$ Brands_Rocketchat=�6   $��20q�5&        	ColorGray	   PrimaryColor#	 [ 5'      �� 5)   
   $��1��6   $
��30 5q�5*      .+�5+      $  WpfLib.Controls.TextBoxControl  
   WaterMarkText$
 	이메일��5-   	   
�������  MainElementHeight#��[ 5/   	   $��0 0 0 0q�50   	      Text 5,   	   �� *Email+   
Validating 51   	   �� *ValidatingDict[Email]+�� 53      #��[ 54      ��53      �� *EmailValidationText+��55      �� *EmailValidationTextColor+  56      $
 	닉네임��58   	   
�������#��[ 5:   	   $��0 5 0 0q�5;   	    57   	   �� *
Nickname+ �� UpdateSourceTrigger$ PropertyChanged=� 5<   	   �� *ValidatingDict[Nickname]+  5?      $
 휴대전화번호��5A   	   
�������#��[ 5C   	   $��0 5 0 0q�5D   	    5@   	   �� *	CellPhone+ 5E   	   �� *ValidatingDict[CellPhone]+(  "WpfLib.Controls.PasswordBoxControl  5H      
�������   WaterMarkText$ 비밀번호��5K   	   #��[ 5L   	   $��0 5 0 0q�5M   	      Password 5I   	   �� *
Password+   
Validating 5N   	   �� *ValidatingDict[Password]+  5Q      
�������$ 비밀번호 재입력��5T   	   #��[ 5U   	   $��0 5 0 0q�5V   	    5R   	   �� *PasswordConfirm+ 5W   	   �� *!ValidatingDict[PasswordConfirm]+�� 5Z      #��[ 5[      
���  ��$��0 5 0 0q�5]      ��5Z      �� *ValidationText+5]      �� 5_      $��회원가입��6   #��[ 5a      $��	0 5 0 100q�5b      ��5`      �� *SignupCommand+5b      5c      )   #SampleTalk.Controls.MainNaviControl  5f   
   $��2��6       
HideButton$ Signup=�6-   5g      5h      