   M S B A M L   `   `   `  ����E  ASampleTalk, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SampleTalk.ControlsSampleTalk.Controls  5      =#clr-namespace:SampleTalk.ConvertersSampleTalk.Converters  6s   "    SampleTalk.Controls.TitleBar   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:SampleTalk.Controls     5      [ WFontAwesome6.Svg.Net, Version=2.5.1.0, Culture=neutral, PublicKeyToken=150287d219411f042fa6(http://schemas.fontawesome.com/icons/svg  6>   4
converters#clr-namespace:SampleTalk.Converters  6s   -   5        $
��root��5	        � 	Resources  5      6   0SampleTalk.Converters.WindowStateMarginConverter   WindowStateMarginConverter4   .SampleTalk.Converters.WindowStateIconConverter  WindowStateIconConverter �� 
TargetType �� Property �� Value'  !System.Windows.Shell.WindowChrome!  FontAwesome6.Svg.SvgAwesome  	ColorGray��%�  &	        &	      '�� &     '  D    7    5   
   60     5   
   6.   �� 5   
   " ��6   .�5      ��  � ��$ 25��6&   �� 5       � ��$ 20��6'   �� 5       � ��
 ���� 6+   �� 5       � ��
 ���� 6,   �� 5       � ��$ Right=�6/   �� 5        �@ IsHitTestVisibleInChrome$
 True��6F   5      �� 5   
   "  6   .�5      ��  �@ PrimaryColor8   6-   5      5      .��5      ]� -   5         ]�Name$ pnlTitle��5        ColorPrimary#��[ 6"   $��False��6M   .+�5   
   �� -   5         ��Name$ btnExit��5      ��6"   �� *
WinState+ �� ElementName$
 root�� �� 	Converter# [   �� ConverterParameter$
 Exit��.��5        	   Icon$	 Solid_Xmark=�6   5       �� 5!   
   -   5        $ btnMaximize��5!      ��6'   �� *
WinState+$
 root��# [  .��5"        $��13��6~   $��13��6�   	 6   �� *
WinState+$
 root��# [ 6�   5#      �� 5$   
   -   5        $ btnMinimize��5$      ��6'   �� *
WinState+$
 root��# [  .��5%        $	 Solid_Minus=�6   5&      5'      5(      