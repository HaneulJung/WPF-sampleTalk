   M S B A M L   `   `   `  ����E  ASampleTalk, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SampleTalk.ControlsSampleTalk.Controls  5      )    #SampleTalk.Controls.MainNaviControl   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:SampleTalk.Controls     5        � 	Resources  5	         Col0 �� 
TargetType �� Property �� Value �� Triggers �� Binding �� Value��%�   &	        �� 5
   
   " ��6   .�5      ��  � ��$
 auto �6&    5      �� 5       6   �� *IsFindAccountVisible+	 False6G   .a�5      ��  � ��$ 0 �6.   5      5      5      .��5      �  � ColumnDefinitions 5   
   �� 5      -   5         ��Name$ accountColumn��5      �� 5      -   5        $ accPwdSepColumn��5      $
��auto �68   �� 5      -   5        $ passwordColumn��5      �� 5      -   5        $ pwdLoginSepColumn��5      $
��auto �6:   �� 5      -   5        $ LoginColumn��5      �� 5      -   5        $ loginSignupSepColumn��5      $
��auto �6=   �� 5      -   5        $ signupColumn��5      .+�5   
   �� $��0��6   $��계정 찾기��5        MainBottomButton#��[ 5!      ��5       �� *NavigateFindAccountCommand+5!      �� 5"   
   $��1��6   $��1��5#      #��["�5$      $	��0 5q�5%      �� 5&   
   $��2��6   $��비밀번호 재설정��5'      #��[ 5)      ��5(      �� *NavigateChangePasswordCommand+5)      �� 5*   
   $��3��6   $��1��5+      #��["�5,      $	��0 5q�5-      �� 5.   
   $��4��6   $��로그인화면��5/      #��[ 51      ��50      �� *NavigateLoginCommand+51      �� 52   
   $��5��6   $��1��53      #��["�54      $	��0 5q�55      �� 56   
   $��6��6   $��회원가입��57      #��[ 59      ��58      �� *NavigateSignupCommand+59      5:      5;      