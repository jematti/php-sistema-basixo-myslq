PGDMP     "                    x            capacitacion    9.6.13    9.6.13     Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            T           1262    25046    capacitacion    DATABASE     �   CREATE DATABASE capacitacion WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE capacitacion;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            U           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            V           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25055 	   inscritos    TABLE     -  CREATE TABLE public.inscritos (
    ci character varying(50),
    cel integer,
    tel_dom integer,
    cel_ref integer,
    equipos character varying(150),
    formacion character varying(150),
    condicion_lab character varying(150),
    correo_per character varying(200),
    correo_umsalud character varying(200),
    correo_umsa character varying(200),
    funciones_resumen character varying(200),
    equipos_laboral character varying(200),
    patologia_base character varying(200),
    activo integer,
    activo_patologia character varying(3)
);
    DROP TABLE public.inscritos;
       public         postgres    false    3            �            1259    25047    personal    TABLE     �   CREATE TABLE public.personal (
    ci character varying(50) NOT NULL,
    nom_ap character varying(300) NOT NULL,
    cargo character varying(150),
    nivel character varying(50),
    repart_uni character varying(400)
);
    DROP TABLE public.personal;
       public         postgres    false    3            N          0    25055 	   inscritos 
   TABLE DATA               �   COPY public.inscritos (ci, cel, tel_dom, cel_ref, equipos, formacion, condicion_lab, correo_per, correo_umsalud, correo_umsa, funciones_resumen, equipos_laboral, patologia_base, activo, activo_patologia) FROM stdin;
    public       postgres    false    186          M          0    25047    personal 
   TABLE DATA               H   COPY public.personal (ci, nom_ap, cargo, nivel, repart_uni) FROM stdin;
    public       postgres    false    185   u       �           2606    25054    personal personal_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT personal_pkey PRIMARY KEY (ci);
 @   ALTER TABLE ONLY public.personal DROP CONSTRAINT personal_pkey;
       public         postgres    false    185    185            �           2606    25061    inscritos fktest    FK CONSTRAINT     m   ALTER TABLE ONLY public.inscritos
    ADD CONSTRAINT fktest FOREIGN KEY (ci) REFERENCES public.personal(ci);
 :   ALTER TABLE ONLY public.inscritos DROP CONSTRAINT fktest;
       public       postgres    false    2006    185    186            N   J   x�K��4�4�4�LT�LR�LV�LuH�M���K���Ls(�-N�)M�KM)�K��L�X�)
� �~�\1z\\\ �A�      M   e  x��Zێ�6}f ^I����h�J����6� X����~���%���n�ݙ���C�.�N��w�����۟��o��������/��o~��?�����Oi��RTL=�F��ϺS��fl�̫ƩA:-y�����8eK�,:��F�/�{�Ӎ�i~���E�1��K� �z�X���g�o�[�Vr�v�k����{�ˢ�E	|ڟtNc����`$}o�v����D��=^:�X��A6�I�FcW�W��2ZkGw�������5#Y�;�i���F���4+��-E"��r��5���-̾r���u#?,`����V��#�m%�X����|k�ֺA9�H^n��ew�'�L*�)*���7���{ ;�	�$��R�Ud�b��� ۲�Z*�pie ��7� �E�B���k=%U	�1g;��`Awz5*�e�R�9�[�X���l�"�b֨~P�bg[*����������H
d�uv���p��8�q�F`�V1|W���Z� MKduU���ξ�80\Ӭ�H���=0��E�g�Y��}X�VY�l9ҩ=GT9{�`�/�n�� h��U	&W#��q�7�E���у�>P��g�We�d��y�k<�A�Lzx��P��8N�2%o��Ϗ�;{*-�*����f-�q�|Mg~,"!�u��q�n�
�2�¡ E9onzh�o�o�ȋ,g~|���H|�(NË���VQT��؇h;����j�n��K�ߊ�Ơ��4i��\���@���}��N����΍
�X��\��U���B��9��Q���D~+��8I?��Ϡ���s���p����R6W��4HX$�jI�l?r|!�"M(�'�����-ѷ�(��+�c���I����0.Ř��E�5�jv�ʤBDQ�)4�C����Q������$rHz��)�  ��Ȧ�8'77n<�Y����R�YF�R5���)�N��%@����*�,�04�@e�a���>���QQe;Q��!;��hUDI�v�L�;�c�t�嵮a������+�?�Rd@��a��ᵱ���g_F	�$I�+�H�<��6���W�-	��q��Y^����;�2	I����1@_AQ����������a6v��twC����Kn���;2�G��:�����Bel� �rS��#�%A���W`RDcU��󡂭���s�BF����IO
�����U��u�$9!'I�d��P㔆��d�=�&�d[$�1�mGt/-�&�x{�$��$�`�8�QR� �G8�O��B�D��ݿ�ɪv��FCC��$'�B��D�Fo���#[�4F�����2���D�o�V���U	�$��,s�
p��Ō���-I��B�;�:�[�F�x��--�� 6UFݩ�)[	��]��d��ď�(�>7cO�ы��ۅ�5�6<&s|7/j�n�<�C���s���!�"�I{}������f=�-���Vn��vӬ������T�j���E\��c�[��+����Ќ��09��U�P�{h�[A|e�e\Q�F�C9hR�fQ�܇K�4��?�X ?ܩ�ӑW�L\]�_�ĊH<�sZ�)ReN�5�3�\�3��M�V`��#w�u�Y�)X("��>�����.�i^��&5l�b�@+�A����扒�<����챽H9}5��T�s	b$��}�r�P!���%4�(� ��/�3�;�D��D#�1�$��!�C�Eo�[�˃����(*F:��S�����A�L�wߪ;X�҇�P`Z1���R�J#!��]����(�!�*.�gD	�c������q�^�K�2J�;hP�I�!9h����a(��y���yMm��II�i\"`[lsIh��QP0�A: c��@҆��9�8�O�^�њ��vF�0:���n�m!���ٔ�q��4"����' rh�I*a~k�t:DbP�7��:���!A�fU�&��F��|%k�m[Y��
�!��Ĺ�.�J�Yu�X�̛���e����䋄Dyfqv*�f;�l8��P�b5�>��NUEө]�K�	�J�̕��J �ʲ������i ��J�	dq	-4�izh�rd�0U[�-%�#OYA��f;Ia�I}���;҉�,�zP_G7O16l��fJ�}ÑG���5;��eĴ��"J���W�����5Z��i<�2�b��81���z�=�!o�B��A~)���L��WS�i�X�@�1���'Y���`�J��f��^_����qM
/���/�ۚC{��>u���Y��;CO�t�6�]��*L�����K�+x��s
�� ��9���>�v��a��ȠǈS�$���>�%�'nn��τq�	~\'-�Ph^�Ҝ�4g��t-�.�Wdq
���G.�Cf�C+B���t� C��JR����]H*�q���c�g2�xe@|�~s��>����R���ċ��-=�YF�����Hy��{=���z0/QB���6�f�鍥�r�5{�7�i~M�u}y�� ?}M�U$Z��aD������w���x�A9Q�ne'�4�ylA�?H����,�ˊ.>H���;hh�Pk��g�%\b(���aVg�N_nV^ k�O-_����Gxn���fTҵ�|�E�FKnX�I�}~�4�JT���-�%L=���?k��](��;�N�]�ˇ�K�RTQ4ߦn�a���t_tA]?��H����U5�0&��g�TN+���ɵ�$�
t�$�q��|r�8Ml����1��"4<�S ���a�}%II�<�H� 6���)�P�[J"A�P���9�Ĭ���:
�V.���:)�w�E41$4R�$/I��"�{b��)�����S�Z�����"V|��*��(#�2�j��ǟ}���Z�o����*��~� �٩�;E���p��x��
%�t!a�h��`�5��w�f~���1�<����S�9������8�Zy=߈o��֎;��2����1j���(��[�iNp~�~�u��k��w�� =�uT���U4!g!<��~G#]�k�n�L�a6����w��.d!�X ����\FՇ�֓C?����������     