   M S B A M L   `   `   `  ����A  =WpfLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfLib.ControlsWpfLib.Controls  5      5clr-namespace:WpfLib.ConvertersWpfLib.Converters  6:   #    WpfLib.Controls.ControlSlider   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:WpfLib.Controls     5      6
convertersclr-namespace:WpfLib.Converters     6:   -   5          >�Name$
  root��5       � 	Resources 5      '   !WpfLib.Converters.InvertConverter   InvertConverter  SlideLeftToRight g� FillBehavior �� TargetProperty	 W� To g� Duration �� ElementName W� From �� 	Converter  SlideRightToLeft  SlideTopToBottom  SlideBottomToTop��%�  &	        &	      7   &	 �    7   &	 W    7   &	 �    7     5   
   6%   �� 5   
   -   5        $
 Stop=�5      .��5      W� $. ((RenderTransform).(TranslateTransform.X)�5   	    05   	    5   	   �� *
Duration+$
 root�� 5   	   �� *ActualWidth+$
 root��8   5   	   W� 5      $. ((RenderTransform).(TranslateTransform.X)�5   	    05   	    5   	   �� *
Duration+$
 root�� 5   	   �� *ActualWidth+$
 root��5      �� 5    
   -   5        $
 Stop=�5"      .��5%      W� $. ((RenderTransform).(TranslateTransform.X)�5'   	    05)   	    5&   	   �� *
Duration+$
 root�� 5(   	   �� *ActualWidth+$
 root��5)   	   W� 5+      $. ((RenderTransform).(TranslateTransform.X)�5-   	    05.   	    5,   	   �� *
Duration+$
 root�� 5/   	   �� *ActualWidth+$
 root��8   51      �� 53   
   -   5        $
 Stop=�55      .��58      W� $. ((RenderTransform).(TranslateTransform.Y)�5:   	    05=   	    59   	   �� *
Duration+$
 root�� 5;   	   �� *ActualHeight+$
 root��8   5=   	   W� 5?      $. ((RenderTransform).(TranslateTransform.Y)�5A   	    05B   	    5@   	   �� *
Duration+$
 root�� 5C   	   �� *ActualHeight+$
 root��5D      �� 5F   
   -   5        $
 Stop=�5H      .��5K      W� $. ((RenderTransform).(TranslateTransform.Y)�5M   	    05O   	    5L   	   �� *
Duration+$
 root�� 5N   	   �� *ActualHeight+$
 root��5O   	   W� 5Q      $. ((RenderTransform).(TranslateTransform.Y)�5S   	    05T   	    5R   	   �� *
Duration+$
 root�� 5U   	   �� *ActualHeight+$
 root��8   5W      5X      .��5Y      � .+�5Z   
   �� -   5        	 ��Name$	 content1��5Z      z�5[      T� 5\      
 T� X$
 0Q�6%    T� Y$ 0Q�6+   5^      �� 5_   
   -   5        $	 content2��5_      z�5`      T� 5a      $
 0Q�6%   $ 0Q�6+   5c      5d      5e      