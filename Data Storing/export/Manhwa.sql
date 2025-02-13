PGDMP         3                {            Manhwa    15.3    15.3 +    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            B           1262    16414    Manhwa    DATABASE     �   CREATE DATABASE "Manhwa" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Manhwa";
                postgres    false            �            1259    16469    Author    TABLE       CREATE TABLE public."Author" (
    "IDAuthor" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "Family_Name" character varying(100),
    "Gender" character varying(50),
    "Birthday" date,
    "Website" character varying(100),
    "Member_Favorites" integer
);
    DROP TABLE public."Author";
       public         heap    postgres    false            �            1259    16447    Genre    TABLE     �   CREATE TABLE public."Genre" (
    "IDGenre" integer NOT NULL,
    "Name" character varying(50),
    "Description" character varying(500)
);
    DROP TABLE public."Genre";
       public         heap    postgres    false            �            1259    16504    Liked_by    TABLE     t   CREATE TABLE public."Liked_by" (
    "Manhwa" integer NOT NULL,
    "User" integer NOT NULL,
    "Score" integer
);
    DROP TABLE public."Liked_by";
       public         heap    postgres    false            �            1259    16474    Manhwa_Author    TABLE     f   CREATE TABLE public."Manhwa_Author" (
    "Manhwa" integer NOT NULL,
    "Author" integer NOT NULL
);
 #   DROP TABLE public."Manhwa_Author";
       public         heap    postgres    false            �            1259    16454    Manhwa_Genre    TABLE     d   CREATE TABLE public."Manhwa_Genre" (
    "Manhwa" integer NOT NULL,
    "Genre" integer NOT NULL
);
 "   DROP TABLE public."Manhwa_Genre";
       public         heap    postgres    false            �            1259    16415    Manhwa_Info    TABLE       CREATE TABLE public."Manhwa_Info" (
    "IDManhwa" integer NOT NULL,
    "Name" character varying(500) NOT NULL,
    "Volumes" integer,
    "Chapters" integer,
    "Status" character varying(50),
    "Published_Start" date,
    "Published_End" date,
    "Serialization" integer
);
 !   DROP TABLE public."Manhwa_Info";
       public         heap    postgres    false            �            1259    16432    Manhwa_Statistic    TABLE     �   CREATE TABLE public."Manhwa_Statistic" (
    "Manhwa" integer NOT NULL,
    "Avg_Score" real,
    "Ranked" integer,
    "Popularity_Rank" integer,
    "Members" integer,
    "Favorites" integer
);
 &   DROP TABLE public."Manhwa_Statistic";
       public         heap    postgres    false            �            1259    16422    Serialization    TABLE     �   CREATE TABLE public."Serialization" (
    "IDSerialization" integer NOT NULL,
    "Name" character varying(50),
    "Website" character varying(50),
    "Manhwa_Published" integer,
    "Owner" character varying(100),
    "Launched" date
);
 #   DROP TABLE public."Serialization";
       public         heap    postgres    false            �            1259    16489    User    TABLE     �   CREATE TABLE public."User" (
    "IDUser" integer NOT NULL,
    "FirstName" character varying(50),
    "LastName" character varying(50),
    "Gender" character varying(50),
    "Birthday" date,
    "Email" character varying(50)
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    16494 	   User_Telp    TABLE     n   CREATE TABLE public."User_Telp" (
    "User" integer NOT NULL,
    "NoTelp" character varying(50) NOT NULL
);
    DROP TABLE public."User_Telp";
       public         heap    postgres    false            8          0    16469    Author 
   TABLE DATA           z   COPY public."Author" ("IDAuthor", "Name", "Family_Name", "Gender", "Birthday", "Website", "Member_Favorites") FROM stdin;
    public          postgres    false    219   �5       6          0    16447    Genre 
   TABLE DATA           C   COPY public."Genre" ("IDGenre", "Name", "Description") FROM stdin;
    public          postgres    false    217   [       <          0    16504    Liked_by 
   TABLE DATA           ?   COPY public."Liked_by" ("Manhwa", "User", "Score") FROM stdin;
    public          postgres    false    223   �[       9          0    16474    Manhwa_Author 
   TABLE DATA           =   COPY public."Manhwa_Author" ("Manhwa", "Author") FROM stdin;
    public          postgres    false    220   �[       7          0    16454    Manhwa_Genre 
   TABLE DATA           ;   COPY public."Manhwa_Genre" ("Manhwa", "Genre") FROM stdin;
    public          postgres    false    218   p       3          0    16415    Manhwa_Info 
   TABLE DATA           �   COPY public."Manhwa_Info" ("IDManhwa", "Name", "Volumes", "Chapters", "Status", "Published_Start", "Published_End", "Serialization") FROM stdin;
    public          postgres    false    214   ��       5          0    16432    Manhwa_Statistic 
   TABLE DATA           x   COPY public."Manhwa_Statistic" ("Manhwa", "Avg_Score", "Ranked", "Popularity_Rank", "Members", "Favorites") FROM stdin;
    public          postgres    false    216   ��       4          0    16422    Serialization 
   TABLE DATA           x   COPY public."Serialization" ("IDSerialization", "Name", "Website", "Manhwa_Published", "Owner", "Launched") FROM stdin;
    public          postgres    false    215   �       :          0    16489    User 
   TABLE DATA           b   COPY public."User" ("IDUser", "FirstName", "LastName", "Gender", "Birthday", "Email") FROM stdin;
    public          postgres    false    221   ��       ;          0    16494 	   User_Telp 
   TABLE DATA           7   COPY public."User_Telp" ("User", "NoTelp") FROM stdin;
    public          postgres    false    222          �           2606    16473    Author PK_Author 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Author"
    ADD CONSTRAINT "PK_Author" PRIMARY KEY ("IDAuthor");
 >   ALTER TABLE ONLY public."Author" DROP CONSTRAINT "PK_Author";
       public            postgres    false    219            �           2606    16453    Genre PK_Genre 
   CONSTRAINT     W   ALTER TABLE ONLY public."Genre"
    ADD CONSTRAINT "PK_Genre" PRIMARY KEY ("IDGenre");
 <   ALTER TABLE ONLY public."Genre" DROP CONSTRAINT "PK_Genre";
       public            postgres    false    217            �           2606    16508    Liked_by PK_Liked_by 
   CONSTRAINT     d   ALTER TABLE ONLY public."Liked_by"
    ADD CONSTRAINT "PK_Liked_by" PRIMARY KEY ("Manhwa", "User");
 B   ALTER TABLE ONLY public."Liked_by" DROP CONSTRAINT "PK_Liked_by";
       public            postgres    false    223    223            �           2606    16478    Manhwa_Author PK_Manhwa_Author 
   CONSTRAINT     p   ALTER TABLE ONLY public."Manhwa_Author"
    ADD CONSTRAINT "PK_Manhwa_Author" PRIMARY KEY ("Manhwa", "Author");
 L   ALTER TABLE ONLY public."Manhwa_Author" DROP CONSTRAINT "PK_Manhwa_Author";
       public            postgres    false    220    220            �           2606    16458    Manhwa_Genre PK_Manhwa_Genre 
   CONSTRAINT     m   ALTER TABLE ONLY public."Manhwa_Genre"
    ADD CONSTRAINT "PK_Manhwa_Genre" PRIMARY KEY ("Manhwa", "Genre");
 J   ALTER TABLE ONLY public."Manhwa_Genre" DROP CONSTRAINT "PK_Manhwa_Genre";
       public            postgres    false    218    218            �           2606    16421    Manhwa_Info PK_Manhwa_Info 
   CONSTRAINT     d   ALTER TABLE ONLY public."Manhwa_Info"
    ADD CONSTRAINT "PK_Manhwa_Info" PRIMARY KEY ("IDManhwa");
 H   ALTER TABLE ONLY public."Manhwa_Info" DROP CONSTRAINT "PK_Manhwa_Info";
       public            postgres    false    214            �           2606    16436 $   Manhwa_Statistic PK_Manhwa_Statistic 
   CONSTRAINT     l   ALTER TABLE ONLY public."Manhwa_Statistic"
    ADD CONSTRAINT "PK_Manhwa_Statistic" PRIMARY KEY ("Manhwa");
 R   ALTER TABLE ONLY public."Manhwa_Statistic" DROP CONSTRAINT "PK_Manhwa_Statistic";
       public            postgres    false    216            �           2606    16426    Serialization PK_Serialization 
   CONSTRAINT     o   ALTER TABLE ONLY public."Serialization"
    ADD CONSTRAINT "PK_Serialization" PRIMARY KEY ("IDSerialization");
 L   ALTER TABLE ONLY public."Serialization" DROP CONSTRAINT "PK_Serialization";
       public            postgres    false    215            �           2606    16493    User PK_User 
   CONSTRAINT     T   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "PK_User" PRIMARY KEY ("IDUser");
 :   ALTER TABLE ONLY public."User" DROP CONSTRAINT "PK_User";
       public            postgres    false    221            �           2606    16498    User_Telp PK_User_Telp 
   CONSTRAINT     f   ALTER TABLE ONLY public."User_Telp"
    ADD CONSTRAINT "PK_User_Telp" PRIMARY KEY ("User", "NoTelp");
 D   ALTER TABLE ONLY public."User_Telp" DROP CONSTRAINT "PK_User_Telp";
       public            postgres    false    222    222            �           2606    16479    Manhwa_Author FK_Author    FK CONSTRAINT     �   ALTER TABLE ONLY public."Manhwa_Author"
    ADD CONSTRAINT "FK_Author" FOREIGN KEY ("Author") REFERENCES public."Author"("IDAuthor") ON UPDATE CASCADE ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public."Manhwa_Author" DROP CONSTRAINT "FK_Author";
       public          postgres    false    220    219    3219            �           2606    16459    Manhwa_Genre FK_Genre    FK CONSTRAINT     �   ALTER TABLE ONLY public."Manhwa_Genre"
    ADD CONSTRAINT "FK_Genre" FOREIGN KEY ("Genre") REFERENCES public."Genre"("IDGenre") ON UPDATE CASCADE ON DELETE RESTRICT;
 C   ALTER TABLE ONLY public."Manhwa_Genre" DROP CONSTRAINT "FK_Genre";
       public          postgres    false    218    3215    217            �           2606    16464    Manhwa_Genre FK_Manhwa    FK CONSTRAINT     �   ALTER TABLE ONLY public."Manhwa_Genre"
    ADD CONSTRAINT "FK_Manhwa" FOREIGN KEY ("Manhwa") REFERENCES public."Manhwa_Info"("IDManhwa") ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public."Manhwa_Genre" DROP CONSTRAINT "FK_Manhwa";
       public          postgres    false    214    3209    218            �           2606    16484    Manhwa_Author FK_Manhwa    FK CONSTRAINT     �   ALTER TABLE ONLY public."Manhwa_Author"
    ADD CONSTRAINT "FK_Manhwa" FOREIGN KEY ("Manhwa") REFERENCES public."Manhwa_Info"("IDManhwa") ON UPDATE CASCADE ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public."Manhwa_Author" DROP CONSTRAINT "FK_Manhwa";
       public          postgres    false    220    214    3209            �           2606    16509    Liked_by FK_Manhwa    FK CONSTRAINT     �   ALTER TABLE ONLY public."Liked_by"
    ADD CONSTRAINT "FK_Manhwa" FOREIGN KEY ("Manhwa") REFERENCES public."Manhwa_Info"("IDManhwa") ON UPDATE CASCADE ON DELETE RESTRICT;
 @   ALTER TABLE ONLY public."Liked_by" DROP CONSTRAINT "FK_Manhwa";
       public          postgres    false    223    214    3209            �           2606    16442 #   Manhwa_Info FK_Manhwa_Serialization    FK CONSTRAINT     �   ALTER TABLE ONLY public."Manhwa_Info"
    ADD CONSTRAINT "FK_Manhwa_Serialization" FOREIGN KEY ("Serialization") REFERENCES public."Serialization"("IDSerialization") ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 Q   ALTER TABLE ONLY public."Manhwa_Info" DROP CONSTRAINT "FK_Manhwa_Serialization";
       public          postgres    false    215    214    3211            �           2606    16437 $   Manhwa_Statistic FK_Manhwa_Statistic    FK CONSTRAINT     �   ALTER TABLE ONLY public."Manhwa_Statistic"
    ADD CONSTRAINT "FK_Manhwa_Statistic" FOREIGN KEY ("Manhwa") REFERENCES public."Manhwa_Info"("IDManhwa") ON UPDATE CASCADE ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public."Manhwa_Statistic" DROP CONSTRAINT "FK_Manhwa_Statistic";
       public          postgres    false    214    216    3209            �           2606    16514    Liked_by FK_User    FK CONSTRAINT     �   ALTER TABLE ONLY public."Liked_by"
    ADD CONSTRAINT "FK_User" FOREIGN KEY ("User") REFERENCES public."User"("IDUser") ON UPDATE CASCADE ON DELETE RESTRICT;
 >   ALTER TABLE ONLY public."Liked_by" DROP CONSTRAINT "FK_User";
       public          postgres    false    223    221    3223            �           2606    16499    User_Telp FK_User_Telp    FK CONSTRAINT     �   ALTER TABLE ONLY public."User_Telp"
    ADD CONSTRAINT "FK_User_Telp" FOREIGN KEY ("User") REFERENCES public."User"("IDUser") ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public."User_Telp" DROP CONSTRAINT "FK_User_Telp";
       public          postgres    false    221    3223    222            8      x�}��r�ƶ�����)��0�`��e���ԺiB���"O��ђ��2~�$��n�a�7��9_vݶ������_��4���ɺ������8WE�V��y�Ϧ�Y�|wYLo��g{�,�_&/x��k�ñsW�|1M�z�gc��|�n��ү��Q��:�ew�T�2g�N:�Σi��j*?�����2Y��a�/����vr?i�8z��.���<���Bg}���4r���ּ���b���LV�I?j7�|�$ͩ��WX�3�Z3�=�t�O��s�z��V~���B����/��rz�����Ň�s^�]��1&�?|UGX��|��_��E�1[�Z>��_�;�kE���Y�қ9�{z8wdd��vU[�?��z�R�z���/�cߙ[�>�?�T��j�C��A�W#?��c��g_Z=�8_s����ګ�R$�d�No�@��*J�?B_lL�>����E����i!�y��T{�y���@�G��y:wv�'_v���0v���S��à?�?l�ꬦ3L������8���E0ՓfزXE�S,kս�uf��ΜLsRm�H��]��w�ͱUCΗ�=�J�E�����ץ�<r���Q쬋Jq�]#&J�U���$��I��������,�1��{άڪ.��*Y��v�k��Η�i������Lf^߫�1y�nZ5�� W�L��7���Ƽ�#-W�L���|�˳�7	��V�=��m��I�9��N$>��ɸ�0'}D'vKYN�TC(S_պG�+����I�fk�i���B˄$u��1j��b_4fz�K$u��~4j&R�y�e��'l���sw���V��Vp�lr�&R��9��K�a���v�kq�~����&M�[��עRc���i�,��>�3�yQ�yΓ9��0d>�#�|?�>T��й�=��:�"L����z���Z(q�ɡ�;��30H�(q��|=t%D�>@<�u���m���Ζ+���������@��p��T'=7�a�[1����F
0�	�z.ֆ9�n�<�j�"<7uȹṙ���g�1��?���C�������m��+����/8A����_���lG7��{���U�+NeZ؂�uA���t���٘���Oݦ =�px�>k�B<��+�J@lb�k:�@Y{�eE|�Q<�fW]5��d��L�
�&�r~�/��n�d�� �]�i<���+������������? ��~2s�e�Cͪ�r������B��W�T�S	Ε��u$J����>ԟ��|��Ҵ�{�ss��M�^ C%�bQ
�k,���+v��vw�������B���w������&:�����0ș	Ӓ=0�*���"���UA�3���
~1�mG::*L
�~�X?�h���57P�U:���K��@_�"7�wL�� �/VA�����8F��qNv0���x�#]F��Ƌy��n�i�E�]ސ�-�s����z��[K����	+��YP��)��#)��X���mW2{�`�c!�N���oK1�L�z����ך?�����WOX������ �޵@�����	oгX���# ��,LufR5�t<k���"�A�E)��GԪ�<酕Df[��W�'�X}$����������_W��֢d��Cf?�Fk��;Y������,��Z?X���Zg�@�O5����ۦ��`/�F\���z�?��mK�R\d�� �����Hc��Z���u/3X/v&�/L����șu.�V��Q˚,��Gي���2���ādn���� _`��}��=w�Ь%�Xb|�����=u�o��{�Mq �u]Bcb��?���A�+s6n�m�;X����R48��A�*ϙP���uA�s�b����7��9��dk5�+��R�68~�w��L��1;��ţ��mɀ$WP*��ӷF�������n0�-���â��N)���Y�V�N���+Z�W=��q�0�m�ٛ\�
��w��(#��~���,z�� �i�7��VN}0���`��Z&���e!'�;s�@�/�i��T>�U����|�8����Qw��F �f���f���O��>�<B��F��"`���t��1��ʴ8�u�؇xY�F�|�8 ����/ �Vw�����k��Ť*�O��pQ7��{`�x7��x�m���W� �+J��a������`�*���N#���ZL�����yӜ1'�2�`qY�fz� ���c��*��2�/:} ���?��o�9{��%��3�{領���e�<aKM���6����8�vK6ul���V/ ��@o�8�ӷf����9@Zp�Ւ�(}`��F���A����7��M5��Ŵ�a�&��#{��~c�}�\���xq}��nP��D����a��VI��7H��)�V��a�=��`�X������EY�2'��^��N/�D��H[2���!/��~��[5�iK� ��`w�+�L����e
�~.�u[�Q$���fZA��Ⱦɛcͺ?l�{3}"�bj}��y2'R*sn�2�/H�{���� ٌl���9[�����v{�.���MUlw����������F��4�� |�Wݢ�dx�ز7ֽ�Mu=pG����57���kG�}���J1h�00[|�6������B�ah[��&��b�g+ q[�Ć|7u�w��P����F[M���'^���w�w�5�O��uA��:���[[F���޼��%��Ks�@X3x$������۶Ы��K�5y���M�Y���c�?��>�P����?���^k���0�L��Խ�e�ioj�f��k��=©�xWz��!��B��F�?=�	��w����F���utZ�o0sؽ;Պj �3����Y�[@�������&7��qO�~�ª:�"��F��/��x��$?L}7��HHג?,$����wo�?�C��j �{W���=y D�n�@��}��y�.tC�O�2%��t#?(՛� S ԀzH�p�-�,��b�=������Ч{ �~��n r��N�ً�n�`����[�{n�ٞI@a�s�=��9��,w��	�����U�Ny� ���e��V���2Dgb�
���fJb1
4d�	sK�'L �%�cz�["q����q���XTZ
 �g�9뀜i���$V�^� �1g<����W��C��2 M-Z�C��D|$D��gGh�$R,���c�H�Pכǫ)�T��(�1�l8"W��Bl���+V��n �U/�M������_i���`��'�1H/�4�%Hu� �=;��?�����)���X��8H-֡��� �d�u� �=� }�,ID�c\�~�������G��v��f82a�����4V��U�h�<�D�h��
]�CXv:60:�f�A���W�O�;���>�؅N_[��A���kџ��6��jc�臀���ý�|8����cҐaZ�
=	��]���|�5R}�[����� `z���@�-d�D��ڿ��>Bp�s��š�^��?q=�^f#��� ��鈥9�E�>�����f����(�oO!��� 奜���"cAA1Ջ�BP�/Kc[O��>���x_ft���g�}�� ƖC�
�}QK!�DluT/�xm�E6�|[r��A���|CS�a|�Q�C 1X���
&��a G�f�Ë'���Cq�k�x}������Չ.�'�y�l�!�x�Z�!���mG� q�SM��!���w���Ïl��"�k}؅��x-E�U�(���>�Ǆ�8 �>�N?XX� �������AK��d�6U �dƢ�k��\!p��W5=jE!��6�YǗ�i�k9H����ic�w�[�V�wbY���A�YZv��k&۶��6a&��|�L��A4_G��ęa��>�c���,z`�<�N��.7l�$bn�>}�Þ���F=� �E������>~�"���|o�C yuag,Ӊ���O9� �������W��    �'�sw2:� $/�-��B �U��qJ���;�R��� �}G~c�V'��B��mHiK��a>���,}��n�u�d$�����a�,=��4F~܉^GQ��d�d�=�!�Y��y�ҝ��:����K=nFk�l�=�l�Ss{`}8�F���f�H���v���.&�-Y�k�v����������&�j�k4�^o� Љ�x���G^%�#��JHo%�[=��y.��ڢ	?[��n�n�nCv[�癬^hg��^0���mH�t��l1�D���`1u@z��N�t���0�>O-(�����_I�����>����i�M�~�O�"�gYDP%��bQ`���1x��vBd�+��͙߻�_q��T���*�k�l_r�����/]Ցob*0�lch��%#
l���~�}+���yv`��~ؚ�f�(�/�Y������D��~fάm��=���CE���Shh�f4&�A����4�݊Ě��x�h���������G�����:gF��|[m���QňN�����M#�!,�Vۥ"��w9q/~���<���C���j9C@Ō1Qd��h5��ECh��y?Oy�����Lk����w�9"P4��I�"IN�eCx���W������?h~,M5QV�м.���@�E��2Y�Af_Lz��~b������A�\A�b	�>I>3�t�ɜEW��K�>�����%�OZ�L�m�t/�L>������l�Į-mi��h ��&�1�՞���ʬ��^�@����/>�+��EQ�?f����}Nh]Ӽ��=��=H�ykM��1��T]��f������H�T�֍$��@0.HS�s�2��(����{ޒа(�.�
�N��廤��Ȍ�Q&�����ؐ`[v�f��CB#@����L����s�E��I�!,bc<�낦��v�!v���i�%-���\�����|�����-���,;;v���k�����d�] �+Ud��S:������1i�8uz�+�{b���N{�boL��}������� �����K�'���x�=@�S=A?����Kzˠ�I�{V�б�1�]CU�7d,��W��� C������c?��:�Һ1t�
l1���%�b��d6� ԃ��I��:'��0C� K���"Ŷ�t�*� �-t<�[��/1�Z���i^�v�5a�x���S�P�^��hO���i_r\r��]���X�x�����D㏁����L+p{=�c�$n9v�V�_���zI\q���AU�8��%�s<m���d�̱��f��Ֆ�P��!}�r2�F����uڵz��ݽ�W,�Dg�#�����������֍��87���q��1��jzEʊđUde��V-s��J�Q�N6(2�D{���"1�K��N�K*cw ,�����f�x�d�Iz��W�zK�X�[��~�̡�����ta(kA��1@{������xT��~������Dq"!�f�!��7����%$Q�0�[`�$��X�|tZ��A����"R<��s�/�ɘ,z��F:
1Jju"�8��E%�@h �&o6M��T�`��b��݇9HT-����j�ј@J/�d���ڡ�l�����L���sݜ�
]r'��l��}~�ʫw��R$'�&b��.�L�f�-�Ʋ�B>Yt�W�K�+��Lb���۔�l�iWa"�Y��!g&Yxӂ� �l����+/�����8h�=dl@�o��!	��9oW#UAR0���i��]�>qz&}��8�HMk�&�����=X�f�	�-S�Pv�)p��2R�p�T�"$�,���� J.uCr��K��j�Dyc�Iv�����1TS�ݐ�/�w��j����{��?�6��K|�y�6�k�1/��M����f΃���_bW�2��ȯ�zS�k\��9�1���5ZP�����M�hCbi�	�ze�t'��}93�'@��n���:Nz��6n&A<��t�� �]���D�&��b��y1.��w�uTN�~���:���=����N5�%a�;�ʵH�_pRꞅc��m5!�I���'��K��q���B� �cn�v�b�֭����)$������L�N�ګ��a�hL席�Q� ��uŶ�ą�ukÖ�ĆՆ��hT@��'�V<ַ�H]�Db��c�ą%@�Y�,��&s�1�\T���Or(����R�!�G��]W�(�$��`0|Lb[~��1��:�c�ɜ�i��٣�e������>�J�%�O�k�J����)ɣN$�Z�{��,�Xd�Hf��,�V�
���I2&+̅�d�$e�4Ŏ�2I$`B+�~ş$"�ZbN$�'{������*�d�j��&0n̻VG�����g�\���)��Xw���D�\<Ց�
'#���P����E�7U��<[)��������䤦��ܖ6w2�,c/3o���%��b��
��m�Ʉg��eI��f�Ik*h�܁A��1*�&um�O�_(j�|�-�JZǲN}���JA�C��,�9����('��p
�B�jPS1e۲��7�ܲ��e�����^
l������'4����r���'��B��g;��R�a�"f�ͨ����g�Iω�m�3�^bs��;fHJ�0�$L�In*�A������ w�u��܉Ra�7��c�k���A�o���%�/۩q+�D���F�/V��:c�����o��uo;meOmW�}��^F�����T��uU�o��>y>rR�a	�����RgZ[��@����WNI�r���5S	�EHKv��)#���i��+���4���qۦcT�5�s�J�am�g��p�
*�|�J �G�����5�1��}Q�@7���|2:*.9��S.�l�P�զܼ�0��]z��^�F�e�t[�,v"�v��]ΪK�P-�+�O<���������뫫����W�~)xy-QY�xT*��X*�5%�SLco,K*"H�Ҹ��Q !�@NW���e�Jx ��Ncm���ԩғ�2b�;L0PSQ�J�aq�!i|)|B+�� u�=�{��dZ"����!>%�Kpy�5���@c	e�?�0dJ�!���N:v�uo�����G�rIdӋF�?����!1Y��X��%gafij�e8Hu��ǿu���d�e�4�`4VԶ֊v��*�U���%����R��2l�@�%+��Pj�9�{��wr�Kp��!��5�3��1��`�Ԗ��6D�L%��(g��)��(_�o�}�KҵXN;=��IZ�B'���dik{*x<�"�����1%k�~Ľ�=���&���4d ��1V8�O[e�L�X�7�G�����Eg`�/%����+ ؈�a���U?�١����Mw4I4�n����_	���kI���V�'{��(��0��R�C�qu{�!f�l�QC�i��<;P�ٗyS-�|-�T�)d��%2f{4�	<��;���ޥ8#I����,Df�EEʕe�T9{;��,���"奯M{²U~�����
hS�)�C�!d��g]�ޗ����nN��2[��Td� �o�&������(��T˷��̂p(y!����g�f񽼰e�6P�E~Z7&�'ś3	�UK:[�I<uS�g��gSN���Bx�V�0L&�y/����H:J�E͐�M-š�0�P��A�_X�g�����V�e�-�fI��4��^��9�z��R��lI��LjSKAY���T-��8�:	�>蘹,٬�Y�ǻ�_���s�\��X7��0Λ�`F�L�9��jZ, ��x55�g�X�� ��Ou[ļ>��uO�L,���%Fe��z;�֚��]�P�I��Sξ 5qI@'�:F�����`ە�W�Il�����h׃'\?1��	��"�C�GqNdR�s�d�g�_s*��Q�|3��l�#r\���ȎD��r�_�A�Qn�◐�����$该�����!��O��M�*���ސ���Xu$^f���Dd΃�r͋Db+3���]��޳ᚗ 0  Y�2��\R�t��x�[��>��8��$���LT2@t�C�.Z�����`g�\S�
��������͙T�0�;�A@�F{H�3�~������,Kǈ�F�yd`�+S����R��(��~4zvfl�	���?��gW� k�//�)1��9��Q���<�W]g�u��o+uG/W.�m�2p�m��!�����<�����X�(e��K�����B��X�ze�n�f��rD�,4F}�4�;��w�گ ͩsKV���%�=��Է W|� �%��õ,�n,p}�cn�ch@3����|9��U}�-N�{���.�ro�F�5��ka!�@�?�SˮL?�B�.X��7�q? -�r)��L�-p�Hizw��~��A�%h�C��R���Z��l��7.8�Y���ǐ3�;4b ��\�Rc�p������N@i�G:�>H\�/��G���h	��p1
�[���|�B|��An(�ޏr����G�XM�^��\|�.���"��Y?���L������*}�+��j.0Q]k��ÞW�.��u�����0�i\hJ���eQ6��7@釷�\���%/�|C�~����$�g��@\�D�@S�����	W
x�- 3�T1��w�� j�M%erјJm&�˗�e�*��(��o���!��W93��1�+�V��!8�Bgx��$��%'n\B��� ���!ԟ����h��Tq)B]���'�1o
}É���Mzͣ���X<oq{b����}1�Ji�h�wuS����@�2ڣ��КA�*��fӡ��բ��W�%[\c�[�K��x�|�J�^v�)4�{nfj�F>��XC~2��83^OiC+z�_������R<"��|K���'�^<"e/h�=�I�+�>i�r��5�%��F�+'yÞ��8xOY�'W5�
E�jAWD}�-� �Ekok��tɕ�c�j{)/�p�^��_"��~����KM��^��Y.��ɷ��$�ן�R�g�>��cYf�'�:bOZӑ�W;F�SjX��O�t�/���1 ��R�-�������p��'�;.�XO�t\HfEr��K�3���ɭ���A���'�9�NNφf_�\]k���8�5�л�� �����#1rJ��������]O�s��b�x2��P�x���Ic���R��M_p(�9�
��4�-i����p���1��z�l����Gќ_:���-���Κb�ݦh�%t�[$�<6��-�Jl��y�a��<���a�&ձu[8V9�{��;ғ�����F�E����y� ��� ��fs�	o�ݖr��dWo��_�����\�      6   �   x�M���0Eח��4�t�\�ٲiJ�Mh�L�	/-w�̽3�G�5Y4�d�c�U���nP
��lqaaD��ػ�9n�L��ct^q���"#���8�Qm����ʺe�NK��;���<[�D�K���}3�􊭘^]mQi��:;\����9j��,*�(�Y&I���Ef      <      x������ � �      9      x�E�I��0��b�{�������~�0$H�X���|��i���=�ן����9��oq}?������k��>��}���8���=ߎ��}�'<�?��ظ2�ƕ�4�.<q����G,���8��}����i'������k��_ۯ���8�_O�q\�6�γ��<��~=�=��g|����c���:���Ha�g�_�Xqܿ>���+�������7�\��l��>��q���L
�=s�q�%|�x��~����|V�#�R.<���G,�g�Y"��{��=�z��o�gql����q�9�=�~���q���l�=������#_k��iq��=g�V{������[�9���'�T���7�<��˳�=�<{�;�~�}������x�o��^��K�����o�~{����������T�w%�G���;���)��;ֻ�w���`Њ�A�.�����;�
�q���ˇR��Q�/��*8��q*��&_|�!.����	U80~_T�j�%p���X%.������4��k���M�V$2^��Q4��C���ϋCJ&�<��I14�+�V��W��_*�g��q;h�Czě	 ������>�I����.~�,b����X��חK�h��GlP��1KhDe1K`K��[��Yܭ�$B(h��g�'���qG�P�E�:4�|�Q�[�@J*p�9Jܛo#	+J>?�hY�Aܢ����
|\�c�}I��E�)z�W���_�*��=��<r��| ���E.>b����LD�B(>�����E5�@��^��� H��ho/z�"��~Yu�FD'mh��$^��z��-I�K�nE���v(���<b�i~� ��f�j�[�ޮ��m����$�m����.!7͖)��c!�"�U �G���}zD �EbԌ� ސ�f��Q�īq�9��M�xC��UMj���Q4k�ԬiA�"O��ڼ��� T͸���7i\�w�0���=qNu�4��V#Γ4��V#Γ6����HC�l5�<Ic�l�@[�%;K�;����?z��*b�j�{�>� ޓ�G�����I��!����zwQ{���~��n�':$_PY�qފ�W��(bkr��X�6P�����E���j���v�{#���"9�}t��I�g�H�FA�#h�ȥFA�#h=�����N~N���h?ꅫ��a���;�m�E�:���Bfu�����FQ���VQ���;E�:v�%�Ղ�Eкv��C�:1���g�p���u���^#
��7�G~�;��L���}�y�Ѣ[�9���]���aJ��p~m��m�to���D�:!J���s����v̤��������!\-���#x�:�������-���~���W�>�a�"|ݘ�Ͼ�1�>�0f������"|ݠE�����u�5��c�|���u�U���,;cmP��3h���_�6���f�!���U� �Ѿn�yݠE��z`�ڧE�q�`E�:���8;�h[?�E�8�3 @�:�K���؊%�~G����Xd��}�^}2��Gx/��+b���b�x�_��L���e����|=wг��C�ƫy@�MRM�Z�7���{������!a�kEo�I��pq��B<��d�'<m�����E�!�t�l��ȌX���$���ҾWw�F�w��H�v�����o�Z9��=��Uď}7�Y��sԇҍ��[���U�R�h�q%J6,� �Q��%1����wV� vQ��2���]�$�T4��e�tf}|�lLo���6���/��k��/�E�����Vb<����{j�_��V�kg�Ѩ�fQ�76�s�Ę���?b>�P�:�{�j�_b>��vi����|l�����>���b����ЪA���4 =��9�Yզ ~Ԅ�}��ޤ�5 �?4i�� ϣIQ�R-@��Zp��4Ԅ ��s�w�h��a+:��F�8�$��6��vx��g����Ppފ�;�1���﷊�E�&ѝ�.�5�/(�.b5�nb��m���q����hG1�.j����Iԣ �$��A�&Q��Nk1p��h(��݉��W?����}�!�[�>�2�͡���a��@�R��Fi��=���=�i�I�R�)� �P��QP{�1����g��R��%��V׻�Vb:˄:Q�Č�&Nxs�)�wDk:���E9�|R�8f{�,q�H�$���D���~�92OS�db�$�7uN١��s�!@\8��q���E�/g�f��xE"?�U�j�As�0�����.j��;k��������C�b�/����3��%�(D��P��"H�	T����>9Q
��l�Vԏ�~����Q�tq����8mt���g!I�C�B��A�#h� BЖ��-"����pL�@ȖB��-��Z�m!H�筈��d�(΢3���8��]� �e@"tK�j�@��h���������Y���]<��X}��[QYE��_�.�PL�L?�B(�bq�1����w��qJ�H:K�}>{���3FQ����=�l�Stf�����r6a���7����)�^95�N-t̈́�m��"nѫ5g���"V��E�J\N)S��+�"�г�R$������ڣ8��Fǖ�2���WLRK�/'���s�{��r�}[NX�����FL���g���yoNj��t:<{�I���7����$ם[���cE��[��"�Pl����[�|�G��W���J� ���^?���	�ۋ�;��㫌�E�u�Y���G��n�͆_�h�&����p�w�.j�B�E��иM���ە�V����	~t�"�ѶM�']x�����WԬ-獑�w�_��i�7&�=Ǯ�9��l+N��]�m-	z�{Y�A���˭8 r��
���*
A�C춢ĮS���u����V�^_���r�4H������J��L�rه�-�xt)u|5����cb�����[��z«z[��v����-~?�=�Sr��o�^��QD�"v�=}.{��}��=�����y�\yο"~�WױO]Kz�}�������:�)b������/����w��Ci�S���Sd��S�(O={�ro�?(�_m�@�?�OϞ9��b1c�;�k#=I�)>Wӂ�C��7�̐��ڈ�ܮ��hە���q�j[P�.ⵢ�O�ܮ�=��*�~G��)b�;HG�v��ɨ��EX:܎�}�}��9�Ocù�O��i�2p^�����x�>�:�[$�B�4I�/׉�Y.LƹĬK�M�+��˅�ϕʜ�_v���qk�!x�s;wVj�x_��A`��C��B��y������CS�K+�u^��b/j��X	�ڿ��)��l�O����:ϥY��?�U�5j��zʓ��91*�Ǐ���;jG�E[WW���QC��G�1�n�f��+��EH�*ε2����e�Θ���o�η���֮�6ڮ�qy��y��r�~6�)/yТ����W��o��[���mp��杵���u��pm1�"v?���"v����$�K~�P�9���|�{#���>�m]h��+ϡ�g�X���<ޟ�K�9�Ѿs|��}�v#x��I�u�׋\w�r�Q�탫���,bD[o�n_��٩�-�:�A]N�5jݣ�/bx�mo��"~�J����&�� �2�Er���ɍSl���+�'֤h�뮂 v���
$�#u�����]w a�m�����QI�;����s��t��7�~�����u�^t'���A�l`�1�.U۝��0I+����m;R5V���+� ��]�ֺ�B;��N��8���^m�b1c�N^D�V��w�)���w��lw}h���_�!�aF�i1���۹6ﯹ�]�E�W<Y�1���7�i��TѢ�%_	�у܍]�z�M"�ޭ#A͐{�)�w�)�kE��޷��ys'��h#�$\E���q�Z�W�h��GM~pƪ������6�u�5uCv�*�&?�Q����_L�H�'f^G�d�w���$�fy� v[UN�(L�Զy�w������   �D h{�(�\�UԫۀN�]:ٞ��[�hs�KU�ͅ_��F;M��(��ηB�.{ZN-��F"�����B�R�qHO:��M~�y����$�p#��~��h?C���%ܓ4rv����f���	�5G�;��5o�	4��4�܎���S�+Bw�[�9J��"�S�ӣ�!�I�*tI{
�oo��E1�J�CW�םS��p��Z�])}_}��H.��.rz�ˆU�l�|��A^��?2��ϭ�E�������c�ڊ���v,YH7�� ����{����5�C��5��7����x�/��؃�G��s;�cC���a��{�,�mi����Sj������Z��riw���{��ĕ��{�~���_����/bW	��N�\���7<��ฟ�E�z7�9�����G��q_�k���c��V�ns{��L�_��)���r���r�έBq��Ki���E�羹Zp]���1ؠuq�ol�_s��D'a-pw]&&����s��;����[	���nU��Xv�ۋ�U�����v��[%ta��K�Jl]����%t�uqc����� W]|6����\�/^���ŕ�5�w[�1��_��ߣ��(��%ȁ�G�b�:Dɮˬ���S�/A�����~�L�����BU½�9j�ш>�u��oT=CZ�ؤ%y�]�-�"\�0�_9j�����u����׿|˻��p��(^%0���f�~�	rꜞ�9Ex��9�3�F���WQt�vE7�V�R����%H�u���	���j�h+��+�+�gbwew�*�Ί]�}�WEt�k%�W��K`Vq��$����ĵ�b�kh��(xVc�k&�s�纘�X16�:�g�+���A�~�z�ek${O�?c�	�/��n��X}sC��Kx%���	r�&����ADi@c��@Z���׊�	�r񶟠��7��"�� *��D�7��^��.n4�4�ͯh_�dD5t�>{c�I~����~��� ��      7      x�5�[��,�D�w5�y����vb��C���@�i�P���;�����������K3���o��������7���_��;��z��K�w�o�����f����y��q���2�)��K:G�we$.�c�xBi�{��I]���$��������]Ӓ����w��U�����ٽ������Wi&��J]��U�Oޞ�������II8TV��~�̓�p�Θ��T�O�C�3*���)uo:O��I�o�N�>L�a����k�r(��T!�+&y�U!���j�IJJ�Ҏ��ߐ�T�"\���'W2��� ���V��z���~���^��P��|�z	�F�5���P˄Z&�2:̿P�B��=�iUQ�b"v��P��A��J��JFb�wQs�J��P_���҉�K���{�T���N�t��K�(�hi{h�w�
����D�0U��b<yeK��TE�Z)U�T	R%�����n[ʻ���^�2�)ײ=|�X�De�D�ʶT'E���q���WW�V��MZ�/A�*��R��Vkt�ՔO\�%�ׯ��i�N���*j�S{�:vǊ�T�ju���6,Q���я��a�ߨF�0�c��(�Q��Z`�Kc�5�5F�eTA:��k߱�1*�ݩvfh�Q����ΫZ�A�����`�O�v~�#���OuW��~ �Gn���Vu���F�l|��48�=���4Q.#�%�*��ԣ7[��E
T}����a81\J�.�XP��:?w��\�Pw�6:m��MrxU�뤻�)楘�b��K�2�RM�� _�;i��6���/R]J�qE3g߿�F��m�Yp�o�Qا��{�NоF����f�[F�[�Ҥ�3>^ǩ`��	�Iy5�<��\�9�����is��N!��������߷��b�|��0]-�ҡ���e��J�Ou�~���߾j!��H���ۊ0�����hr�2����h����I�$5�T|��-���~��ʤyA�I�T7P،o_7�͠�I-%����n���/���zԾ������Q���8~ ����K���@r������)�rKu��E+��T\ә�w����aa�Tgy-�2q����M�:>U��\�7��W�Ŧy��5�jJ4?�ejlΗ���K��Ci���T�y-���g�~��?�?�3���O�w�gC��zJ�_�3<�P�|	�O�:�>w�����<�����p�$H����p�0�_pe���'��	���O�����p=%:�O_:�[zQ�_���NI����	��/�6�=ӡ⮾������������}�k�׃_�����`�����Sp/帔��&�U]E��� �kdjdʧ�b�/�[�
`�BJ�َ  ����_�,��Ư5�M:�0Z��J�_ ~�u
��)�����ntd�G�&2�ҩ �~!���;~����W~��lt�b���7(eP><�����K5��}Ku5���P���ӾA�zł�b��:H��f_~��R�o��o�I��7�)��=Pg�X_0}��M�$�b�o��E�,���Q��	.�m��ߢߖ�k�����5t<���l���苽��f��_}1ַɺ������R �6_�@5����y��(#V:#�Z���2��OFZ����:��J/��^��l�xxGŌ��W��˸��� .��J���\_�׷�k�ƽ���Q�������w~8q6iG��PzQ��\�H���>�9��	BQ;��4��0�����8.���G�*L�
\��۷M���B�L-Q�ǧ��$������m�l#p!����K����hi�g�x�� k#k�_�d��F+ �m�bC�������+�A}�o��H����j���p	=����)�E��FHÈd�48ip�0�RC�B!�`X�Q7ܰᆍP��-�SEl�3P�bc8�!��i"	�Ћ����:�麞.t�ũ�0�*U7�R($�ؒ�BX�#da`� �tPGݳʔH����)�6<D�^��ƀ�]�� Z#�a�5�6�@��X�b�J�E1���X�&��'�.k�.�i2ܮU���gu@a�l�`�K��'%�a`ؚ�"�a`�b���m ���wmx����tm��k�3okD,ok.�k8\���PCs@c[kk�Z�.�ó��`��Y&������8'�	cP�����AmT�@p�V)ID
��Z���U'J�V�����*S�D:|#~�k��	̃�n��: w"��� �T��W�	}80w`���������Cn�%Tv ������:�ܡ@�Ck��JU�X[_;�7*K�Χ��%��}�nT�}!\b�@ځ���J	Rh0��ce�X�ch����k��}�p�7���(/�f;�v��_PY�Tgi��Ck���Ɨ7��}C�R�3��s"Ɏa�:�)*��R�)��:�c:1d"�8Y'$���A��g?�D�����S�q߀�1vg����V���O��m�$7l�cc=yx̬ZpX��Tǧ:(�"ǒ�r���A�]pP*����&Ծ�P�k���H��Ӽ�D�(�cY���!��R�N���x��t�� �7f��37��d��vSۃQw<��ef�O�>�x�Q'@�C�H'��V'�+U���h�ʱ�ңɋ��ؙ=��PN����	�3��������|����JՏ����6���~6�ΠP$��̼���:m\��F!�w�@/ ]0������q��I5ÂG. \@���¹����s*�7E'%����c�����2Q1x���n5
�)E����e��4�AP6 a�� 򧹛��N���	� p�)�Y*����yEz�E�kQé"̩Ty��� @L��+;��! �����Ξ��ؙ�o����&Ψ�;U���/�^�t�Β�4Y$��Ia0I�pC��v�3vx�`�8΀����A�5 a@�`(�kP10�Q�o����:K���#ɨ�-�^X;kHUT�"耋A�U���iFm��"� �� ���X���DF���"Sa�;[I30���&+����C�Ft��fä���7C��Lf20�+J�� C��*}�O��/Ts�z~i�:Hb2����Ph2�O���3��#�L�I�6�o�P��D*�2��Ɋ��P&V2������Sr��_L����C�0h��j�fPG���9^��@5q���M��i0M8��[��6�l�$�ٳ�F�"��|Y�$`�DJ��B�d͂4��t�&cV.���&L��|�FKȚL�%V3m��w��
��ɘ_��gyB��	NG��4������&k���"��h2�O��u���_�a�'��
	<l&C�|��,ɟ�	��>�}&�L��3�g��d��x�$����܍n�6�K�U�o��2 5��Y	�b��%�� ��r!�+��y�!��]u��LL�T�U�&�2w���!aX��*	Q��x˄�R姹��,| �	L�&�2kW;�
�P%~2�N��<K�H���� Ae�'��z�*l&�L�)�^X�dBR)�+x%Zޞ��X�̈́�	]�@ib1��Tk1(���m&lM���4��j�duA�3��zn�4Akn�4��J�g2ՔP5�*�:(C�d�^����R��>kA�g0-��c=-*={�~� jAT��mX��0�E\� jaI�z�b�^`��j��b^�0�Š���!KPZxN)�Y�d+V�,�ۅ-��eF�� c1�.�/G��7�t�������1����˧����޳@d�7��?YwKBE`8���"HZ,%(�X��r�Y�B#삇��]D6,�*���M/TK{�~>m��?�����ͻoZ��b��jK/�tZl�G<x������w�2��2*Vu�,�Y��xk�
�Y�0�k�jl���w�R��Ũ�p����b��EM��1�_�̂���Y����b^�2�����H����B�b8^L�Wn� YX��l��Z@��b�]�RkWiվ�AxA΂��K��Z��[��k��S��O�S l  z�Aݳ���NQ�J�O�E;Eг�l1�_L:ղ��k�,(Z:�Z��,��c��Z�v꩘�/���Z;�T�/�l煰R@l��¶��0�T��g��°��z��T��T4�E���rؿ�_�Y�_�h3!Ռ�)��͈�������,�2~o��}v��|��_z�f�ب!�6&�!���ZzGa��oX�@�kcB�6��k��K1@j�8���45Ƴ�i3�o��͘�1��ڬf0߄1��{�R��78mB�}7c���f��1�S������ȚO�� �6dm�g5��f@߬�m��T��屨�:����ц��K�#���xf�G�6��Ə�b��l�mh*�j�s1�İ6���7�m梚q>)�	:�.�m�z�k����u(ՠ��p�6+d��:�f���85K��!�'m����6�m|i3�o�i3�o_5����͌~��So$�		4�����ܞ��&��N�y�S��&�׆�ң��E��`P{�ېWz�2�o|j3Mߥ�zR�v�T:	�m�j�ۮ�i�}e�K`al����K_	|����%�����0����]����]E�6G�#mi�HG�D>�U
/,�l��h6�l�h�G�ٌ�{C��B��}\&�:����Ntp�Rn6.eA.G6�@��=gg��\��Hn(r�����X� ����w��RC��Wq��x9�r��V��tX�:�|�]�4��a�>ԇ���G�����,��Y�:��u��
�a�0l������JJ��^Kv2hv�~.�~�����]���^tl�G�hVA34ps��X9�q��Te��%G:K������`F<���CLt��@��.�����L�Hs���Y���������80p` ����;v�wp-O��f߇��a�}����a(> oXu:`n�����`<G\�l��t��q�ô�d~�*����)�����R����\���ҁz���I����4������6�H)��ɡyH7�mp��K����t��3�n�W��oX�!�9�5���v��ͮ�s�f���2&�.��5��z�]п+��`Vp0���[��,���K��8      3      x����r�X�&z?*v�.�UA�����ɖ�,�c������	�Iˬ7������̓L~�� �b͎�.�2��/����zU���Ū���}t���+�r�,�Kz6�f!��ӟ�Y�9��yX�Mݔ֕8��c������?�o�[Y-܋��_����}�?�h�Mg��E���M�\��]�,���£���)����b�>r�-k�._�]���禬��v�d��GG�<����>�����ob��������G�2�����!=4�1�M��I�� �&����3����I�Ok�d^���R�ON�?�c�X�#s�עq�'�}���>~�L������x.h�iԎ���n菦r/V��ɛ�g�"c�x�s�*�E1�������~.~u?���{�ux��'s�#S��d�N����"����{����z�/B�����|�'�H������|Y�+��-��nܯUSn
�|�Y��L�5�D��9�U�7�v���'�x2� ̵���3F�b���(vt2�m �������|�8��U^�˞7�{UlweU,�]�^���$[cfV)u��î\�=�29z[��	�t��o�e���lʝK�>͖������ա�I�G9x���zOK���u�����$F�e7{�'w����}X6ue�D��^�;_�ݞv��d�t�}/�A����{��W+[l��e�u���ru��=��$���~��F�N�֖$	�1��;�������^����c�߹_�$м���<x"ѰG2��˼�y���+?�y�^�]>����[��[��;��)���ѷ�g4����ߖ�KN"�6�{]-h�}ݸ��g�j�R�WVے�;>>}iF3�Ͱ��I��eQl���>M�q�<���8~6�X���o�a�hKҷ���]���������±�E*�3�����P�'�y����9�G[~r���#?y��	���vU�*�K��ڽ\ִ���y�d9���;y��s��R ��(�^$H|�����V%��ģ_l�5�:���G3_�E�����Dr ?�4M�P�t�Z)O���0>1�>)���`�����&<M�Cu��6��D�K��] ^��iJڜ��MMn�W3�<�� s��$�煋F��E�؜	�z�`j�`�@$|��Ŗ�+�����y�YI���d�V�\��-MA�#���d,�c:ء�,�"�t��r�����Mzm���W�M��̈́�YO!�$��]9w����Z$��Oa�|���$1~�!$��:�?q�R=t������ǂ4��0�qF��h����ܮ'�����0u��9AB��-����̹]@�x	�XMTwV�Sb�#�9���őH��s�_HU�x�7m:a�r��s�7�?�l�9��U�A�ˇD��%�\��p�M��+���MDK~&[����ͲǾ��<�ң���͗��;�$����NU�����+}?Y[[�>96�c�(qk�`?��'t/�;���,xX��oH�|����5�\��IK�bv�")�_���a�j�e�����x�|"C&ߑ
���ʾ;�lY�T�.�PX�`�Gx�P ��	7	C|���}�ЗNN	�!��&�재j��������&��ղ�L6y
���N��$��L�Y��N{�>�WҸ/p��Р��D�Iɑ�������?Gobr���ʟ�5s�����x��m'Χ��}_6+��~z
�U	���.�[ڦ��?7����+x_�J�*����CI� ��f�y��H��%9���?��0�V	�|�
����.7��#m2��w�E�e�;w��3�nsa�n~+)����~]�꿤]�|4�d�J3�����D��ȅ/��zX�$ϛzO�|��φJ)�R.�;����x��l�-��]����Wovl��2�Z�`�M��$���~���٣_|,���-�yN�Ad\�*��F<����[��
_�I���Ë ����C���ot��4����nL*J�F��~���7Ŏ&�;�1�&��� �/��~O��u����vU?�	��l�TM��?�N6��%��C���9rFf���azI�"��3�ua�)u�xh��*�8�ҁ�������l�	�p�`{%]$�x*;���jABI-�y�h,%" 6*�H49�yXԓFN���i������[�C�-�X����D��v��֟N�#W����l�W�iw�ew���k�Ԓ��1&n�9���X�q:<A�v��l���rN*]aq�fÑ�-�|W�M���h��oY	ސ��{��v%��Ֆ�ye�u���m\|uBg��L�Q�N$�/�5,���IxO�/�~��������+W��п��o��e5/�7sĳ˃,r����@���CΙL	�,����9�f5-V�|�k�7Y�E�0��K�!���V>��2v���Y��
�t��K��f0�k�ST��2�x͛�?�[��d���BqQ|��$�3�9Wu�>um�C���2{�2.�{�c
�6Oy�OSO�)�K����',8�]���4T�sA_l��z�ԛ�d�\4/0, &��DY�'��ġp�ȹ3��e]�H�� ����x)���,��y���|�h�2���Gz��Go݇ע��H���;��xR$1�S��Mi!_�k'�z9u�����翁���3m������5i����-q.���.R������xh���k3z������u�X��������B瓥���_�hS���G��AC�
�7��`����>���5�H1{X4���ĲS��EE�i~���ڐxD�EU��d+\�7�-��ONmL�YS�����[||�}���@��\�!x�Ĺ*�;���؜�Fy�Me.b�{���V�୐�`���@k>�ݱ���t%21$���뗢r����*��v����}��+��:���Z�3E��q��.'�Y��I%*v��f<��G2R���c:�#���i���������I����-	���L����G�s�����6�!	���\��EST$%
r��{GN���1�����Ɔ� -p���x��}��e*6Z�j~}��9�֫��@����DcTx�����|�o�j6���lBI�����%�3򛤡͎�[�b�Xt4�4���'Kh��x2�ę��m���qG���J��B`�fz��N&�ޕd�|�wg$���E�R�_���b �ɻ>-k'��!��5��
V�ı���"m���D��s��BzY��2&TƦ��  q'~y�p�An9�V������9�q(P�_.��σ���4��E���/!n���LҶ����o�y�z�����'),/��]��C�Vs����iM���%	7ڙɶzN"ɽ��P����>@Z勃�Z��YoX��P�dz4�C�L�r�i���?!�i��?��H��m�@6Q�|�%a7e٧]�)�aR�./i	ig�#܏8B��bx�[!o˻��{���0��-�/���ײZ�����Ub;G��i��ʜ�*�V2���'w�����k����X����Cr�TϑԷ�i�lᵣI+�rM$�>[ԓm�� eǽ+rm�燼[�Y)Q�#ɐt.O"����~[�}�_Ɉ%#���ɜ��;ۗ����N��M��~��ͅ� �3DC`�~k��gIh o����o�,�th�Đ-�p�yv�RbJoW+�fg�gp�Fp��� ������&r�����I�Z�Xu/�;-z��a�FtD�D_p
ɥ��ou��l]<<~��=�3t��$�e����+�B�'����Z^ڷ��2,w����5NB2�jկ�s�ɶ��hЍy�`��e��C>�Q"�����n��������9u���yo|C��b��v���X��f%��b�Bx7�F&���f����=�I�l�+w=�~��r,�9��=���㼘�c�|ujba�%M��sɸ�����(�X�U쓯��x�����O��d7�	�*�V�S2{��Cxbx=Z~�a,�&��m�;	�9X����_��uR�jz�(3}��	�������8qD �޳�\��i=�i'�    �T"�N�ҏ�v�6 ø��o���z1�E1�d������o��ϟ��O��X�Oq�i��������y'�v��/� �:�&��<r� x��P�`d���йh�Cd;��|�I�;�B�.�c\�����M�T�w�D��f�)�����7�z��x	bEp�G���L����nv�{.�te8y�Ɇ�,��5΅�ۇ|W��}����G�sz�~�Z7��Nd��y�b�p������n:�+Ҥ����j�|�+��+�Ղ�� �tI���4b��s��|GΝ�d夺c�צ�a(�NhMOr�~�-��f�D��5��R�7@�H�$�8G�G�����B4� ���_?���ԁ�9�˶��Mc��M�Sn[*(B^�5C�h	�-^rX�H!N`�q��K^ٰ���t\����V��ǙH����U�A��-���h���
@"{���t.z� �^I���ɬ+�
���� �T�H%xq
�����|�zi6V��@	J4 �~�e�0~�8'ݏ,�2v��3Ӟ���~��9��P�k��=�H�:ɝ���ٻh8�I�[L�
���\���H���y.>�A��>D�Z7l��$#��,q�(H��[���b��!)��T)�����,C���W��)]=��,9r���/?`�����sW�*�����d/n=A��}Ī�590����F��As3i��9Hq��M�&y�\N��#�% ��-C�� �<�	&m¸�V�u�*�bU��y��i���x�HQ�])��ȼl�|as�F@:��R��ZLU�v�~�~r�a|�c �㸴@4\s�u��5�~kp��z�O�N�B�ܵ6=^Zb��� �%0M�T�p��K�z�>���r����Mǀ��ٽ�iN�z����zA>}��U~8�6f�O�}�<�\��l��v��;A���圌�z�����2�NNv~- Q&��~��$�9��"�w����.g�Y��h�/�b����+ޘ~ժ�W������+�kE��,�� V$!ق�GY�l�0�h���R]�Ł�Hʋ�Κݎ� v���[d�y��y�!�he�:(t���X;�6i�ȶB���B��՞,�i=,x��}�~�ڕ��]����O�춢�q����ߜV�9���^������_7?YD�׃/��渣�Fp������d �)�0Z��C@p�lA�Ll��0�Ve��{�t��U~*��~\�\��c+�u�l`e���.E���P�ӫlT~̛r���(vxM@���)$ux�eMj��+� �����O�P��-0��[�+�<7_���/�P�2t���p6��� g�V���U��>4�/�L�@KI��j�ɻ�Aњ�_��v/+d#�c�ES��'#�!y����ȍ-k����8��*MX��P�J}��&��>���$��uS��L�70�x� P��}	2�G������p�d��g\@-�a�BQ����е��@�9F��+�υ��w ���������p�\��#٬y���}1��̥�
4 }[=��w[�v�a|?��>��^J �q���
:�[C�<�!��MPEI�NL�]�	_R#��K�k1����������pU�95��Ym�����q��3hK�H��oO��Y��kj���H����'���h�L#�:<u��כ��|l,�I������CT�!�u"�$T�Bv��a�$��vW��O�;�i�̞�监���r�9��,��9:�,�V��> N�=�\e�~%V�H(,v�sv|�e	t���>���E�_zt#�D�i�Et9	��r�a�~EX�b�Q1N��m,4��,�.���û8�����1y?_n٧���r��삆~�^,�o�
��ubR&+s>-roj���Ѣ�:1UL�$��(��. ��N�wqdc�IN��5)*=�#�R�K*֏Q��In`��{'��p���RS�I�p��r?�-��FYv�U�k�8�+N ���ly��@�/�C��-���q	` W�j���`���:G)}S,��%m܆�>I:�o,�OevR�S1��y�)u���ꕹ�o]�8#/��vj���h`LJ��w�,i��?!����p7W�%CA4�=�Mi���.j$����$iBcp@�\������v��*��4�nOV�{rb7�E�:)	��\
#�ㄗr�?pZ�|[�.���P����O��Uwdb��LC��9E���V���W>�M5���|�(�$���~!;3�H��46�&��<_�Y�_�E��2��	����{S�9�k�h����;I�Y��;�q�ǔJ�T7E���� P�|�͉��aܯԒ�3M���./^k��¤��$�c�m)��ib|�u���Ou�)S�/^�E�ܔx^�SG����,����<PU�.��xL�Ʌ3�x>�=�,׫�{�̋��yC X��O!��8�74!���M�?G8�����3U�O
2�"�c�������Q,�R8����:G�I�:M�OzS������-��w��sS�L>��k���a���01�P�V����<��a��2���3߹\2`�������R�5ٶ�iW��r����1)�bX��j�}��㕅R���g�'��o�RP��)B*�%K4�ǝ0�(Ųg�O>��d R�QO��@�ĺ:K�7�~�u����w�q�:�O�Pmݏ��E�k住�����$�k3IY��}rQ�T�T~2�͜��lj���`�:-�z�4u�O��7�X* @���"�g@�W��hA��Q��Q���j[����\Y��\��;> tZ#�����]Ao�}�eAb㞞���C���3=�����336q��F���9.�gfi�&�9y��1�Z�(�֚�4.#W�d�;��z<�8�4��*���)�$S�7z�upu�^�F�9�Y�e-|_2���:�
��bVE;J4�WTF��cqx_��q7.B7��LaҴ�������|#2Ԉ��������#��-0�$��[�kް7 ��3���XC�|�WO�7��̈́i@S�R�Ʒ��~���A%�=����#(t�]��ƞIZ�>�E%k�lP��H��yXh�=�{�X�iC�����W��#YM��h�A��m�ɢ�C����!4��;[Ǘ��D4Wù�/ѯ�^��@��=�;�|ͣЗ(�����Z�n�F�k��(zF 9�É{]�[�=�����j-��g�5���=�L/^Я�|$�g�����^F s���\BT�����9��n��+�G3Mz�PM{i" Ų�����,�5G�� ��<3�U��'�Xf^'��.$՚΀ڿ�Ye���WS��󏢮^@t[U��ZP!��� `ϻzny��ՙAI���׶�ae
�~�'�&��=��E�\j����~z*+&k��2�EDg�ɷ��Ww'S��ž"����R�󀁎�^�!$���$�]Q�R���Q�/�l��OԆ�U�]�̹�AFީz���KBTq�+:'�r��iIj�����=�Q�^��g�o��'#�`�5�-c�?48���� �;�>+�M^9��#�9������c�p"����������Aa��q��F�-G�1w8�,D/E{`e̆����6�?��KAj�˫~4�j{���̹*�t@q���z���,�N}6ñ͜�'����DJ	���D݆�u�B޹P��ZX���]���e{�c��?`��d���GX�ej.���ܱ�6*��U��Z�w9���%$J��V��/��7�V`�b7Ӎ�C�WDK�IC�x�pr;G�dD���+#uHmGd�<�.C_������A٦��	�o�PG����������,�ЫbC�Һ���ǠP)�ii�R3e����"��a�q�I)'K�<`�z~�W�?�l�a$����c
��~r��c�������z�P�4�բ9S>�6�ٚ< p~�i��@�BVت��V ��_�F��#�O�'H�y�L �t-�o?� �:Y�4�c���/\6�5bp-m�9��L��    ���ᩜ͆Ө$�+�S2��%���	�*� �ך�@@#p<o"�<�0g���LH%����6at~h2*p��ͮl,��>��)��U��l�m��P%�1j4	�K��A��8��*�+��$tR�~Z���VEً�Iԫ9Bf(�cz����f7����[�'N����mؤ�w�1?*HO�VS���ȃ��)z��}�'q�*�B1EA0�uF@�_$u49ߏ��j�6�w�͔1�완���Ш��e:|�������q]���"v�r�c��.��XD &�B��!E y�#xl	ِ"4h��,�"7�{��?��5��I,��qTd�4�R�bq`K�d;�h�]K"�[^�~�I����]-�]�,�X1�՛ש�@�48!5RΡ��2eB����<� ����{I[��`��u�@���c������>�BjG�5�Z��������v(��%��|�1.�T%�;QR&pH�����m{�ަ�֯�g�d�=�?���ß�����v��ص��L)�S��x0�tZ����A`�:�5��Ӊ�l���X �0�zF
2�(p�����R�T@I�^���{7 cᾚ/�JNT�_���Ɨ�E�3�%�S�`�)*�[���<
��X�i����?H���,lh��y����G��`�{���QU�pz\����%u0Fiǎ'J�1yy��/���+ ��-��^� ����j�H�����t�!�<��C�YQ�xp��$�	�#�E ���
�S���u��)����qGg⍇��(��Ν����$S�~L�Ɔ��~�)T�4��ܻ��o���,�Yoh֒t���C�z����*��=o�X#�+���c�;I��DH��poh�_�L�5�iMɻl��U��^5���W��QB�/>�?�<�OI�C����&G��8�.�)���K���Gd튞1����?�%/;0��Qb> �GO���8A �X?����&�<�Oe��'2u��u�7��JX'C�)��ѳS @h:��*�ʿ�Pz��b�f�1]҉Xd��<�`d���k�@+(��g�4�!��Hr����1"M��>��t�%�q@J���6�]Ϙ}_y.�͚D40���nW,��9�J�.y���1���1b1<t��W�*����tI���I��Ͼ�νT�W4J8z���aQ!�6f���YC^
æ�Î>�O�������4����-��O�f<���L�>����_}m�j��(ߑn cƼ�UK3��
�T��xi���}b��sQoV��S��=�ef�U�4a9�%�Z�QW�J���J��^�r`�Os�����!i��{W�IV�3�n�^UF�֐�Q�w��vy��jHZ�(���BQoXZY!Q��{>���	���X��Ȃ��A�x�%'��D�s���L��s#ɡr���#�	I��2�����PI��'�?CIL���a^|�G#�mY��,ㆭs\�g2XLnw"*��2�8�%B�*��-�ظ�n�t�@���5nSRa����v]6J�򁡙�B�#�x&��NŐ�@��!S�c���E>��K�����`���$ ��#���Z��赒>��&~��hdR���ɫj_�U-�E�S�a>ؑ�f�|�[���!��$l��`�)�3	�N�G!��0j3_�u�2��$B�_�Y����Ϋ�>wo�s9���@��K�L���bG����I�FT
|ۺ���g����>u�&�g_�����]~F[���Q�]����tgΥ1�O�9*j���?z�Z#�e=-I'xc�e�IA�mP��L�;�i9�o�G&fߖ��X'�Bc]��udb�8 /�4��9�s��<z���#g�,d�nP�kŅ����]L�p��y��w��'���6Z)h��?e��}�T�:B���� .G�l���.�(CD���yBɛ�N��z���ƿG������`d`�X	���!U��˰�S=&bq;���/�ҾֻcX ��5J�'���<�Gm5s���x�OM����Ë��:%��D�o{2xL�C�jb��j>i���� �r/�Á�R�T�c�L�X��C���ǃ�ar@�M4����>e�g�<PK9� KeJd�����>�]���Q,�,]8e\��
%�a��b�Se��*�E���7[Rp��sl�-��A`�bmK�l�	�²0��$&���>%��L���T�Kr@8�t�7#Z�jnW�l·���Y��(�bu+"����&p I7�[�/�dX�£Տ�SN�r���
��{:-U�ZPק��:%>Tؔ,g�mq�J����7�b9�KNT��j�7�р��+�|��!]��*Jn����?4Sm������2 �$/�������{@�L�rB|�� ��E�������d�=5�`F�eS��xm�9���X
Tu;��Ec[k����,"��+�.}d�M{�Z$�����J����(;'�a��2��*^ܿ��v���A����AC�u¥�N���YF��dŀí==ьaX��s4�9s���=���/�n'|�c�Q���H<�h�+�}�h��`�1�7�R�0&F�]����V��r-�� �n��ҜK@%�h˷ �ꯋx�QA+1	s�x-�K9��VD��$i\>�'�`,<�M��/I�r��b��6	T��"���$�0�D��M�A�T8dE� ��b��nq�*9'���s&�zmF`_Ο4zF�f�&S�)]�Ӫ���OF����5�|>/6;e���F^(�>;�ж��mgRo� d����M~�%�r���d(t=m�y��]���.��WF�p�E�}s`�Č�%W^�����/L}Z� ���)���,�yg��:m�a�0�����ja��(^@j�XN��4���t�?����.���hD���de�Ҍ�&"_�&��������Si����/ �ȇ�� �O�S��Q��)2��rQ�\�������!���ϙ�y"���qM#��SxÈ��-J��ێ��=LL�-� �%_h�\�ؐL���&����幒��G?�q�s�(V��ձ%������7�����Z�ֳ~IUDߗ�MUmz�o�G����`~�P�q�`����cQkKD0�������I:�x��;��ˊ	�	��{�7Śmh���a׈��s]b�esk��b��[��\ƈ#���Y�WI�Z82�~��Hc��-�mK��<i���K&�gId�e4����C�u�aĦ|�T�X $��Ȕ�<�=�V����3_OO(��veWZ�i��"�lߓ�x�H�����Q~�냵k�� 
�7C@�{Y�v44�M��t�O��ļ��'Ԧ�2p:��u�X.`%ê��_�(��B=&H�ڪ���c��9�
������|=�W�+z��抉�(Z��q���%�K*	��qw���N�(�x���5�z=���I�\,�6������%yV��'c�i7sm*\D@�Tc o�
��j$�0�s��盂����G�0Y�Y��$.����y�2q��P�E�RS�hC%��tV�)h�j��!o��>�mSĔq��w^KA�}��S	RcD����9�#;��$�v�Fl
!._�P�x��kK~����"F�W�u�!{���E�I��;m�C�V�8Ejpl7�3��?��_ᦲ��"`��&&��q7K�4Qܖԅ2b��p���O8��M8"�w�����_�xm�bO�k5,>m=�~�?�.���{`��Fg?2ܛ�5�ϗ��k/�o��b;6�[$gO��ٍ���A�~�2S:�d10��P����3u��Ĵa���@/n��O���A�1w����ֽ_�%�($tv����	����#���9��ٚ)��M�E����ZF�_b����?6�z��}dX����h�(w*�I0���g�f����hUo��vt|�&�h�5Z}�G��%�-F�"PM۔���2VR�qHf�H������&Y�]F���� ��[w�_BM��F�;K'����    ��n���+cT�Tߜ8_�Z算P��=�c-W�g��(��=O>Hr��_(�4A�VI��Ӽ`�0017���ԿL�'(ֺ��#��H���\��ce�c�P5Ak�pC�(%���=�Sx���<�H��#Ƅ�ɴz7��X�{6L�y��,Ў� _6p� Gĺ0P��{��4��e��������.��}ʢ4q�ar�*v�<sdG l"i{���)�N����A֣4ք�zq���6>��$j�3:�ܚ���$M�1x ��-��Q`����ZfHr�|~O;w����T�A��R����PM�Unjc<dd������ ������C�P�&��٦��ܗM3��Q�3�1�r�C^���"+H�k.m�fCѸ��ؽΒ�<���p,��7Q���I��@O&�X��F���D0�L����v�ʹ����ƞ�И����g~��b��Ez$�R�6p��-�{Z9��D��ٖ%�4�]���ߑ~{F�ri��ut!c�HՆ
�Cn(��|�M��~Y�����E�,DÛ�bI�s�φ�5$<��1j�m�u�ˣ�d?�-L�-�y��F���W
�1}�a�X�T�ε�K	��)���ឫX<��\�GD	1}��R^@�~P�1�7�i�!����-�H�h?w1�h�fhk���|0���� ���@�	!�����C����c%7�%��&������r8b�!��L�Ҹ���<��xƱ�g�Ȩ��&������8˦AL���to^��<"_):����p�4�uF����B�\�$<�Ș��Z"�6z�ɺ:�h[�#ڟ�q�}LA�a����c��`�:�h�J5�7������Vŏ�g��iF������r��k�dS_�V�hm	D�~W��ej#���tt��b�(��\���B��f����?�1��t����U��/��ԁyY�^��׀1 �:(NM|�s����������� q�Ӈ~������u�^B����WXkԥ@���~��i�s����K�Z�1ă�����c���F�.�-��b:��d��󥀐!��M��`/�\�2m
C)�bZ��֓�ag��A�|�՛2�[��m�c��
�?�"	1y�Jl9��(#�yN��i/�lT`AO&���]�$����w-�y��,���AX�@j�0](ӷ�Idj�Ƹc&��Yݠ�Ǵ�ֽI@�{����w�K'X�Z�E98�0Te�Z�!�\k�߻�W�R����n,���7��Қ�7��	�@D:o0���N�;�<��X@e9pPL�9�9�����;�u�䝕[�W�JF���B���1��8�)���TL�}���!��#C����yy��P��`�(���}���� �筦��r�魱g�֞:r��~ŦfA?�HF�(�㌾^hl �XxL�8 �f���=�=�Q�t�*�hq��p����t��35+�A�����(�!˞	�����)�������r8k�(�j����tC�69)��:դdд�b-�*4"=K1�-�8^��0�'$MN��Z]�Jr�ؒ��tZC؆��8�~ޮ��n�ݛ�;���Ь�n����L��1��2C�T����|�%\���j�tC�8&�u��	G2t�[i%������A�s^�e��� :-�����X'3�c�8�6v�F��rx�%(�:��2���F��m&NP���	$%z�4 ��)ʿd�=$#�δ��,�'��P��/�FY�8�R:=���=�b?7�w݁��[*�����c-&�K}aꖂ��[m��6�lvǧ�!��[�r�݄�b�6���d�@	q��$���k(��&��`V�t\�[���������Q.Mp0���@N�[S�y��ð5R��S�]Ɇ���c��7��2�11g)h	�[d���q�&t�+%{Y�7y��B�&��6�ӈe�F���ݛ�#�"�Jg��3�����~��{���"*w�C����@�r�a�ך��mG;
�ŝ������R���i�.o�d����3R�f�E�x�Dc�~�@{6�2̺���j&C���zo���s�A����J��v��w�۟�P�S��>A���*�z-��=K,��`LN���Z�d�S���&�\��-i�@!��q[�g��u�|�o�; ���~ g��K2��;�l�ƵWL61������}���hxœ�\�����Q��Y�S�k����%�����4ޛ֢����H�{��VH\f]�Z˻��OFĜ���C�hji'o��!�⮕ϖ>�a'�i����z �V�%3]�|���r^�%��S�ّ��)AE/W��'𔡍�z2#Su+G��i=qZ(_��ģ33V�����Z�\&���A�^�k�!}��<��{��L
����:���EU�v��Q�G�yz4��Wʪ��0`�*�mV��Xgf�<�����3^O�oИY��8ã�r d�ƈ�6A����m9�uQ>[[<w�����ʽا7]������RmX(�К��\�g��}�Bg_`{f%衶>l٣#�ݟ���>�ن"��RFS�+l�'�=|��O��v�����1��b@?�F̩	�&��|����	��o��kB�����*O{$d?�׃KӜ��!.�4!���ˑ����2�����Ṵ�K��񔀐e]-$tT�#Q ��c�Q��z�W���1]>i�o�Ӑ�O�b[L����� ��P��CI�wu�[K4jؓ4�B����_�_�K(�V
����o#���"���uO�����ݦc�I�@>�Y�
jǖ�*��<v	�$�޸5o��Ԏ�~hUۘ���	�'DhD�^��u��{���C��c N��p��H�%w�e���d8����!����2��� ʘ���<'�'�L��P��¤W����0īu�ΜO˷.�����?�	�@�W��!�re�?W��_���� ل��ɠ��,��L�sHC�~�3Mv����Ҭ��ކ�P���/�\�@5J�"B��M�1�V�m�s�1M��~��#�ac��KB��mw��H����T�NJ�Ĺ^o`�`16�%�����o�$p�Թޔ��y/BoTP�j;S�{�ř#YGa~"j���l�kR�c<]0z$�z�Y*!����#�\�h �C�k�Č�;�Dz����VF F�rV�`sK��sI�P�I��Ki񽂣7S��n����v�h�&�h�l][`�,�
�Q��'Nڀ+7����LQF����(n�p�����eƊ<ku��(qP˭XB"� ;�wS���/h+��3S�B%�4f�7gL������m]��l�Xڼz��)�G�%�n�B
ğ�_t�v�A��u��C<r�m�h���bϫ�H	�a	�un0GGR��k�^r˫_%��o����=�V�ш�{��a�$�f��d 4!�����~��	'�7"vL�M�܌�O��K��w�֔�F��3�c�K���厈d�ӑ�����d��BGk�(Q↻���%�g'�b�1rK��c��%I��Ϲ� � Īu��ƈۜ3'�ﴭ�x�/�
*F�Q�p'Hu�h엏�p�ޗR!"/���ar���\��Ž�O��
�����N:�櫝]�v�L��	\���2o��wG��$�s	��� ���d��6�1*��P
2���I�,I��R	S��O��yд"7�3]���拦v"�0��-v�J=R[87I}Ԗ��^���y�=dkti O��I�����ICǤ�g	ҟ�.,�ğ������p�z� ���!Z@��Y��鷁WՐs���?�ʾ�LI�J18zO�JH%r�̍��m,�8G"�$(�4����<�\�Zq�`""NˎH,���w^���i������Q�JC�
�d��GG���$�i0�� ����0psM5V�U��r{��2�լP��r�D�=-����EP:u��G6�<'md�K���4�[������v��e�I4����nBg��`�,����2��q��_�w;{�Xz��p�~��)c�����F�3Äz��O�L}   3���1M!�]�̛z�]֧oBsC2]�Y�/����:2p�N*�|k�o�55Ji�@{�ep&�2�(�=��s��W�$���
}��a/�A\�O�����{dR��jOxUH>����_���ӭ�	=���B�G"����B���^o������q�lL���r�GN4�J�Ұ���8llDft����博{�!�I�i�-�@��ô�o��YЦ^׃�K�-�e ����{��u�ul4ݐ'��f#t8�ԋ�4!��ʧ,�M�+��Uc^r�n�"���[�_�|�
�k?hT@���Z�S8%i���$$t��ص\K���ћ�2+��)Xj1�Q�r]kƩ[���<��z��/hy�P5CP�Q2�mi[��Ө�W�l"<
N�n������L�c:���`J��2����d��6���ì��!��N<.�6M�E½��.�&0SR3\�v[{+4�S�c�ju" �ג�VuKZ���4�V_���������X��x'|Z��g�i��Λ�\���7rO��\)�a&���D]�*6���B�\�7j�`{���蟶kr��Sv�˼�Xč�OɤA��A3���A�Q���ZB�Bm����h��Nə����%4(�z �YK/l� Q�B�����@۪z)F���.�2hw� ;���-G'3�p2k&�d2;r�P�R��2;������r�Ʉ����E��SN�R���wP�E۝2z�d�<��2�.IcfG��o㱱�vϗ�/g��2��I	���^���Ȃ����p�'jef]{�`�S�:�����~��r�:�yMijnů�J&z��m�f���|w�r��5�Z�1�*K!Y�'��xZ���Ʀ�!q��������Ӧ�����鵺J%��F������&ӸSO���6^WAoj-\��6й���T�&�5�hW���@j���k^ac?o��72���m�L��dfCi�ՊMd����(��O�J=�G�\L�(q.V{�M^�K'�����18��x�G��r�N`1e�t��Og��+�M�H����Z����SDW����5?���͗��Or�����Q_	.0�W
j�Dv�&�6'��~���fO/.���@���Z����g@AO\'�G\m�����
��)����
L� �)I�?�R2���	F�I�4+�ܳ&�4n��(�����,E�f��\��\i�u��	�TJ�2I�����XX��	�zߐbFO�����W@�d���*W�� �)wƵ>n.��e�֭e�Ì�������1L/RvA���N_����I"�VF��mܔ&
ٿDCgv0}�=M���kO��	zƔG�������rb���|Ѷ�G�BZ˭86	�YW�)��^��/O&�;�|��\C��'��@lU���d�4��������ii�	�h� v�-֗&�zX��-M�@�"�oj�O�XB؂�i:S�����w�w\�.S�3�܂��}/�#B:��	�*G�H-����Y9-�t��7T�e
>�Z ��*Mkʑ������cl4�KykH�4B
�&�/C��oY��4�����ޚ� � ���N�(��w9�@H_R���b^��j���Dh��~�"�n܆�O�vQ07v�]�>.�V�uyQNu�p��� �����'�|C�z=��f]�M:�qi�ݒ1�i�9�Ze�3K��p��VI�I.|�џ6O�aogߍ�{�T{��d���U$�j�V��KHS����1DJ&��������8��(�u���颜^%�ݱ��AZ^�ޫ�I�f�C��}	�ppȢ��Ջ���#:R�*����d`S���/������`�����}!�����}e�f��ε�ߒ��d��S@e�et�A�N���FF��sN�ƿ�Wk@�ɇNAyD�T�9���bD7��Xfb=K��h������&����u��QC#�#'2�b�7^t֍�#��^J����J@J7 �.�[���vǹ��b��h����!p��m�{8OE�T�N~�1���@Ht?�b;=B_-0�r�A���r��|�[N��1��Yh�����b��ܵ{pQK��z�4�U	����`��P�Ȝ5�G�$����I���R�yxXːBV4��ڎ�V������̗\�~�m�6���=�|��f�Y�=���ӑA�ɖ�)i��������_�Za�}�+�W�}������l#�䏕���)n���u�/���z�c��~�\�	A�UͶ҆̏8�Js�L}3ژwd' u�b�7G8Օ5tڊL�2?є�j���ž�l��.\�������i抦�FN�wԫ���om!42�p�?�ܓ�0��������Jh�+ŧ���R~�wd�Z:�����%
f��rn�k}�	d�~+b ����Ηw�]?B�ڑ��+��m�*ikw3�-��y��ڎ��7j=�,��f�rx���]�p��K�d�-��BP���"ə��v�)<�=��S����S�@�!X[�N��s��KR*2��Ǽ@�츗e�&QvX�Yd�BO�^\X�1e!�� X6�N����!h
.��K=oX�(�Q��#�N�����I�zQ�1I�L޻���	ج��{��Gr�����j���4q����U���8�ab��J��s���dSj�-��Bn�X>η�o���q�s�!����0k�|+����6�� {&��L�Z��OmC��^i���|0!�@���.h6�MQ�@b�]�,�_��r65���=���嵐�,R��(6�b�L}M}T�p9{�����_�RI�8�`���u�,"_���|�u^�����G���x5#����q˝aXg&�4U.@}|���le����9�����!_�>_�?��;2��.��	ޥ�0����Q���_k������Q�JS5N�$�s���&��2�����D�M�t�6C��=
ir�����
IvN�;�z�)O�%��9�n�4�Ӆ<�ݦ-���'1�,�Nq�� ���9L��Heq*�T%���&Z��~�_�ef~�
�ٝ6*�82�"�u�Rm�����r.��n��{��o�e������E+�Ձ�҂��.h3�Y���E�
�������E�N\�epu8�@
��^ǆ���S�
� �څ=�[�A#(J���3�b_k�r��������ɎJa]�/~z#&��Nr�gI����d�Jf���{R�d>-l�,�)�?�^�Y��|c�iu#�W��<#Y�kj0m�|7�4�*d��`r^�!�7R��NBW���ڸ��)�V8ց�a1P�_:;�&��3�VґҰ�y�ǳ�����1��$Z�:��7�32�G�a��F��S��߿�9������S���f��c�U��� ��K2�= E�A� ��oc�B�e�@��$�@�۩Ua�Af-�*S�m[/�T�>���k[�����5�Z��	�t���m��xH ��@(���t����lX&��)?�*N���W̴�~EjJO`fgGѯ,s>���䂩����_��y��z=��      5      x�M�[��*�D���a���T��QC��;l�R�U���������Fo�̿q]s�p���W��w�Z{ s�@�z�__��m���ֹ� ������W�����X�� F�t��>�3c���]H�/��H<QW<�V�A��U��;޹W���^���f���X+q����n���1b��]�]��1����3~�W�$��:=^z��l�"���m1�s�"h' d�c����i�1�z�"�Ώ��ڸ���)!�����k-�u��ڽw�H!~�����C>sƇC!��w_�uŷG|9��Ҏ5�G�#D�W�,A��m�z�\�^�!��7b��b��RKC
�������B_�!��ֈ?���P��)!T�/i'&^cl���BHb�$�O�k�+&�J�	���n7�{�)�`'K����;>��_$�1�����?�bB!�2c��#�+�]y�Z��G����A���OL��BUCmb�c�
���!vI,ގ�_3F�x!Ě1��!�O��1�>���!�gk����ґ�u���7�\k��f|i�P��؊m�T���ԿSc��"����f
�gk�H(n�]9�P�g �K��5�
u��7ꋄ�΃he �P�u7v$���;�!��Buc�cF�a�}
펝���X�1c���XG-�_����b!��c��Pa-j�l�w/�0�?�W�m�OE��Nh��v4V6�0�Č����Q��c���6 !�BhB玟�.aY�f[��]s�3�E��;$��,���|�BuB��)!�@b�c/��n��c�e�i2�vt��b�E�,��3���� �T�����na��R��u���-8Q
�J�v��X}�t��_/��J���GY�A0�s2�&Z��i1c7��p��,K)�0��/��vl�P��ƃ��:a���N,b�u)�P�)��X��(�؝[9�՟<�˺�Q��9�^e!�}�I����X���e�Y�������SX�Db�Īĸ�}a1oD�1`1��Ϩ���C� �����X��r�F芁��?�e�x��)�s�0V���F
1������]��{=P���w�`��}�dgc�k��r�G�VZ�(�683���U���b1�����~X�K=�ƹ�n{3d9��m�k�����9k�U�� |\|z�Ga�������;&7l�Ra�z�P�����,d�5�
Ac���+����)��\	�!��y�q>�A)�r�bdP��/��r�@~	7�.� ��r��L�y��H=?�B>j<Þ��!I!�3>(>s��
�ʙ������%8�B��U�d1� X�7�)�:�U@I�oǤ���ʡ�m�rdh���	!�v�g!����/Ḕ�L�z�
K>P� Գ#�X3�f�.���]�Bo�9�m|`�JT�aXk�k~P?�Je��>�z��j����������M���B�~�r�0�;>s�b	9�X���E��p:��:S1���Z��^��z!�X&^�
���n!���/�������� ��ö�3�]�Bn�䎕�AV%�t�Ę��1͒���P�ɦk�%,D����Lm����_,���-�X �IM�vN��7�U`i�hP��j41�x��c+l���r+ń��a/�[��A�ؤ���C�m>�8+�xd�B �݈#�*�������S�_0��Bw��au�A���/K�>=P�j�MD3#$���`"��x̩��B�O|� u�����º.}RP����L��_S$76�10Sd�`���u�z�I�V��M�8�!<�u��C��S`�8��x!�݆@��Q�RYx�Bh�q����6��P@�C�x����z,V7vVj��/�e�m�1^h�	7�=4?h$Y��|�R�@��WX�~b�*�hx��"D��xu�Ƽ��	)2@J�y��8��k��JF�hą���0�lT�^�B����H$��DX��Z)!���4>B	�a^9>[�LC�O�2"S�TO�
�
/]�k��$����i����!��`�XHp.{`���4-V�-5M����q���	8��S�&��M��\ᵫܔ�'6h?=�"���c�������@ƛ���	� j��4�0��J���O
3~�x#\|��*C��x`�Dn�JQ'f`?��l� =U��PSȡ�p�R娉`�q����������P!\ RZ�Ud!EM���$32 �XI*���ЫC�)O�C���:|Wo�D@��ݘ[L}Ў*MM,v+ԻcA�<U(��"�o!_��HTk�W¦UM�<U�&�ұ�X:�*foį���#���D5!��1�n/�;͘��&WM��iI��O$�b�|�j𻥞JV�p�do[���l5!�Z�B�U�R �R����T)k�D�F8&�b,�V��v���t,�V]/�§L��
��YC4�7u�&���&D�Ӱ	��5_���Y���UӋ�y4�q��$�D]����������v�9� �2᫑r���.M�jv"X�w��j1��`1*���4g@텎�n��뼱�St���
���aMJ��-�xl蹪j�d�h�,D��%+i�xa�B=���Y�85y(X��M�*�	�h��!F(gM(�V#�;�^��5!�m� u�Ԛ�U�~p��,o@���*�0n�[iR�Ĉ��4�H: 0����E���� �(��N�~�0�gBC����ZxhbػpM�*���&����RV!�n��&6�}W��51l>�d0����5!2���S��bB�p��Ŭ�$f:ik#�X��0拰cpˆ�>��%��3����'R�x(�J�
Dl8C#zl�D���!DhfҰ�d�	�N��]��d�	�P!����l�U��r��xc��2vm��o�U!���ر�|
a�g��o̻WÈ&Y���g4��y��A�``��EMe�	�~d��"U)q�6�J�S�nrf�JƄ�JSb�Q���T!x�s�i
�$���=�T�0�=��B���Ev� �IRB��G6~�l_F��P*�>v���X�^=I�R������wơ8�I�r�����M����&%�'�_�$�/�gB~�~9*���&fR�}GR,4G�
���`d���B�[��}�8�Q��YچPF��
�\lΊcF�%����������0谚0��ZYjb��c�[�lq}DI�o>�~j=Ɇ����HRc�;�C�ǆ���IR�x5��?5��&4H��M��@�C�az���� �n�7�t�Т�~fZgYjBHc�]l|;/&����#M5ƪ���v�H����А����U����w��&� C�&.�)Q"�"��s���T�bӼ�]������bm$�Kfi �/�K��<B²Ԅ��5"@ʃj���x�)����f왃�R��HQA��t� �L{��3�i2����;�7� ��^�M�c]����&DU�8�
KM�p��5���a�)v-��qP0V2��|ݱc5d�"��N.=f�BIJ����؛E����T�I���c�d��'�!�6���J"'�L�.�����Ѧ�A�o�� E�*(-;hE7���?��I�VQA΃Xہ�r���.%�f�/V��|�.%�f�ȭ�VJYA���TVw���Ѥ��?�T*z�b�b�F�Ŝҥ�	eN��� b[�VdiB�]J�!������~]����t�zv�A�JRwU�؞eZݪW@��hEXz�P{!R��=�k�e�	��C�Ma+]F
����P�Ґ�
##��:yj�P,�bg6k��� �K3�IҤt�hg�o
��e��<s>������F]:
D�E�L)!���
�D$L$���P�á5_%&��G�c�`#�/MȔ�eAK��e��e&�?�,�S"��R#�Ģ�t��,�l_9��A֑���a�҄��@=�}��変,����Pe��!���;S1,��4!��E�$D�/s��1t��C�|d8iraC�H��a�F�h=�P􆐇�6�����4    �m�D/F��G	/4��"C�Q!���	/�)�hBt*tk $��d��U�#�� dQ6q]�+�FIG�U7=!V_:ک��b���m���Ŵ&���b�c��Q�0�gf�2͍t�*�"�~ۥ�	5������AF�3˦�6�hB�i=�P��&�A�gH�dThحdn���"�|#� �9�1_a�b��R>	�6��8L=�ze��:��E��,H���FPҝ�PY��$0��W3)��BT;#��B�3���l��d�"�'�~)r1-ihB��'�2����ݼ��5���<4!6�&BG"����ͬ���{�Oy(���ܝ�� ��S�a��A�c�jӪ�X
d�<[o0�%�B���E�R,�T$���sl�P��Z�\0o&$���pC��{���x���T����A�21�?r��u��LJJ�/�L��F?�ĿK>�nC��&U�)�&5H�.�L$����	��O��ښ�R1��B��� ������b=2�p�$5/���Z,���asC�說Dߟ<�X�c3}�~űǤ˂f��nBV���jL�-�b]J���Mv�<5�$M��A��ڬ���fRp��ljĴ��ް��e�"�@�7�7�)"(hx�J���B���/"�FwMJPt��f6*���V�B
Q�W2`���"����W3��A�b���e�B#�3�)C*��$�̶�eHA�ƙ̍�v2P[����ثh���"cW��S	h�%"����:��B4�]�Q.�֐����"��d�`�LjP'�����,�5p��N�Ap}�'�x&� �&���Nk`��4ݴgs�"P!���F�H��Ƈ����/��X�������T�O!�삠B<���!�\�xh�dH?����z�],��3�x��=�ZK��Dv�A�Dl�!�L��{e؈��9F��� �-��m��p|�!wF团�|��4Xw}坉X����x�y'���K�l	1�B�0��{�$p��z[V]�ʐx�;ب�fƴ��Kc��rL,��Sȸ�bY&�%�Lld��\T�2��	YӦ1�%C��Y;��|k}.��_�d�B�5,M�����Hm��a�n���0�����d�{[�F�$�4(N���c_�5�!�"�̸�c�cH=ŠT���h|�A�8���
N&!b���X���y&d���,N2τ«O۱��ېy
��H�6��H��S��U�1�=�!��;����{��C�v�@5��|��t����0��n-V����rX�]�)"g�*�ŀ䥞Bڙ[��\��3�xY�J])�D�)�O�q��P���Qg�uo_wHx�����I<�L����ːy&T��^	?���<jTG��d��X�C�9����2���a�4�>�/d+�l�ñێuFj��S�6,:m���w��:kL�3��������֞��d��(�J}���I���|�tZ�)@�m��H?s{!��p[�bhI;A�B��X�W�N��+f�`��H`���Ϊ�~����v�[�(�~�ߵ�;��0����!�����f"�-p��H7E�m $�z/�LdȪ蓛��C�����.U����,�i&�&e�5E�����d� ���};�J֨��M��'�cN2M!��!������A'{;5�2گ$α�
�L�Vƹ>��e�4���9���G-�E)C�)�-�B��ħ䙉Q�&caQ)�$�L���G�EB��̄�1��{�|�z�a;>��X}�w�-@CZ��2E%��
�2���I�LIf�<�����
��Ȥ�sL�3b�)����U�S���D�Ե�
2^�X�2Cf@X˔e&橅�ưMYf%���:�R�U�LY�аƌ���)��#R��^�q^(O��il���i"��H1۔gV�pl['�-�;e�"vb/�#G!��~��n��MIfB�W&e���$�"�HY�jF�u}��V��2ˬ�A�	Vs}��OP1!��ˬ�<q<څ��.�,�����}�>������U�^(�
{��d���2�b���)��0fS�	$M%mݸ�LyfB&Mbp��q����6�Lh�4S�w�N���)�"IM�=i,����[��Es'J��	��qgsR��)�Lu��Ԁ7f������R��I��!�Zj>*��`���v4"������|�^�LY&�#�.�F�w���w���O�����:5M���R��gB��DPw<T���43!z4ٿDn�B�	$т��;3HS�)Tm��	nǕ)�L��G���ۙ�Q�Ev�tc�0p�1/�m����8h}<����+���;�4��)ɤ���+ �8K"�L��H^�L9f"G*��%�L�(M�N)S�)��H��*S��M"������@��_��$(	Gz������"2�m��I>��B1� D���ʜ�0h{���c���u}-�x��vZ�I�m����G
���k2���3I��6����Xz9&i�آ.��Δc
�w��9�f@�'t��j��$d����`~�S�Cl�[�S`���"li�C'xH�<�k�ӄ��[�}�-'�� {�/yT#F!�Ll��Ù�V�T3�͙4
eL��fノ鼈�	�˔l֧�<X������̈́���ȯ1(	�`�+!SٰXI7 {p{d�f�2�m�_���! R�e&��@s�=�a��krX�T�$�8�d�a_�	[��L�IKP}�j�ژ<�6y;�i�c���"���Q��0~&�����vf������h���v��~��e߱-ƕ�ϋ�)8@M�b�g���e�G�>�aB�Gmh5�yJ0!��Ԏ�)�L��e4��ƇjqH�(rJ.�A=��@8SW�\<��4�������R�"�m;rZ�e"DF6T-����")�Ym<P-Kn	D��"K�\��d� �ޤ(^��>�ɓ���ʺ^14�Xw�^����3b�=�b_-����pc�� [��l���вu ���ѱ]�wʒ[&Dj��0��c�@(�F�h����A�>D6��v˒[�Ja����NXn��ݾ�-�?�BՊS�["�9��^'>#��J��#�yK뫾� ��3�榢_V�?dq�v�9�W���GS�\<� <ą�j˛	(�-����%��!t,Kfy����d{M��.�����ӻ#�I�+�F��_�J�K� �|j~G$8h@./��W
Qk%��X&d��C��+e�+��'�e�+Q�,,Rb�ş��Kb)��ZR��hYK�����~��(;'H�!/Kb�k5<0>Xzye"��-�����<�}+}�E�fI+E��������Yy��j��/a�RҦ�d� ��۰�k�V
����U��,ieB4�{�`�*�k�SuJ�$��m�L��)�%�L�at����2:�td-7��2���m✖�DZs�'���y��3߷�;����5˒Q&���D��2�陿�Y��s	�Ӽ7�<p��Ji�`�e��!Ǹ�r��>k>bؗ���X]i%�z!LW{8#ƭ(�;1�#��dR���6)W���d2!�!El��_DI���˒L�xZ��+P���rԇ����B�F�y��!�1��MeI&A���$x7HY�Ʉ<�4�:�u���.���-�$�8{4jX��/nHBi�y��IȠm`�N7���BO�_��Aڇt��4Ņ�$!$�?�}.K"�����'���L2!]\��`K$1�tQʒI
a�n�ʺ_94�ek��i�~a1vx�IW�_A�9r�f�ʵ_A��4#�?��\8aߊ�c��!v'x���������鬲$� Tc���;����R�Ԍ�_\�H�d�	�=�f��uV��H�\�<�P^���]����I,�ő)1�d�"=���+
buO����9SU��2� �gn��� A��P��͝�P�GM%8��[�嚅H���M�:��DJ�V+B������S�N�&L���~���w�:$�M%zB��2�--�s�B��m#R�/V!����}d)�[����&㳘o"�BEş�������R�����Bh����s���\��o�,$ 9  ;�I��1��&ş�����.3(��g�uy��=8FÑ?~����PS5S��!*6�>ȭS!�� ��"�c����@懜�n�4����dV���2=���rbv�/�}�9��F�A�{�ބ�o��|�@77����GǇP��c�y+Q�}B�69&v�=� v�z����c�/d�ag�4��^)H�fv��ɧ,n��4�p`��Z�����#�|�~ۃ��iB�����IR��ė��AP���Pʻ�ixJ�iT�
���E����Y��4n:	d|�W0���|j}G#rL=b�����������a�m_,M,<Cx�@v�C�N��*�W�ؼ'�H6�0^1�=�ȚƇ�b�i�k�'"�C�:T �Bޣ�y,+wV�#�� g��k@�_��ᖿr[Y�
=P�Zl\'�:����5X�yh����_R����.��ۓ)�QbO�U�BN���4��9����(���^vЉ�B���B�׋hZk^-� �'
��M��"�=?I�IU�z����9'ِo{�p�M�.��)��mE��V�M�`]/b�*�S�ӉZ��0��C�Aڋ��ہ���\�C��a�8=��F��s�z$��B��R"D
���!Sm�х������o��xh?��vx�~��+�ZCv�ݨ8wlɃp��aJ�A�i/DT�lk���AR�-�Z����A�l�{��CHPy� ���M�X_�u�{� �G�B��!K��A�O�B�RJ���>9�=�*K`]0��[�瘷YrZ�:�,��'�D�u�`8_C�[�M�������&� �0_����A�o��֋�+�F��������d�]��?ī�t��>/�P'L�P#Fp^)X���{!�p^)�<�*�1->�8�E_����|B�*7��'�8���Țg��9�5�A���7���"�x��ʊtƼKP�t�z^1���%���� ,
�:�iV|Ћ��++Ԩ�^�n�XԸn�{t��+;�y��N�A��DZ�_����+9�m~H��=�Y��y����ٲjQ��gɻ9�� ��vL� �g]��y��-l��R�>��[Sx�/b��e'��9O]{��);�d����l="t�줒 t��R�О�C�8mMr� �� �K�&�O2)bs�\/�?�;��M�y�o'��^�ue_L7�$�1��a4�E;�$�����^6�N6)�F���rt핃�{� ]<�b�{����M
��MAN�e�;٤Ǟ�.���@���=��k>�?hx�_��KEN:IψS��i�d�M� �aRQR?d?G�j<餐7�z�#��M�H]�27���a"0�c�a��!F�Dc�v_��LH�A��w�Cv�x�����M�R��Qx��/�o\ě8�g�f��&9�iGq�2<t�I'�Zf*�'Ɛt�;<�Ws)�Ns���+;٤�w>g��tw�I1�%���Z�N:Ya��yD*S�lRD�H��);٤�IO�k��M�p`vA��:ӼL%���lBrb�#�Li�i V��e'�$��Ry]�]I%#��:�'E�L��C�j���c��$)hٲG^��N" ��z��b��A�"���&�<2 �熺��8c'��Sn�{;i��4�5{HӔ4R���h�$�"���hT�I"����nƶ>d��� B���$����]�V�I"��v�e�[�@\SL��B@���8�{b�D��l�ļ��X"�@�k��k�����VV.�@t��3bK]ْ������bS�d2�f�cy�-	+�:x1N�r�,���~i��p4��'���H��&��P����;�ZO�<L.e�qiZ�'.a��a8�/���R�h���ƖV> /��Wbq$�f��,�l�����x�[n�@�]�t����
w��1���}��x��򁼗�j�\	�q�l� ��]��@Fx�Xh���?�|4߱)��3~��Xsu��v��~!BF�)5��Y?H;H&�[K�>�<lW��1�<������Od���i�ڹ~�	ʎ핧����:>�\?qx[�eA�s�ı���!T�H5�F[k@��<U�d31�'4�3�G����bh2�2	�q_�~�ٛ��6��^�i_̑n>��_on�b��m�9���|$�tf&�ca��3������]�6������Db�wy�<fģ[/��%UsI!������.�Zb�H<TB("w�s�'-�$6�3�O$��%gƂ$�|.6�G�'�'�P/FK�w|7�J=���萡Y�16������ϭ�*���>���u�㑂>X��/k�\��>�N�Z��sw�Du�t Q�?Ȼ�l��PIhBy�:eM�������3����c#�'��N�^�B��n醼��d�U�,B��'�dy�:0��䁱��6>֭�bƓ��v+����Aj�=&��D[5��Y�#M��|�N��\.|� �H�� J(GB�@v�x����2�ĺW���])iB6�[B��>����:�q�	��7���#%�3������.ol�,g|� e��<��Z�8?�+=<C�U�y�0]�2���@Lfs
�a�C�e��Uڷ4��HM�w�a>���#7} �����%��>͡���_�(Gv�@޽C����-��I�����4��5!�kC�K7#G} �ߞ:$gW���q��Lw@?ix7��aϨ��&��w�qe�Y�4<�:9�}{�����R���|�'��%	��$�*�>ix~R� �4�9�6.h^�M�����uv��Or��=l9������/�d˦OR�|��-���H�*6�dyK9��$W�1�,���m���S̯�:֬�]�Rr�Ć�
{���"�?�[� j	���Z`�D9�V�q����0^��$[BSD��u�I�*�Y)"�iu�$WM��Ϫ���I�*f1��+�I����'�	��ql�.�iVNՄ��)�����E�׌v�I��P����t����wu��OS��O 6-�����~��.{�����"͡��<�j�E0��4�1&Q����K)�UU!6,X�︔�DU�DGO:�$�	q�i�P��DUhڻ�]DN��WJ�?2�O)      4   �   x�m�͊�@�ϕ�����$�^U��+�aE�қf�fZGѧWT��,�����*��K�c�x� ĈK�
aA��R��G�6���^�r*����\�t1Ϯ���Q{�RO�����@�m�}�[H���q];�B�\k��/]�=t�T������+�\�y�����%Uǋ�=�+5u��>�̅�2=��i�2�֮��~-�M��_��I"y������ n�O�      :      x������ � �      ;      x������ � �     