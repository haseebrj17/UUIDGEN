FasdUAS 1.101.10   ��   ��    k             x     ��  ��    1      ��
�� 
ascr  �� 	��
�� 
minv 	 m       
 
 �    2 . 4��        x    �� ����    2  	 ��
�� 
osax��        x     �� ����    4    �� 
�� 
frmk  m       �    F o u n d a t i o n��        l     ��������  ��  ��        l     ��  ��    #  The URL to your local server     �   :   T h e   U R L   t o   y o u r   l o c a l   s e r v e r      l     ����  r          m      ! ! � " " J h t t p : / / l o c a l h o s t : 4 5 0 0 / u u i d ? c o u n t = 1 0 0 0   o      ���� 0 	serverurl 	serverUrl��  ��     # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   '   Create the NSURLRequest    ( � ) ) 0   C r e a t e   t h e   N S U R L R e q u e s t &  * + * l    ,���� , r     - . - n    / 0 / I    �� 1����  0 urlwithstring_ URLWithString_ 1  2�� 2 o    ���� 0 	serverurl 	serverUrl��  ��   0 n    3 4 3 o    ���� 0 nsurl NSURL 4 m    ��
�� misccura . o      ���� 0 theurl theURL��  ��   +  5 6 5 l    7���� 7 r     8 9 8 n    : ; : I    �� <���� "0 requestwithurl_ requestWithURL_ <  =�� = o    ���� 0 theurl theURL��  ��   ; n    > ? > o    ���� 0 nsurlrequest NSURLRequest ? m    ��
�� misccura 9 o      ���� 0 
therequest 
theRequest��  ��   6  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D , & Send the request and get the response    E � F F L   S e n d   t h e   r e q u e s t   a n d   g e t   t h e   r e s p o n s e C  G H G l   & I���� I r    & J K J n   $ L M L I    $�� N���� b0 /sendsynchronousrequest_returningresponse_error_ /sendSynchronousRequest_returningResponse_error_ N  O P O o    ���� 0 
therequest 
theRequest P  Q R Q l    S���� S m    ��
�� 
msng��  ��   R  T�� T l     U���� U m     ��
�� 
msng��  ��  ��  ��   M n    V W V o    ���� "0 nsurlconnection NSURLConnection W m    ��
�� misccura K o      ���� 0 thedata theData��  ��   H  X Y X l     ��������  ��  ��   Y  Z [ Z l     �� \ ]��   \ ( " Convert the response data to text    ] � ^ ^ D   C o n v e r t   t h e   r e s p o n s e   d a t a   t o   t e x t [  _ ` _ l  ' : a���� a r   ' : b c b n  ' 6 d e d I   . 6�� f���� 00 initwithdata_encoding_ initWithData_encoding_ f  g h g o   . /���� 0 thedata theData h  i�� i l  / 2 j���� j n  / 2 k l k o   0 2���� ,0 nsutf8stringencoding NSUTF8StringEncoding l m   / 0��
�� misccura��  ��  ��  ��   e n  ' . m n m I   * .�������� 	0 alloc  ��  ��   n n  ' * o p o o   ( *���� 0 nsstring NSString p m   ' (��
�� misccura c o      ���� 0 thetext theText��  ��   `  q r q l     ��������  ��  ��   r  s t s l     �� u v��   u   Parse the JSON response    v � w w 0   P a r s e   t h e   J S O N   r e s p o n s e t  x y x l  ; K z���� z r   ; K { | { n  ; G } ~ } I   @ G�� ���� F0 !jsonobjectwithdata_options_error_ !JSONObjectWithData_options_error_   � � � o   @ A���� 0 thedata theData �  � � � m   A B����   �  ��� � l  B C ����� � m   B C��
�� 
msng��  ��  ��  ��   ~ n  ; @ � � � o   < @���� *0 nsjsonserialization NSJSONSerialization � m   ; <��
�� misccura | o      ���� 0 theresponse theResponse��  ��   y  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) Get the array of UUIDs from the response    � � � � R   G e t   t h e   a r r a y   o f   U U I D s   f r o m   t h e   r e s p o n s e �  � � � l  L Z ����� � r   L Z � � � n  L V � � � I   O V�� ����� 0 objectforkey_ objectForKey_ �  ��� � m   O R � � � � �  i d s��  ��   � o   L O���� 0 theresponse theResponse � o      ���� 0 theids theIds��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � + % Start Excel and get the active sheet    � � � � J   S t a r t   E x c e l   a n d   g e t   t h e   a c t i v e   s h e e t �  � � � l  [ � ����� � O   [ � � � � k   a � � �  � � � I  a f������
�� .miscactvnull��� ��� null��  ��   �  � � � r   g t � � � n   g p � � � 1   l p��
�� 
1107 � 1   g l��
�� 
1172 � o      ���� 0 theworksheet theWorksheet �  � � � l  u u��������  ��  ��   �  � � � l  u u�� � ���   � : 4 Insert the UUIDs into the first column of the sheet    � � � � h   I n s e r t   t h e   U U I D s   i n t o   t h e   f i r s t   c o l u m n   o f   t h e   s h e e t �  ��� � Y   u � ��� � ��� � r   � � � � � l  � � ����� � c   � � � � � l  � � ���~ � n  � � � � � I   � ��} ��|�}  0 objectatindex_ objectAtIndex_ �  ��{ � l  � � ��z�y � \   � � � � � o   � ��x�x 0 i   � m   � ��w�w �z  �y  �{  �|   � o   � ��v�v 0 theids theIds�  �~   � m   � ��u
�u 
ctxt��  ��   � n       � � � 1   � ��t
�t 
DPVu � n   � � � � � 4   � ��s �
�s 
ccel � o   � ��r�r 0 i   � n   � � � � � 4   � ��q �
�q 
ccol � m   � ��p�p  � o   � ��o�o 0 theworksheet theWorksheet�� 0 i   � m   x y�n�n  � I  y ��m ��l
�m .corecnte****       **** � o   y |�k�k 0 theids theIds�l  ��  ��   � m   [ ^ � ��                                                                                  XCEL  alis    F  Macintosh HD               ���BD ����Microsoft Excel.app                                            ����߻��        ����  
 cu             Applications  #/:Applications:Microsoft Excel.app/   (  M i c r o s o f t   E x c e l . a p p    M a c i n t o s h   H D   Applications/Microsoft Excel.app  / ��  ��  ��   �  ��j � l     �i�h�g�i  �h  �g  �j       �f � � ��f   � �e�d
�e 
pimr
�d .aevtoappnull  �   � **** � �c ��c  �   � � � � �b 
�a
�b 
vers�a   � �` ��_
�` 
cobj �  � �   �^
�^ 
osax�_   � �] ��\
�] 
cobj �  � �   �[ 
�[ 
frmk�\   � �Z ��Y�X � ��W
�Z .aevtoappnull  �   � **** � k     � � �   � �  * � �  5 � �  G � �  _ � �  x � �  � � �  ��V�V  �Y  �X   � �U�U 0 i   � # !�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A ��@�? ��>�=�<�;�:�9�8�7�6�5�T 0 	serverurl 	serverUrl
�S misccura�R 0 nsurl NSURL�Q  0 urlwithstring_ URLWithString_�P 0 theurl theURL�O 0 nsurlrequest NSURLRequest�N "0 requestwithurl_ requestWithURL_�M 0 
therequest 
theRequest�L "0 nsurlconnection NSURLConnection
�K 
msng�J b0 /sendsynchronousrequest_returningresponse_error_ /sendSynchronousRequest_returningResponse_error_�I 0 thedata theData�H 0 nsstring NSString�G 	0 alloc  �F ,0 nsutf8stringencoding NSUTF8StringEncoding�E 00 initwithdata_encoding_ initWithData_encoding_�D 0 thetext theText�C *0 nsjsonserialization NSJSONSerialization�B F0 !jsonobjectwithdata_options_error_ !JSONObjectWithData_options_error_�A 0 theresponse theResponse�@ 0 objectforkey_ objectForKey_�? 0 theids theIds
�> .miscactvnull��� ��� null
�= 
1172
�< 
1107�; 0 theworksheet theWorksheet
�: .corecnte****       ****�9  0 objectatindex_ objectAtIndex_
�8 
ctxt
�7 
ccol
�6 
ccel
�5 
DPVu�W ��E�O��,�k+ E�O��,�k+ E�O��,���m+ E�O��,j+ ���,l+ E` O�a ,�j�m+ E` O_ a k+ E` Oa  K*j O*a ,a ,E` O 4k_ j kh  _ �kk+ a &_ a  k/a !�/a ",F[OY��U ascr  ��ޭ