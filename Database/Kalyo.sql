PGDMP     %    	                 {            kalyo    15.4    15.4 V    f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            i           1262    41438    kalyo    DATABASE     �   CREATE DATABASE kalyo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE kalyo;
                postgres    false            �            1259    41650    cart    TABLE     {   CREATE TABLE public.cart (
    cartid integer NOT NULL,
    userid integer,
    productid integer,
    quantity integer
);
    DROP TABLE public.cart;
       public         heap    postgres    false            �            1259    41649    cart_cartid_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_cartid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cart_cartid_seq;
       public          postgres    false    223            j           0    0    cart_cartid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cart_cartid_seq OWNED BY public.cart.cartid;
          public          postgres    false    222            �            1259    41610 
   categories    TABLE     u   CREATE TABLE public.categories (
    categoryid integer NOT NULL,
    categoryname character varying(50) NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    41609    categories_categoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categories_categoryid_seq;
       public          postgres    false    219            k           0    0    categories_categoryid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categories_categoryid_seq OWNED BY public.categories.categoryid;
          public          postgres    false    218            �            1259    41721 	   followers    TABLE     �   CREATE TABLE public.followers (
    followerid integer NOT NULL,
    userid integer,
    sellerid integer,
    followeruserid integer
);
    DROP TABLE public.followers;
       public         heap    postgres    false            �            1259    41720    followers_followerid_seq    SEQUENCE     �   CREATE SEQUENCE public.followers_followerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.followers_followerid_seq;
       public          postgres    false    231            l           0    0    followers_followerid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.followers_followerid_seq OWNED BY public.followers.followerid;
          public          postgres    false    230            �            1259    41667    orders    TABLE       CREATE TABLE public.orders (
    orderid integer NOT NULL,
    userid integer,
    cartid integer,
    address character varying(255),
    shippingoption character varying(50),
    paymentmethod character varying(50),
    additionaloffer character varying(255)
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    41666    orders_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.orders_orderid_seq;
       public          postgres    false    225            m           0    0    orders_orderid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.orders_orderid_seq OWNED BY public.orders.orderid;
          public          postgres    false    224            �            1259    41629    products    TABLE       CREATE TABLE public.products (
    productid integer NOT NULL,
    name character varying(100) NOT NULL,
    ratings numeric(3,2) DEFAULT 0.0,
    categoryid integer,
    sellerid integer,
    photo bytea,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    41628    products_productid_seq    SEQUENCE     �   CREATE SEQUENCE public.products_productid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.products_productid_seq;
       public          postgres    false    221            n           0    0    products_productid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.products_productid_seq OWNED BY public.products.productid;
          public          postgres    false    220            �            1259    41686    ratings    TABLE     �   CREATE TABLE public.ratings (
    ratingid integer NOT NULL,
    productid integer,
    userid integer,
    rate integer,
    comment character varying(255)
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    41685    ratings_ratingid_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_ratingid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ratings_ratingid_seq;
       public          postgres    false    227            o           0    0    ratings_ratingid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ratings_ratingid_seq OWNED BY public.ratings.ratingid;
          public          postgres    false    226            �            1259    41597    sellers    TABLE     "  CREATE TABLE public.sellers (
    sellerid integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    fullname character varying(100) NOT NULL,
    sellerinfo text NOT NULL,
    photo bytea
);
    DROP TABLE public.sellers;
       public         heap    postgres    false            �            1259    41596    sellers_sellerid_seq    SEQUENCE     �   CREATE SEQUENCE public.sellers_sellerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sellers_sellerid_seq;
       public          postgres    false    217            p           0    0    sellers_sellerid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sellers_sellerid_seq OWNED BY public.sellers.sellerid;
          public          postgres    false    216            �            1259    41703    transactions    TABLE     �   CREATE TABLE public.transactions (
    transactionid integer NOT NULL,
    userid integer,
    orderid integer,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.transactions;
       public         heap    postgres    false            �            1259    41702    transactions_transactionid_seq    SEQUENCE     �   CREATE SEQUENCE public.transactions_transactionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.transactions_transactionid_seq;
       public          postgres    false    229            q           0    0    transactions_transactionid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.transactions_transactionid_seq OWNED BY public.transactions.transactionid;
          public          postgres    false    228            �            1259    41584    users    TABLE        CREATE TABLE public.users (
    userid integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    fullname character varying(100) NOT NULL,
    photo bytea
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    41583    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public          postgres    false    215            r           0    0    users_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;
          public          postgres    false    214            �           2604    41653    cart cartid    DEFAULT     j   ALTER TABLE ONLY public.cart ALTER COLUMN cartid SET DEFAULT nextval('public.cart_cartid_seq'::regclass);
 :   ALTER TABLE public.cart ALTER COLUMN cartid DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    41613    categories categoryid    DEFAULT     ~   ALTER TABLE ONLY public.categories ALTER COLUMN categoryid SET DEFAULT nextval('public.categories_categoryid_seq'::regclass);
 D   ALTER TABLE public.categories ALTER COLUMN categoryid DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    41724    followers followerid    DEFAULT     |   ALTER TABLE ONLY public.followers ALTER COLUMN followerid SET DEFAULT nextval('public.followers_followerid_seq'::regclass);
 C   ALTER TABLE public.followers ALTER COLUMN followerid DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    41670    orders orderid    DEFAULT     p   ALTER TABLE ONLY public.orders ALTER COLUMN orderid SET DEFAULT nextval('public.orders_orderid_seq'::regclass);
 =   ALTER TABLE public.orders ALTER COLUMN orderid DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    41632    products productid    DEFAULT     x   ALTER TABLE ONLY public.products ALTER COLUMN productid SET DEFAULT nextval('public.products_productid_seq'::regclass);
 A   ALTER TABLE public.products ALTER COLUMN productid DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    41689    ratings ratingid    DEFAULT     t   ALTER TABLE ONLY public.ratings ALTER COLUMN ratingid SET DEFAULT nextval('public.ratings_ratingid_seq'::regclass);
 ?   ALTER TABLE public.ratings ALTER COLUMN ratingid DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    41600    sellers sellerid    DEFAULT     t   ALTER TABLE ONLY public.sellers ALTER COLUMN sellerid SET DEFAULT nextval('public.sellers_sellerid_seq'::regclass);
 ?   ALTER TABLE public.sellers ALTER COLUMN sellerid DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    41706    transactions transactionid    DEFAULT     �   ALTER TABLE ONLY public.transactions ALTER COLUMN transactionid SET DEFAULT nextval('public.transactions_transactionid_seq'::regclass);
 I   ALTER TABLE public.transactions ALTER COLUMN transactionid DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    41587    users userid    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    214    215    215            [          0    41650    cart 
   TABLE DATA           C   COPY public.cart (cartid, userid, productid, quantity) FROM stdin;
    public          postgres    false    223   �f       W          0    41610 
   categories 
   TABLE DATA           >   COPY public.categories (categoryid, categoryname) FROM stdin;
    public          postgres    false    219   �f       c          0    41721 	   followers 
   TABLE DATA           Q   COPY public.followers (followerid, userid, sellerid, followeruserid) FROM stdin;
    public          postgres    false    231   ;g       ]          0    41667    orders 
   TABLE DATA           r   COPY public.orders (orderid, userid, cartid, address, shippingoption, paymentmethod, additionaloffer) FROM stdin;
    public          postgres    false    225   �g       Y          0    41629    products 
   TABLE DATA           f   COPY public.products (productid, name, ratings, categoryid, sellerid, photo, "timestamp") FROM stdin;
    public          postgres    false    221   yh       _          0    41686    ratings 
   TABLE DATA           M   COPY public.ratings (ratingid, productid, userid, rate, comment) FROM stdin;
    public          postgres    false    227   �j       U          0    41597    sellers 
   TABLE DATA           c   COPY public.sellers (sellerid, username, password, email, fullname, sellerinfo, photo) FROM stdin;
    public          postgres    false    217   �k       a          0    41703    transactions 
   TABLE DATA           S   COPY public.transactions (transactionid, userid, orderid, "timestamp") FROM stdin;
    public          postgres    false    229   m       S          0    41584    users 
   TABLE DATA           S   COPY public.users (userid, username, password, email, fullname, photo) FROM stdin;
    public          postgres    false    215   tm       s           0    0    cart_cartid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cart_cartid_seq', 10, true);
          public          postgres    false    222            t           0    0    categories_categoryid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.categories_categoryid_seq', 3, true);
          public          postgres    false    218            u           0    0    followers_followerid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.followers_followerid_seq', 10, true);
          public          postgres    false    230            v           0    0    orders_orderid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.orders_orderid_seq', 10, true);
          public          postgres    false    224            w           0    0    products_productid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.products_productid_seq', 30, true);
          public          postgres    false    220            x           0    0    ratings_ratingid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ratings_ratingid_seq', 10, true);
          public          postgres    false    226            y           0    0    sellers_sellerid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sellers_sellerid_seq', 10, true);
          public          postgres    false    216            z           0    0    transactions_transactionid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.transactions_transactionid_seq', 10, true);
          public          postgres    false    228            {           0    0    users_userid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_userid_seq', 10, true);
          public          postgres    false    214            �           2606    41655    cart cart_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cartid);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    223            �           2606    41615    categories categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (categoryid);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    219            �           2606    41726    followers followers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.followers
    ADD CONSTRAINT followers_pkey PRIMARY KEY (followerid);
 B   ALTER TABLE ONLY public.followers DROP CONSTRAINT followers_pkey;
       public            postgres    false    231            �           2606    41730 /   followers followers_sellerid_followeruserid_key 
   CONSTRAINT     ~   ALTER TABLE ONLY public.followers
    ADD CONSTRAINT followers_sellerid_followeruserid_key UNIQUE (sellerid, followeruserid);
 Y   ALTER TABLE ONLY public.followers DROP CONSTRAINT followers_sellerid_followeruserid_key;
       public            postgres    false    231    231            �           2606    41728 -   followers followers_userid_followeruserid_key 
   CONSTRAINT     z   ALTER TABLE ONLY public.followers
    ADD CONSTRAINT followers_userid_followeruserid_key UNIQUE (userid, followeruserid);
 W   ALTER TABLE ONLY public.followers DROP CONSTRAINT followers_userid_followeruserid_key;
       public            postgres    false    231    231            �           2606    41674    orders orders_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    225            �           2606    41638    products products_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (productid);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    221            �           2606    41691    ratings ratings_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (ratingid);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    227            �           2606    41608    sellers sellers_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.sellers DROP CONSTRAINT sellers_email_key;
       public            postgres    false    217            �           2606    41604    sellers sellers_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (sellerid);
 >   ALTER TABLE ONLY public.sellers DROP CONSTRAINT sellers_pkey;
       public            postgres    false    217            �           2606    41606    sellers sellers_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.sellers DROP CONSTRAINT sellers_username_key;
       public            postgres    false    217            �           2606    41709    transactions transactions_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (transactionid);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public            postgres    false    229            �           2606    41595    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    215            �           2606    41591    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �           2606    41593    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    215            �           2606    41661    cart cart_productid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid);
 B   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_productid_fkey;
       public          postgres    false    221    3240    223            �           2606    41656    cart cart_userid_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);
 ?   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_userid_fkey;
       public          postgres    false    223    3228    215            �           2606    41741 '   followers followers_followeruserid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.followers
    ADD CONSTRAINT followers_followeruserid_fkey FOREIGN KEY (followeruserid) REFERENCES public.users(userid);
 Q   ALTER TABLE ONLY public.followers DROP CONSTRAINT followers_followeruserid_fkey;
       public          postgres    false    3228    231    215            �           2606    41736 !   followers followers_sellerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.followers
    ADD CONSTRAINT followers_sellerid_fkey FOREIGN KEY (sellerid) REFERENCES public.sellers(sellerid);
 K   ALTER TABLE ONLY public.followers DROP CONSTRAINT followers_sellerid_fkey;
       public          postgres    false    3234    231    217            �           2606    41731    followers followers_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.followers
    ADD CONSTRAINT followers_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);
 I   ALTER TABLE ONLY public.followers DROP CONSTRAINT followers_userid_fkey;
       public          postgres    false    231    3228    215            �           2606    41680    orders orders_cartid_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_cartid_fkey FOREIGN KEY (cartid) REFERENCES public.cart(cartid);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_cartid_fkey;
       public          postgres    false    3242    223    225            �           2606    41675    orders orders_userid_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_userid_fkey;
       public          postgres    false    225    3228    215            �           2606    41639 !   products products_categoryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.categories(categoryid);
 K   ALTER TABLE ONLY public.products DROP CONSTRAINT products_categoryid_fkey;
       public          postgres    false    219    3238    221            �           2606    41644    products products_sellerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_sellerid_fkey FOREIGN KEY (sellerid) REFERENCES public.sellers(sellerid);
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT products_sellerid_fkey;
       public          postgres    false    217    221    3234            �           2606    41692    ratings ratings_productid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid);
 H   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_productid_fkey;
       public          postgres    false    227    221    3240            �           2606    41697    ratings ratings_userid_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);
 E   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_userid_fkey;
       public          postgres    false    227    3228    215            �           2606    41715 &   transactions transactions_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);
 P   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_orderid_fkey;
       public          postgres    false    3244    229    225            �           2606    41710 %   transactions transactions_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);
 O   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_userid_fkey;
       public          postgres    false    229    3228    215            [   E   x����@�w;�x�"�#�U�2˘I�i����?��E��f�b�t2=<8���;�{I� ,��      W   1   x�3�t���,���Wp��O�2B�s�K22�ҹ��Ċ�J��b���� C/�      c   8   x�%���0 ����N/�_�Ќ�R�):]���T�b���p�E��� ��      ]   �   x���MN�@�מS���֓v*bۍ�8��0yf��%7�J��L�XAS}^Y���s	��9�	V�A9�ʍD������Fl�b+�E�7�:M��\A�%�wh%N��5y�R�p�V���:���\C�r�~�mh�P���O.�	Ǉ�C�]G��d*ɟX~:q��X�ͬ��#���gY����	ó�;Ȝ�i)�{��ex>� �%g�'����-�R�Sg�q{i����6      Y   q  x����n�0���)�*JlB��
�ݪ*t��2	�6rB����8n���V���7���yRv�7��^j�f�,a)�^�O��I9�!Inq��S��"I�%ń�'Y7F�B��@�@>
�QZP`�~31-(��{�$<≚����3[Q#�Ն�K�ph6���BUJ�HP��8��-]f�ǁ�=`knz5wT1N��^uM�mK�+T�C4�����#��q&%��j�:���<bH�M�2/x>��N٪3��ổ]��OB\����x�xĐ��G)�Z^a{�5��~<<�Jgl�V�P�#�8U֨��r�{xD��̜m��h`m��ast����B>g+C�5��4�-�O󮽻<bUX�b��xEaxĬ�,�<U�����������������ڻ��	H�B���y��Z�;�� b��2O��hΖxV`��V���{X6�$;�����#xB�S~G���;��b-O�w>�0(�������_�(�ek�>~s0(A�i��N⛄�	���P�,*�4H�x0��K/u���G)b%
��z�������0�K�3��C�Fw�^.t��sW"���4�5�)�֍�gwtx9�Q�+�:�L&���      _   �   x�5��n�0Dg�+�("ي��h�Nݺu$�!"K�%�ߗP���=Zdἑ���R�C#��>ؓ
TxN�0A/:�Խ��u��ߢ���9�ҡm����S���Z���x=�Q�gr��E�7w�eq�\y���Q�߄D�#Ӷ�fx�?�V�on�4�	�'������YQ�?�L�<_�6�yY(
�����*�C�      U   .  x�m�͎� �5}����;g����Y���[{
���-"VmNr���6Ă`������s����S=��Y�'��P�F�jm���T �s���E��^���*FE}W�{j�Z��-cq�a)+b� ?Trfh��蠷�Z��*�RV�Nj0��8�T�Ӎ����:���"� WC9:T�K3�Ρ��n"��Д���>o�A �a��6��������!Zj;���bg�9)+9G�w�]'�}���_���p��LY	<��^���	�����7u���'-���f�u~_\����mVU�?���      a   T   x�}ʻ�0��T9�G0�k��:� �y��W��|��N���3G�5��O���D�υ��?���S���i"�0dA�      S     x�U��j�0 ��������▔Ҕ�^sY�8�R�"��뫕�F�a``��,+��s?Ǝ���盢�����x&���~��GQvºiג9�,=�_���qX�ђ����dN6K��G�T��_��۸��ʺw����R��<}{ReY�s���Q����)����L���1'��}T╬ˤ���qT��v�����!N�G� g{P�Ʀi֌�]�h��2�� �j��%��jB|�M� E����8ʬ{a#ztwk�<��     