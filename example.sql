PGDMP                      |            example    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    example    DATABASE     {   CREATE DATABASE example WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE example;
                postgres    false            �            1259    24582    Client    TABLE     �   CREATE TABLE public."Client" (
    client_id integer NOT NULL,
    name character varying(250) NOT NULL,
    surname character varying(250) NOT NULL,
    city character varying(250) NOT NULL
);
    DROP TABLE public."Client";
       public         heap    postgres    false            �            1259    24589    Order    TABLE     �   CREATE TABLE public."Order" (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    count integer NOT NULL,
    client_id integer NOT NULL
);
    DROP TABLE public."Order";
       public         heap    postgres    false            �            1259    24577    Product    TABLE     �   CREATE TABLE public."Product" (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    count integer NOT NULL,
    price numeric(10,2) NOT NULL
);
    DROP TABLE public."Product";
       public         heap    postgres    false            �          0    24582    Client 
   TABLE DATA                 public          postgres    false    216   +       �          0    24589    Order 
   TABLE DATA                 public          postgres    false    217   �       �          0    24577    Product 
   TABLE DATA                 public          postgres    false    215   6       $           2606    24588    Client Client_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Client"
    ADD CONSTRAINT "Client_pkey" PRIMARY KEY (client_id);
 @   ALTER TABLE ONLY public."Client" DROP CONSTRAINT "Client_pkey";
       public            postgres    false    216            &           2606    24593    Order Order_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (order_id);
 >   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "Order_pkey";
       public            postgres    false    217            "           2606    24581    Product Product_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (product_id);
 B   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "Product_pkey";
       public            postgres    false    215            '           2606    24599    Order client_id    FK CONSTRAINT     |   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT client_id FOREIGN KEY (client_id) REFERENCES public."Client"(client_id);
 ;   ALTER TABLE ONLY public."Order" DROP CONSTRAINT client_id;
       public          postgres    false    216    4644    217            (           2606    24594    Order product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES public."Product"(product_id);
 <   ALTER TABLE ONLY public."Order" DROP CONSTRAINT product_id;
       public          postgres    false    217    215    4642            �   �   x���v
Q���W((M��L�Sr��L�+QRs�	u���0�QP�0���[/��xaÅ��\lP�θ�	��wa�?��>��] QuM�^#$U`/츰���gޅ= =�� ��@6\l���j��P�{.� ��m����Zsqq �'f�      �   Q   x���v
Q���W((M��L�S�/JI-RRs�	u���0�Q� cM �HG��a\c�P�PӚ˓�L��A��� ��      �   ]   x���v
Q���W((M��L�S
(�O)M.QRs�	u���0�QP���bӅ}v��(�(�h� �����!��@l
����� ?|     