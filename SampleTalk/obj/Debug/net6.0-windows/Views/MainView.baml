   M S B A M L   `   `   `  ����E  ASampleTalk, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SampleTalk.ViewsSampleTalk.Views  5   	   9!clr-namespace:SampleTalk.ControlsSampleTalk.Controls  5   	   =#clr-namespace:SampleTalk.ViewModelsSampleTalk.ViewModels  5   	   A =WpfLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA-clr-namespace:WpfLib.Controls;assembly=WpfLibWpfLib.Controls 68       SampleTalk.Views.MainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:SampleTalk.Views     5   	   6controls!clr-namespace:SampleTalk.Controls     5   	   2vm#clr-namespace:SampleTalk.ViewModels     5   	   C	controls1-clr-namespace:WpfLib.Controls;assembly=WpfLib     68     � WindowStyle$
  None=�5
   	    � Title$ MainView��5   	   $	��550��6   $	��350��6'    � 	Resources 5       �� DataType1   +SampleTalk.ViewModels.LoginControlViewModel&    SampleTalk.Controls.LoginControl5   /SampleTalk.ViewModels.ChangePwdControlViewModel*   $SampleTalk.Controls.ChangePwdControl2   ,SampleTalk.ViewModels.SignupControlViewModel'   !SampleTalk.Controls.SignupControl0   *SampleTalk.ViewModels.FindAccountViewModel,   &SampleTalk.Controls.FindAccountControl��%,  (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)(�� �     5      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      5      '	  !System.Windows.Shell.WindowChrome 	  WindowChrome 5      	  5   
    	  CaptionHeight$ 20Q�6    	  ResizeBorderThickness$ 2q�6*   .��5       �  � RowDefinitions 5!   
   �� 5"      $
��Auto �6   �� 5#      $��* �6   .+�5'   
   "
   SampleTalk.Controls.TitleBar
  #  WpfLib.Controls.ControlSlider  5*   
   $��1��6"      Duration 0:0:0.56v   	   	ViewModel	 6/   �� *CurrentViewModel+
   	SlideType
 6V   �� *	SlideType+6v   5,      5-      