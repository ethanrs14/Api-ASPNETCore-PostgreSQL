PGDMP         5            
    u            DBTest    9.6.5    9.6.5     W	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            X	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            Y	           1262    16414    DBTest    DATABASE     f   CREATE DATABASE "DBTest" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE "DBTest";
             test    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            Z	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12655    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            [	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16417    persons    TABLE     \   CREATE TABLE persons (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.persons;
       public         test    false    3            �            1259    16415    persons_id_seq    SEQUENCE     p   CREATE SEQUENCE persons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persons_id_seq;
       public       test    false    186    3            \	           0    0    persons_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE persons_id_seq OWNED BY persons.id;
            public       test    false    185            �           2604    16420 
   persons id    DEFAULT     Z   ALTER TABLE ONLY persons ALTER COLUMN id SET DEFAULT nextval('persons_id_seq'::regclass);
 9   ALTER TABLE public.persons ALTER COLUMN id DROP DEFAULT;
       public       test    false    186    185    186            T	          0    16417    persons 
   TABLE DATA               $   COPY persons (id, name) FROM stdin;
    public       test    false    186   �       ]	           0    0    persons_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('persons_id_seq', 3, true);
            public       test    false    185            �           2606    16422    persons persons_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.persons DROP CONSTRAINT persons_pkey;
       public         test    false    186    186            T	      x�3�,I-.1�2�F\�`ژ+F��� w`N     