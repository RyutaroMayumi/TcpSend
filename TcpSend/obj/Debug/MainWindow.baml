   M S B A M L   `   `   `  ����B  >TcpSend, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:TcpSendTcpSend  5   	       TcpSend.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:TcpSend     5   	     � Title$  Tcp Send Data��5   	   $	��350��6   $	��525��6,   .��5	      � .+�5
   
   �� -   5         ��Name$ label��5
      $��
Host Name:��6   $
��Left=�64   $��	10,10,0,0q�6O   $	��Top=�6b   �� 5   
   -   5         ��Name$ txtHost��5      $
��Left=�6#   $��23��6>   $��
100,10,0,0q�6J    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $	��120��6�   �� 5   
   -   5        $ label1��5      $��Port:��6    $
��Left=�60   $��
225,10,0,0q�6K   $	��Top=�6_   �� 5   
   -   5        $ txtPort��5      $
��Left=�6#   $��23��6>   $��
268,10,0,0q�6J   $
 Wrap=�6^   $	��Top=�6r   $	��120��6�   �� 5   
   -   5        $ label2��5      $��Data:��6    $
��Left=�60   $��
225,42,0,0q�6K   $	��Top=�6_   �� 5   
   -   5        $ txtFile��5      $
��Left=�6#   $��23��6>   $��
268,41,0,0q�6J   $
 Wrap=�6^   $	��Top=�6r   $	��120��6�   �� 5   
   -   5         ��Name$ btnOpen��5      $��	Open File��6"   $
��Left=�66   $��
433,41,0,0q�6Q   $	��Top=�6e   $��75��6}   6�   �� 5   
   -   5        $ btnSend��5      $��	Send Data��6"   $
��Left=�66   $��
433,10,0,0q�6Q   $	��Top=�6e   $��75��6}   6�   �� 5   
   -	   5         ��Name$ richTextBox��5      $
��Left=�6+   $	��243��6F   $��	10,69,0,0q�6S   $	��Top=�6f   $	��498��6~   . �5      /� .T�5      J� 5      5      �� 5   
   -
   5        $ label3��5      $��Type:��6    $
��Left=�60   $��	10,37,0,0q�6K   $	��Top=�6^   �� 5   
   -   5         ��Name$ comboBox��5      $
��Left=�6%   $��
100,41,0,0q�6@   $	��Top=�6T   $	��120��6l   .@�5      �� $��	Text File��6   �� 5      $��Binary File��6   5      5      5      