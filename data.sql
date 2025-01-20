PGDMP      7                 }            ilift    17.2    17.2 p    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16556    ilift    DATABASE     x   CREATE DATABASE ilift WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE ilift;
                     postgres    false            �            1259    17294    City    TABLE     �   CREATE TABLE public."City" (
    id text NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."City";
       public         heap r       postgres    false            �            1259    17374    ExerciceMuscleGroups    TABLE       CREATE TABLE public."ExerciceMuscleGroups" (
    "exercicesId" text NOT NULL,
    "musculeGroupsId" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
 *   DROP TABLE public."ExerciceMuscleGroups";
       public         heap r       postgres    false            �            1259    17326    ExerciceResults    TABLE       CREATE TABLE public."ExerciceResults" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "exerciceId" text NOT NULL,
    "userId" text NOT NULL
);
 %   DROP TABLE public."ExerciceResults";
       public         heap r       postgres    false            �            1259    17318 	   Exercices    TABLE     #  CREATE TABLE public."Exercices" (
    id text NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "position" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."Exercices";
       public         heap r       postgres    false            �            1259    17406    ExercicesResultsPosts    TABLE       CREATE TABLE public."ExercicesResultsPosts" (
    "postsId" text NOT NULL,
    "exercicesResultsId" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
 +   DROP TABLE public."ExercicesResultsPosts";
       public         heap r       postgres    false            �            1259    17544    Follows    TABLE     e   CREATE TABLE public."Follows" (
    "followedById" text NOT NULL,
    "followingId" text NOT NULL
);
    DROP TABLE public."Follows";
       public         heap r       postgres    false            �            1259    17334    MuscleGroups    TABLE     �   CREATE TABLE public."MuscleGroups" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    name text NOT NULL
);
 "   DROP TABLE public."MuscleGroups";
       public         heap r       postgres    false            �            1259    17561    Notifications    TABLE     +  CREATE TABLE public."Notifications" (
    id text NOT NULL,
    "userId" text NOT NULL,
    type text NOT NULL,
    content text NOT NULL,
    "isRead" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "senderId" text NOT NULL
);
 #   DROP TABLE public."Notifications";
       public         heap r       postgres    false            �            1259    34263    PasswordReset    TABLE     �   CREATE TABLE public."PasswordReset" (
    id text NOT NULL,
    token text NOT NULL,
    "userId" text NOT NULL,
    "expiresAt" timestamp(3) without time zone NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 #   DROP TABLE public."PasswordReset";
       public         heap r       postgres    false            �            1259    17286    Posts    TABLE     8  CREATE TABLE public."Posts" (
    id text NOT NULL,
    photo text,
    content text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "authorId" text NOT NULL,
    "isValid" boolean DEFAULT true NOT NULL
);
    DROP TABLE public."Posts";
       public         heap r       postgres    false            �            1259    17302    Programs    TABLE     V  CREATE TABLE public."Programs" (
    id text NOT NULL,
    name text NOT NULL,
    description text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "authorId" text NOT NULL,
    "position" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."Programs";
       public         heap r       postgres    false            �            1259    23113    RefreshToken    TABLE     E  CREATE TABLE public."RefreshToken" (
    id text NOT NULL,
    "userId" text NOT NULL,
    token text NOT NULL,
    "isValid" boolean DEFAULT true NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 "   DROP TABLE public."RefreshToken";
       public         heap r       postgres    false            �            1259    17398    Role    TABLE     �   CREATE TABLE public."Role" (
    id text NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Role";
       public         heap r       postgres    false            �            1259    17590    Sets    TABLE       CREATE TABLE public."Sets" (
    id text NOT NULL,
    reps integer NOT NULL,
    weight integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "exerciceResultId" text NOT NULL
);
    DROP TABLE public."Sets";
       public         heap r       postgres    false            �            1259    17603    Tags    TABLE     �   CREATE TABLE public."Tags" (
    id text NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Tags";
       public         heap r       postgres    false            �            1259    17611 	   TagsPosts    TABLE       CREATE TABLE public."TagsPosts" (
    "postId" text NOT NULL,
    "tagId" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."TagsPosts";
       public         heap r       postgres    false            �            1259    17278    User    TABLE     �  CREATE TABLE public."User" (
    id text NOT NULL,
    pseudo text NOT NULL,
    email text NOT NULL,
    "passwordHash" text NOT NULL,
    bio text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "profilePhoto" text,
    "roleId" text,
    "cityId" text,
    "isBan" boolean DEFAULT false NOT NULL,
    "isOnboardingCompleted" boolean DEFAULT false NOT NULL,
    "onboardingStep" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."User";
       public         heap r       postgres    false            �            1259    17366    UsersComments    TABLE     	  CREATE TABLE public."UsersComments" (
    "postsId" text NOT NULL,
    "usersId" text NOT NULL,
    content text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
 #   DROP TABLE public."UsersComments";
       public         heap r       postgres    false            �            1259    17350 
   UsersLikes    TABLE     �   CREATE TABLE public."UsersLikes" (
    "postsId" text NOT NULL,
    "usersId" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
     DROP TABLE public."UsersLikes";
       public         heap r       postgres    false            �            1259    17390    UsersProgramsFollows    TABLE       CREATE TABLE public."UsersProgramsFollows" (
    "programId" text NOT NULL,
    "userId" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 *   DROP TABLE public."UsersProgramsFollows";
       public         heap r       postgres    false            �            1259    17358    UsersShares    TABLE     �   CREATE TABLE public."UsersShares" (
    "postsId" text NOT NULL,
    "usersId" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 !   DROP TABLE public."UsersShares";
       public         heap r       postgres    false            �            1259    17310    Workouts    TABLE     ]  CREATE TABLE public."Workouts" (
    id text NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "programId" text NOT NULL,
    "userId" text NOT NULL,
    "position" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."Workouts";
       public         heap r       postgres    false            �            1259    17382    WorkoutsExercises    TABLE     <  CREATE TABLE public."WorkoutsExercises" (
    "workoutId" text NOT NULL,
    "exerciceId" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "position" integer DEFAULT 0 NOT NULL
);
 '   DROP TABLE public."WorkoutsExercises";
       public         heap r       postgres    false            �            1259    17092    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap r       postgres    false            �          0    17294    City 
   TABLE DATA           D   COPY public."City" (id, name, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    220   ��       �          0    17374    ExerciceMuscleGroups 
   TABLE DATA           l   COPY public."ExerciceMuscleGroups" ("exercicesId", "musculeGroupsId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    229   D�       �          0    17326    ExerciceResults 
   TABLE DATA           a   COPY public."ExerciceResults" (id, "createdAt", "updatedAt", "exerciceId", "userId") FROM stdin;
    public               postgres    false    224   	�       �          0    17318 	   Exercices 
   TABLE DATA           U   COPY public."Exercices" (id, name, "createdAt", "updatedAt", "position") FROM stdin;
    public               postgres    false    223   "�       �          0    17406    ExercicesResultsPosts 
   TABLE DATA           l   COPY public."ExercicesResultsPosts" ("postsId", "exercicesResultsId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    233   ��       �          0    17544    Follows 
   TABLE DATA           B   COPY public."Follows" ("followedById", "followingId") FROM stdin;
    public               postgres    false    234   ��       �          0    17334    MuscleGroups 
   TABLE DATA           L   COPY public."MuscleGroups" (id, "createdAt", "updatedAt", name) FROM stdin;
    public               postgres    false    225   #�       �          0    17561    Notifications 
   TABLE DATA           i   COPY public."Notifications" (id, "userId", type, content, "isRead", "createdAt", "senderId") FROM stdin;
    public               postgres    false    235   �       �          0    34263    PasswordReset 
   TABLE DATA           X   COPY public."PasswordReset" (id, token, "userId", "expiresAt", "createdAt") FROM stdin;
    public               postgres    false    240   ƹ       �          0    17286    Posts 
   TABLE DATA           f   COPY public."Posts" (id, photo, content, "createdAt", "updatedAt", "authorId", "isValid") FROM stdin;
    public               postgres    false    219   �       �          0    17302    Programs 
   TABLE DATA           m   COPY public."Programs" (id, name, description, "createdAt", "updatedAt", "authorId", "position") FROM stdin;
    public               postgres    false    221   ��       �          0    23113    RefreshToken 
   TABLE DATA           b   COPY public."RefreshToken" (id, "userId", token, "isValid", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    239   ��       �          0    17398    Role 
   TABLE DATA           D   COPY public."Role" (id, name, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    232   ��       �          0    17590    Sets 
   TABLE DATA           `   COPY public."Sets" (id, reps, weight, "createdAt", "updatedAt", "exerciceResultId") FROM stdin;
    public               postgres    false    236   ��       �          0    17603    Tags 
   TABLE DATA           D   COPY public."Tags" (id, name, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    237   \�       �          0    17611 	   TagsPosts 
   TABLE DATA           R   COPY public."TagsPosts" ("postId", "tagId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    238   ��       �          0    17278    User 
   TABLE DATA           �   COPY public."User" (id, pseudo, email, "passwordHash", bio, "createdAt", "updatedAt", "profilePhoto", "roleId", "cityId", "isBan", "isOnboardingCompleted", "onboardingStep") FROM stdin;
    public               postgres    false    218   <�       �          0    17366    UsersComments 
   TABLE DATA           b   COPY public."UsersComments" ("postsId", "usersId", content, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    228   	�       �          0    17350 
   UsersLikes 
   TABLE DATA           I   COPY public."UsersLikes" ("postsId", "usersId", "createdAt") FROM stdin;
    public               postgres    false    226   ��       �          0    17390    UsersProgramsFollows 
   TABLE DATA           a   COPY public."UsersProgramsFollows" ("programId", "userId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    231   	�       �          0    17358    UsersShares 
   TABLE DATA           J   COPY public."UsersShares" ("postsId", "usersId", "createdAt") FROM stdin;
    public               postgres    false    227   &�       �          0    17310    Workouts 
   TABLE DATA           k   COPY public."Workouts" (id, name, "createdAt", "updatedAt", "programId", "userId", "position") FROM stdin;
    public               postgres    false    222   B�       �          0    17382    WorkoutsExercises 
   TABLE DATA           n   COPY public."WorkoutsExercises" ("workoutId", "exerciceId", "createdAt", "updatedAt", "position") FROM stdin;
    public               postgres    false    230   ��       �          0    17092    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public               postgres    false    217   ��       �           2606    17301    City City_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."City"
    ADD CONSTRAINT "City_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."City" DROP CONSTRAINT "City_pkey";
       public                 postgres    false    220            �           2606    17381 .   ExerciceMuscleGroups ExerciceMuscleGroups_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ExerciceMuscleGroups"
    ADD CONSTRAINT "ExerciceMuscleGroups_pkey" PRIMARY KEY ("musculeGroupsId", "exercicesId");
 \   ALTER TABLE ONLY public."ExerciceMuscleGroups" DROP CONSTRAINT "ExerciceMuscleGroups_pkey";
       public                 postgres    false    229    229            �           2606    17333 $   ExerciceResults ExerciceResults_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."ExerciceResults"
    ADD CONSTRAINT "ExerciceResults_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."ExerciceResults" DROP CONSTRAINT "ExerciceResults_pkey";
       public                 postgres    false    224                        2606    17413 0   ExercicesResultsPosts ExercicesResultsPosts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ExercicesResultsPosts"
    ADD CONSTRAINT "ExercicesResultsPosts_pkey" PRIMARY KEY ("exercicesResultsId", "postsId");
 ^   ALTER TABLE ONLY public."ExercicesResultsPosts" DROP CONSTRAINT "ExercicesResultsPosts_pkey";
       public                 postgres    false    233    233            �           2606    17325    Exercices Exercices_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Exercices"
    ADD CONSTRAINT "Exercices_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Exercices" DROP CONSTRAINT "Exercices_pkey";
       public                 postgres    false    223                       2606    17550    Follows Follows_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."Follows"
    ADD CONSTRAINT "Follows_pkey" PRIMARY KEY ("followingId", "followedById");
 B   ALTER TABLE ONLY public."Follows" DROP CONSTRAINT "Follows_pkey";
       public                 postgres    false    234    234            �           2606    17341    MuscleGroups MuscleGroups_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."MuscleGroups"
    ADD CONSTRAINT "MuscleGroups_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."MuscleGroups" DROP CONSTRAINT "MuscleGroups_pkey";
       public                 postgres    false    225                       2606    17569     Notifications Notifications_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_pkey";
       public                 postgres    false    235                       2606    34270     PasswordReset PasswordReset_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."PasswordReset"
    ADD CONSTRAINT "PasswordReset_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."PasswordReset" DROP CONSTRAINT "PasswordReset_pkey";
       public                 postgres    false    240            �           2606    17293    Posts Posts_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Posts"
    ADD CONSTRAINT "Posts_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Posts" DROP CONSTRAINT "Posts_pkey";
       public                 postgres    false    219            �           2606    17309    Programs Programs_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Programs"
    ADD CONSTRAINT "Programs_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Programs" DROP CONSTRAINT "Programs_pkey";
       public                 postgres    false    221                       2606    23121    RefreshToken RefreshToken_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."RefreshToken"
    ADD CONSTRAINT "RefreshToken_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."RefreshToken" DROP CONSTRAINT "RefreshToken_pkey";
       public                 postgres    false    239            �           2606    17405    Role Role_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Role"
    ADD CONSTRAINT "Role_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Role" DROP CONSTRAINT "Role_pkey";
       public                 postgres    false    232                       2606    17597    Sets Sets_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Sets"
    ADD CONSTRAINT "Sets_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Sets" DROP CONSTRAINT "Sets_pkey";
       public                 postgres    false    236                       2606    17618    TagsPosts TagsPosts_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."TagsPosts"
    ADD CONSTRAINT "TagsPosts_pkey" PRIMARY KEY ("postId", "tagId");
 F   ALTER TABLE ONLY public."TagsPosts" DROP CONSTRAINT "TagsPosts_pkey";
       public                 postgres    false    238    238            	           2606    17610    Tags Tags_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Tags" DROP CONSTRAINT "Tags_pkey";
       public                 postgres    false    237            �           2606    17285    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public                 postgres    false    218            �           2606    17373     UsersComments UsersComments_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."UsersComments"
    ADD CONSTRAINT "UsersComments_pkey" PRIMARY KEY ("postsId", "usersId");
 N   ALTER TABLE ONLY public."UsersComments" DROP CONSTRAINT "UsersComments_pkey";
       public                 postgres    false    228    228            �           2606    17357    UsersLikes UsersLikes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."UsersLikes"
    ADD CONSTRAINT "UsersLikes_pkey" PRIMARY KEY ("postsId", "usersId");
 H   ALTER TABLE ONLY public."UsersLikes" DROP CONSTRAINT "UsersLikes_pkey";
       public                 postgres    false    226    226            �           2606    17397 .   UsersProgramsFollows UsersProgramsFollows_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."UsersProgramsFollows"
    ADD CONSTRAINT "UsersProgramsFollows_pkey" PRIMARY KEY ("programId", "userId");
 \   ALTER TABLE ONLY public."UsersProgramsFollows" DROP CONSTRAINT "UsersProgramsFollows_pkey";
       public                 postgres    false    231    231            �           2606    17365    UsersShares UsersShares_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."UsersShares"
    ADD CONSTRAINT "UsersShares_pkey" PRIMARY KEY ("postsId", "usersId");
 J   ALTER TABLE ONLY public."UsersShares" DROP CONSTRAINT "UsersShares_pkey";
       public                 postgres    false    227    227            �           2606    17389 (   WorkoutsExercises WorkoutsExercises_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."WorkoutsExercises"
    ADD CONSTRAINT "WorkoutsExercises_pkey" PRIMARY KEY ("exerciceId", "workoutId");
 V   ALTER TABLE ONLY public."WorkoutsExercises" DROP CONSTRAINT "WorkoutsExercises_pkey";
       public                 postgres    false    230    230            �           2606    17317    Workouts Workouts_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Workouts"
    ADD CONSTRAINT "Workouts_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Workouts" DROP CONSTRAINT "Workouts_pkey";
       public                 postgres    false    222            �           2606    17100 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public                 postgres    false    217            �           1259    84750    City_name_key    INDEX     I   CREATE UNIQUE INDEX "City_name_key" ON public."City" USING btree (name);
 #   DROP INDEX public."City_name_key";
       public                 postgres    false    220                       1259    34271    PasswordReset_token_key    INDEX     ]   CREATE UNIQUE INDEX "PasswordReset_token_key" ON public."PasswordReset" USING btree (token);
 -   DROP INDEX public."PasswordReset_token_key";
       public                 postgres    false    240                       1259    23122    Tags_name_key    INDEX     I   CREATE UNIQUE INDEX "Tags_name_key" ON public."Tags" USING btree (name);
 #   DROP INDEX public."Tags_name_key";
       public                 postgres    false    237            �           1259    17415    User_email_key    INDEX     K   CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);
 $   DROP INDEX public."User_email_key";
       public                 postgres    false    218            �           1259    17414    User_pseudo_key    INDEX     M   CREATE UNIQUE INDEX "User_pseudo_key" ON public."User" USING btree (pseudo);
 %   DROP INDEX public."User_pseudo_key";
       public                 postgres    false    218                       2606    17487 :   ExerciceMuscleGroups ExerciceMuscleGroups_exercicesId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExerciceMuscleGroups"
    ADD CONSTRAINT "ExerciceMuscleGroups_exercicesId_fkey" FOREIGN KEY ("exercicesId") REFERENCES public."Exercices"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 h   ALTER TABLE ONLY public."ExerciceMuscleGroups" DROP CONSTRAINT "ExerciceMuscleGroups_exercicesId_fkey";
       public               postgres    false    229    223    4844                        2606    17492 >   ExerciceMuscleGroups ExerciceMuscleGroups_musculeGroupsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExerciceMuscleGroups"
    ADD CONSTRAINT "ExerciceMuscleGroups_musculeGroupsId_fkey" FOREIGN KEY ("musculeGroupsId") REFERENCES public."MuscleGroups"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 l   ALTER TABLE ONLY public."ExerciceMuscleGroups" DROP CONSTRAINT "ExerciceMuscleGroups_musculeGroupsId_fkey";
       public               postgres    false    225    4848    229                       2606    17452 /   ExerciceResults ExerciceResults_exerciceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExerciceResults"
    ADD CONSTRAINT "ExerciceResults_exerciceId_fkey" FOREIGN KEY ("exerciceId") REFERENCES public."Exercices"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ]   ALTER TABLE ONLY public."ExerciceResults" DROP CONSTRAINT "ExerciceResults_exerciceId_fkey";
       public               postgres    false    4844    224    223                       2606    17585 +   ExerciceResults ExerciceResults_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExerciceResults"
    ADD CONSTRAINT "ExerciceResults_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public."ExerciceResults" DROP CONSTRAINT "ExerciceResults_userId_fkey";
       public               postgres    false    4832    224    218            %           2606    41321 C   ExercicesResultsPosts ExercicesResultsPosts_exercicesResultsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExercicesResultsPosts"
    ADD CONSTRAINT "ExercicesResultsPosts_exercicesResultsId_fkey" FOREIGN KEY ("exercicesResultsId") REFERENCES public."ExerciceResults"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 q   ALTER TABLE ONLY public."ExercicesResultsPosts" DROP CONSTRAINT "ExercicesResultsPosts_exercicesResultsId_fkey";
       public               postgres    false    4846    233    224            &           2606    31966 8   ExercicesResultsPosts ExercicesResultsPosts_postsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExercicesResultsPosts"
    ADD CONSTRAINT "ExercicesResultsPosts_postsId_fkey" FOREIGN KEY ("postsId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY public."ExercicesResultsPosts" DROP CONSTRAINT "ExercicesResultsPosts_postsId_fkey";
       public               postgres    false    233    219    4835            '           2606    17551 !   Follows Follows_followedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Follows"
    ADD CONSTRAINT "Follows_followedById_fkey" FOREIGN KEY ("followedById") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public."Follows" DROP CONSTRAINT "Follows_followedById_fkey";
       public               postgres    false    218    234    4832            (           2606    17556     Follows Follows_followingId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Follows"
    ADD CONSTRAINT "Follows_followingId_fkey" FOREIGN KEY ("followingId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public."Follows" DROP CONSTRAINT "Follows_followingId_fkey";
       public               postgres    false    4832    234    218            )           2606    51490 )   Notifications Notifications_senderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_senderId_fkey" FOREIGN KEY ("senderId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_senderId_fkey";
       public               postgres    false    218    235    4832            *           2606    17570 '   Notifications Notifications_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_userId_fkey";
       public               postgres    false    235    218    4832            /           2606    34272 '   PasswordReset PasswordReset_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PasswordReset"
    ADD CONSTRAINT "PasswordReset_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public."PasswordReset" DROP CONSTRAINT "PasswordReset_userId_fkey";
       public               postgres    false    240    218    4832                       2606    17619    Posts Posts_authorId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Posts"
    ADD CONSTRAINT "Posts_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public."Posts" DROP CONSTRAINT "Posts_authorId_fkey";
       public               postgres    false    219    4832    218                       2606    17437    Programs Programs_authorId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Programs"
    ADD CONSTRAINT "Programs_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public."Programs" DROP CONSTRAINT "Programs_authorId_fkey";
       public               postgres    false    4832    221    218            .           2606    23123 %   RefreshToken RefreshToken_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."RefreshToken"
    ADD CONSTRAINT "RefreshToken_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public."RefreshToken" DROP CONSTRAINT "RefreshToken_userId_fkey";
       public               postgres    false    4832    239    218            +           2606    41326    Sets Sets_exerciceResultId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sets"
    ADD CONSTRAINT "Sets_exerciceResultId_fkey" FOREIGN KEY ("exerciceResultId") REFERENCES public."ExerciceResults"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."Sets" DROP CONSTRAINT "Sets_exerciceResultId_fkey";
       public               postgres    false    224    4846    236            ,           2606    17624    TagsPosts TagsPosts_postId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TagsPosts"
    ADD CONSTRAINT "TagsPosts_postId_fkey" FOREIGN KEY ("postId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."TagsPosts" DROP CONSTRAINT "TagsPosts_postId_fkey";
       public               postgres    false    238    4835    219            -           2606    17629    TagsPosts TagsPosts_tagId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TagsPosts"
    ADD CONSTRAINT "TagsPosts_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public."Tags"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public."TagsPosts" DROP CONSTRAINT "TagsPosts_tagId_fkey";
       public               postgres    false    237    4873    238                       2606    17580    User User_cityId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_cityId_fkey" FOREIGN KEY ("cityId") REFERENCES public."City"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_cityId_fkey";
       public               postgres    false    218    220    4838                       2606    17575    User User_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public."Role"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_roleId_fkey";
       public               postgres    false    232    4862    218                       2606    31961 (   UsersComments UsersComments_postsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UsersComments"
    ADD CONSTRAINT "UsersComments_postsId_fkey" FOREIGN KEY ("postsId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."UsersComments" DROP CONSTRAINT "UsersComments_postsId_fkey";
       public               postgres    false    4835    228    219                       2606    17482 (   UsersComments UsersComments_usersId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UsersComments"
    ADD CONSTRAINT "UsersComments_usersId_fkey" FOREIGN KEY ("usersId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 V   ALTER TABLE ONLY public."UsersComments" DROP CONSTRAINT "UsersComments_usersId_fkey";
       public               postgres    false    228    4832    218                       2606    31951 "   UsersLikes UsersLikes_postsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UsersLikes"
    ADD CONSTRAINT "UsersLikes_postsId_fkey" FOREIGN KEY ("postsId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public."UsersLikes" DROP CONSTRAINT "UsersLikes_postsId_fkey";
       public               postgres    false    4835    226    219                       2606    17462 "   UsersLikes UsersLikes_usersId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UsersLikes"
    ADD CONSTRAINT "UsersLikes_usersId_fkey" FOREIGN KEY ("usersId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public."UsersLikes" DROP CONSTRAINT "UsersLikes_usersId_fkey";
       public               postgres    false    4832    218    226            #           2606    17507 8   UsersProgramsFollows UsersProgramsFollows_programId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UsersProgramsFollows"
    ADD CONSTRAINT "UsersProgramsFollows_programId_fkey" FOREIGN KEY ("programId") REFERENCES public."Programs"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 f   ALTER TABLE ONLY public."UsersProgramsFollows" DROP CONSTRAINT "UsersProgramsFollows_programId_fkey";
       public               postgres    false    221    231    4840            $           2606    17512 5   UsersProgramsFollows UsersProgramsFollows_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UsersProgramsFollows"
    ADD CONSTRAINT "UsersProgramsFollows_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 c   ALTER TABLE ONLY public."UsersProgramsFollows" DROP CONSTRAINT "UsersProgramsFollows_userId_fkey";
       public               postgres    false    4832    218    231                       2606    31956 $   UsersShares UsersShares_postsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UsersShares"
    ADD CONSTRAINT "UsersShares_postsId_fkey" FOREIGN KEY ("postsId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public."UsersShares" DROP CONSTRAINT "UsersShares_postsId_fkey";
       public               postgres    false    4835    227    219                       2606    17472 $   UsersShares UsersShares_usersId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UsersShares"
    ADD CONSTRAINT "UsersShares_usersId_fkey" FOREIGN KEY ("usersId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public."UsersShares" DROP CONSTRAINT "UsersShares_usersId_fkey";
       public               postgres    false    4832    227    218            !           2606    17502 3   WorkoutsExercises WorkoutsExercises_exerciceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."WorkoutsExercises"
    ADD CONSTRAINT "WorkoutsExercises_exerciceId_fkey" FOREIGN KEY ("exerciceId") REFERENCES public."Exercices"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 a   ALTER TABLE ONLY public."WorkoutsExercises" DROP CONSTRAINT "WorkoutsExercises_exerciceId_fkey";
       public               postgres    false    230    223    4844            "           2606    17497 2   WorkoutsExercises WorkoutsExercises_workoutId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."WorkoutsExercises"
    ADD CONSTRAINT "WorkoutsExercises_workoutId_fkey" FOREIGN KEY ("workoutId") REFERENCES public."Workouts"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 `   ALTER TABLE ONLY public."WorkoutsExercises" DROP CONSTRAINT "WorkoutsExercises_workoutId_fkey";
       public               postgres    false    4842    222    230                       2606    17447     Workouts Workouts_programId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Workouts"
    ADD CONSTRAINT "Workouts_programId_fkey" FOREIGN KEY ("programId") REFERENCES public."Programs"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public."Workouts" DROP CONSTRAINT "Workouts_programId_fkey";
       public               postgres    false    221    4840    222                       2606    17442    Workouts Workouts_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Workouts"
    ADD CONSTRAINT "Workouts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public."Workouts" DROP CONSTRAINT "Workouts_userId_fkey";
       public               postgres    false    4832    218    222            �   �  x����n� ���O����]���b&����l�Mǌ0�;3�}��X�D��H^�G��Á^�3�W����"C�h�"o�����-=�Kaw�&
e�n�Jk���.�.s��ƺA��������+x�˸�kx�N̝]�!ʠ��5�Yj���r@��[C�oҘ��ZM�0{kL\]���L���"��(��ٟ�^]�s)��Ic���+��������������,���S�Z�)48�"�f�������:��V�����Fw+�Z=�o�f���-����zK5<��g�p���������14�Li�E�M��_My��N���R�|��ɿ�~��_/�e��-ꖓ��ؖ~��/v2>8ҕ7���`ّ�p#�V������X�oY�W���)O��/3o�      �   �  x���Iv�H���S�*_�g��A�&��tb�j������1�JǴ�7m�~U}�R�S.�0���ߌ��\1C�0��b%�Z}�W�"�o�V���#F�8���o|�S�	Uvz.a�q��Ɵ�?��a�7�����I�t�^�r}C�yS�;�͉�←���)[1A�~��hwN�+����S
�⧮;��~
U����<�sF��7��>���#���,��y
��M�9�<�yjC'?�8�"������D�����ݕ(�)�i�j��HfnL�	�Eg��<T�x���V+j����H�
��T��O����U�v��A�TE�D1�EP�0im&>h�7��I��JQ"���%%\�b�Fm��8�^��P���s�m|`��Y���n���"k��	s��l�>�]F9�p���e{:wr�g-9����Ρ� ��S��@���s�K79O�z�<ZbDJ�Iq��1�]��牐J%���KK�D�p :$�I�N�sD��X>���P�84*�E�&�dcbg�3�!��4L�O`�Fk նjvͬ��"�s�!�p�����TE�6�<Zj2��#N_�\J *�c�׎w�@i����C!�]�
 J$�z�"Β��S����I^���Rⓘ���T 1�e�4m�L��^Y�9�m���p_�}:����aq6����
d\� &Z]����T����q�0|Y�ၸ�@L�����܍�9�E�"&C-��b���G3Vi��,�*ȋ
�yvb�Y�]5���]�E��B'�c��Y������g���*���zߝE&�� (��r��
D&t��6�H�=���'l(x;�6Z� �D�ڗ͸.�/f�f��B>��-�v~�g�P��%��mh��v6J�kfH��*��Z��/�x���`�~�6��PB<ب��\�ԥ�����KM�]�P��tٔ<Ol�C6��2�)?zUZ�(=�[��7�ŶǦn�Ԥ=�����r��`�����E\p:�� �ֿY�؊@�|�H쐘�?s��(- �H\���]���x ��s�$�Z�}nan��ɻ��$WM�h�pD����-�K�`�������ղ��f�M�,KF�_��f��M�.ѿ0̆.��$���T�,"j�y~8�o}U]��6~;�@d�]�n z���$�q�]DT��e� �k��X4�|�����׍��P�V�EDs}����[{m{�|�����2����0��W<Zek�|U&j��U���ȹ	DZ���U���]gv�, rXq��Ǔ���w��Fk�Ǐ^�x�'�G��~aMUe�4Z/"�z� ��_X���I�DX���L ��U�80����q��S�>�/o]�l�m�����@�vr�_07m:��-Ɍ"���߁��ޝ�_���&��@�kzbN�VŒ[�V-�K���淄�|h�]S��~��`ۅ=]?3���n<���4;_�8[���1!�~!��׮Շ%@Kô�3YЫ��Sѿ��W�c z�/.�m^���r8��^s3Ř����a���� ��T�i��>v��*���ϋ���d��h	O\5�(s�^:�y5{�}�����6��>�:�[N�(K� �u
@�����ed�A�_���I��^&�w☮�n	�I�������kk      �   	  x���]n�0�g8 �;!9�^*��n������U������rS\���"�1%NP��3�X��ţh��ZP�w���&8���=:�������fG�#�c6;&8ft�f�ǎ�����A�����0Qo$J!K��v^�2ֽ���umUM<����p�2��,Y����"l �o�ߏ|d���D�%��ƓU��j>����.=n<קǡ�����ٿ�S�L�;�۞ƛT����1IS�� ��^͟O�/�C�q�6��d      �   Q  x��YI��]�O�� �u����w���Ko8���I AQ��o��Qs�Ȣ(��JvDETՋ�{��D���a��^���ML�z�DGt���׵Vq�,�k%rֽ|�#���s� ���Q�2��1"dj�UQ���}���C.�0}�	kϹ��^��_�w~�Ue��~����cgt�g��OU��4�Ծ^��l�~�ӱ��kȦ�a
����z����������o,wcنIg��2U��_���H<f��=�}�_���"��a���Dg=�@�?@61���M��Ň^��ʝ\�I���3��\�)S铉���#O�نe:����2�i�iI���%�mr�� ���7_�ۘ�AM����T��� �<�j_�����h�
�.L�d`�W�Jj۠bK�)�e����ܐ
�!�sJj�m���&�Qp�TZl���Y*�ʐ�-��l�2�"#�Ƥ^�b�/�(h
"D�$v�E�l��s�/ME�{�FL|`�8��ݕ�;�}�&�#de�g%h����Rp�E�5&|�{:��[o�j�,��jOZ]�a�=8��y�|�n4ژ�a����E"� ��u+r1��yÀy1�*~��t�����,#g�!3E���`If9����A�'}"�i��cK�D�Zg�P�x��<%���p΀�y��x#��5v�i�}��]�ļ*�k
�!���wj�/ԙ�5��e��Ƕ�j?g�"������^�ь%a�� 'GK����4+.�7�.�V�)�m�?�z��s�]�m-ёu(���2>�k�[jw�q䕷���9��$>�Vr.�m��!��u�H�w �^$ЈZN\�V�I���h�De"l���XCᅚ�,�g��[I���=Z�R�=@;6n��E��m����Ȕ}���9X����r�{?�n�@P�k۩�AȠZ�'���E��I�.����7]�6T��w��cn�ehѵ'�Bڶ��*��(-i�k�fu�r�,X��,,�`�U�R�	��>�5���wۯ冷$5���v�D=�%��$?e;�Dn��v.T��m05L��*N�� ��W
�Y��g9-�Л[�|+u�
Y����L ��h| Z���x�b�lb8����	:`o��"��[�?�ДaVjS���.AI�SR����,�&|.�J�8=���{�E���T�T���#-��*���n=��澩�Y&�lyS9w�qR*�
��i��Zu�:�폴ơ�A�^�z�{���E���Q/�Փ�J�yU&n��w�_w�	����P;��l'��w���Ef~���-���_Nִ�l!Sj�"�m�M��C#�ga'�q4(!���� �$�������p��c�n��91�i-
��՞�XQ����<���;�Snks&8�ew��l02�^&|.�V�t_�p���/����U.�
�L��	����;[Sdm�$�~���#G|�{���ʭ�q���������s�-/gZ�yY��k1�������3|�/r��zV�ct;6��GY�_�!yI�c��s��oI��W�=�,B���G΁�EZ���(}�Q*�
�G��v�i-��������c^�a�f�x���ͽ�Z7�=~%����Qf\:F�N��*�' ��h�,�_?;��v0��5?H���*>�R�9��K��R�����fq�Rppڪ=$�LgzH_Q���˼���zB8�~���5�U��Y���b��n��'��.^�<_~�80i,|5�� �=H�#DǺIs^L���WE ���h���@�W�>�����yO�0�g_����V;���k��B�R.�L��!P�M�:�ۤ��+l�ɝn.�\�d#���_b���{8�0�� ��J���X�1�}ם�W�-�Ybϵo����NꞭ>�-��o�OAJ�����N�t��ڪ<�ԫ�wW֓��x��8�/�]݂�Z�w{�4�.��mNB��3!tJ�0�POY��>̒"�*(��B�N����E�F��S9��#�c�� ��R�r�D�h��T���:`>R{2;�>�h!Ԉ:+U	����a�oj7�sk�|�k߸��˼'@���3|j��a�c�{g#�������Ue�      �      x������ � �      �   s  x����R�0���a�ȑe�]�SJ(��I��	��:��Cf�D��+'M�ݤ�nM:�>k�5�vY�Yh�5g@Ǭ]��!P)`�޾ #��CA(���t@]��!F�ڃ� :����1c4�ИCc�	4&ḥ/�<�4�L�0��#X�`��"%i͔�~�^Qi�,&�H�F��E�6^��2n�$�AB�B �
���U^��UA�TA�UQš��0�N{{g6�i|և֚f�yY���xV�>v�=6i���·�[����^����c��?�B�5�g�S��W~V��f�x܏)���~T�P�q�����r��ܿ},�yv����oy��]�^�����1w�Ƙo��      �   �   x��пn�0�?E^ �w���-�N:v!�j0)�K�!�b%�H?����|�ڳ�� E�2 
�ɥ�Z�G�k�;��|�n*X�����)��׫�~WYWO�i%�h�j�RoOe��嵻�Z	��N�F�c���e)�B���`f 9��Xz�Z����c_�1�`�+�w�5�R�����Js�:�MY��c?r!~G      �   �  x���Kv�0౽
6P��H,�k��e�!�j:�:��
+n��)�Ӝ��>��{%��|�q1 ��RNK�tu`�2��Q�aW��6�Ϊ�FY$MӨV>���G�Lc4N�jgw �@�E��H���l(͐�7���Ҳ5�4{y�IW�]������^�J��L7�u�*�C�ef�i�Dc�o�c��58t�٩!���NN:����9��]<�a�y��,!�"�T��I�
Q6y�Fp�����H!M)��@/��f��ؔ`�T�J,$F	|&٩��5S�haJS�J6"�>~�NY����(�]��dwJ��к�X)�>��`�@־ ֊����c4�l�ξpX+`�J��4���c�ņ�4d047!�t���.4ޙ;I�u[0���)5��{T��h�`'7;���&,�8f�_iw��
�5;�IE*�Hk��_�Rkp��E���1�d��t�+�J��8�K���O#S����N�}�������v�ףQL�֘�[�p.Q�\b��W�Ft�:��I ؊>����rť�e;�����=����_l�֕a˪����E^�}�;tq}�x
X��L'�r��/�e�·��N\^�G����A ܏y���A��r*�t-F)�ƣY�gȠ#��;�/t�6���s~���}�Nc��K=s:��!ǆ�C�9:�1�O��x���9d�      �      x������ � �      �   �  x��[koW��������2κ_,YU���5�O��ڱu��5k�x�;������q Q�( �E(�#�H�$��I� �	�ko�N��ɰ=>J���Q2����>��fR�f7�M3����Ms��ꥶ�'���K���N�eS�X ���IB�r���J���
F�2mS�$e���V�6+�*'��t+=��h��B���(|��+��x��M�ܿ�6֎O�vVOv�Xm<����{ؒ�l� ~_;΢��(Y��j��o���������'��<n� wAݦ���'���A�����/�L�<���$$:�x�eD��V7l�ƀCss�02��|���@�wgb�`��W����-|Z��qE�$I����7�i>��k�����Ӑ���ϻ�	��I�9⡑R��&��t�w�8V��n�<k�N�;�X[����cÿ;���o���u��Af�I֦��������p ����z���^�ʸ�H!M�LD�D�_����n�L/��Gf�Qt��vw��e2�n����w����4A�e[����R !F��X.c��(���;z��s�8&ШX�Y!�x��(�����y˗����)GG7�C��4�c2E�N`oC�������i�|�?����%��CcI��Ƙ�q���3�ַۧ�h���l�{k��Ƀ�01*s���U�9t6� 0��u��e��&-?G~�J�AB{����D*����,!L�aQ�|t���v1Ehm�(���
:��	����L
���sӧ�.�v��UI�a��C+YÄ��_6�;�/��f�u�� :{�  ӆ���c�w���&B`ʐ
�5HZ'��C�
�����G�����p+���-�s�^��0CRKũ#.l��'�1C�3;��mM"¼�9�#}_&|��&��Ӊ�ܔZ��kZ� �5�N�ŗ���b@�(�SR͸�J�P�Xkd���p�a�Ў�� =�w�����Ehך*N� i��=WcP<����0Q&�W���d�3�<E26*R*x�z-${m��e��\c�i��C�@7i1�
T���ô��c��4-YO8Ҳ>G�+�� ��T��2�b�5�zh��o��}�7Z�/�٭F,4�!�{N=��� 6'��/EG����ǚb�]RS�Jc:0����������{��V�~�~806 TG�gO���j�=�m��.�oA����p1t:IO��Z��� �(�d\l�5`����,�m�Ə.�3+sh�,;oh����^��^�Ʒ�`J��Nڒ~�	��-Z��%e&�FD�Y�D��"DVKnJ#��L']򧫵O?�ʀ�U��l5�6�R?I,]Ż���77���FP��6�]�|�N��^1�����4L�H�X:�E\!�������Ԙ��@Y��w]Q�����0SS�, Nvۙ���!��4�����<H��Z*	�9u-~���������{3r)�<�����F�u�s�Է̇O�������g
�F+`�M������k��K�.��-�)X�Z��j�u��4�`|o!0:�Ozi~6O��HȄ�,��nh)�͐m������2���4ڝ�~�+��Nړ^Ҟ��#XJ�9���8���|q���8Z�*݃i^r�g�y�Tnb�f�}Q�Q��3����,
L��I?}O�!�H=�80���=P|�D���X��z�Q�E�ـ���T�=��_�zQ$:�ދq� T���Z��i9�lۡe���'�b��d��K����Y:�/?��~gQd:�����!B�O^)5�$���4C�p�J1��lY�X�����|��Ւx�S� `0x�3Il�4�$��*���j]ʻ]���IV���\31����ݫ�<���L/VJ���L�0҉�	S�+6<,юN���$^{���қ�~�
��&��(���4'���?|/O�|��w�Z M�(̴�B�1F1�k��m��4圄���G�A]�3����|�<�����:���6����+����Xј�(:e�8؆�9���$�������������iJ�͓�gO>��b�tR����%
a�G!�Va�phh	w��zL��>ڥ<� ����'�	tW�+��Ţ�y�O���P+@EH1�C��9W�=��?��z\�s��i"�V�k�ɢ��S�����`}�Ԉj**W68��/�Bn�=� ��/e���W~����i[�W���T?���)�#D��(��Rk����Ì2p?����L�%�Y�>e�W��6�kSL���~�0yw����L��cR�"	���Bp�_�7:��ʻY�6�u0Zj;N����Qꪯ琋^�v��g�ĨP8#"���X͆���|J����v���-ȥ�Y��>m�fZdL]��:=� ׺^<��o�3�PA%!�L�Y$X�m���
�uM1���i���@�Ե��*��<���U�"
�:vF�����z囥��kXz�ƻU�_���ôN#��~��+�R�״y^+���c���{���p���2O[>��T��W�X�9��2��>�bA���k��a�0�YM�t�^�7��6��4�7����'�r�q��a3%@�`:q$ce���#�y�-�ihf���<.��w�>��Ja����p�}�K1C�b��P�$�q���.�Z��;��{1�`��RX#F�ƈ	I=t��p����LP�������VC=��[T�g_����,W�Y����(�BB� J�JYF���KM�W��.���eZ�����1ݙ�֩_\|�䧋��.W��;f�b�V��D���3r�a�_U;��Y�4�J`����ǋ�w���
��`�B���.�d:�|������A��� �!A�mu1�l����y���5cAB(��XH�q�<��u�N?W������bTG��Mg�f��W���g��"B!�G�4L�D %C��Sɞ�=�w�e�.�>����/��@�'��Y,�  J	mdN9l�f�-d���v��d��\$�6A��)������}7je;��L���S8���\"��Z�!t�A��\-�z����H��`3��c�����u斦�r���B�O	^\�x	�wfk[�݋;ӥr� ��4�@���m��>e��jK�V�R��ͧ���`-�S�]����[�N��D[���yK�[�-L���/���¯��:�T��2�˔/A��<D8�ڿ�|k	���?Ts�n޼�/�ر0      �   �  x���Mn�0���)� �JR�miٴAx!�ͮ�f$5���G�s#oz�.u��e'F�fc@ �!9��Ǚޚ�ʖ�/�~��<܅���f�#����VCo����)ʄ��{<4�w1ᔧ3�f<&�$������q�#4:)q��V��;�j�^+RW�@��n`�Kw������_�n��W�g	�3Vi��w��ޚ���`�P,j����KHb0Mh�uN�����?<|?j�J������M7ѷ�`�:�OTF�(�[�+��g'���T5xk�FF*8p(ؠP�:�� ��S	��5����9�@�"�^T�)�bٖ;�T-wK��{r��g<Fs���<N)�0����=䣘�V�ѯ/�Qk��;u�c�(�=O��3��N���jK��.H��{䂕�A+�6CwT�1��e���%�,O�K�E�\��$OE�"��`�Y£�_�O����ķwpA�Y�\fq�`Y�2q`я8���T�.�      �   �  x�͙Ɏ�J��UOq_ ��'v��N��2�'<���;��Ju��{�J��oL�|��?zHe��w� `AYQ��ػ�?�������Dׁ['��^9�����J�7�\�!�J�
��ǧ�t���K+�R&�p�>ynƥ�O�t��B��c@���LW��`�/M�G*��ՎsB�JjD(��zc
60�cW�f������w��+�B��D��q����,�CD�-lS=(B�H���$ 5 � � =B�rC
p��?[��d-'��Df�2��=!�?A��0>�����<�4��(�:!�����_99f����i���L�����?����$�z����g�҉j�A�ژ^���蠳�[��� ��;���$(kj��_01#�qPC����;Lv��hap$�	����t�d�o��t��*q���ijg���C�Ū�؏��.�4c�:P�^�����$���F�(�5��(ؖɢҁ��H�U��D��
�`�}���c�е����p�DY:Aî�hpꮃ��O���1�w��S�?��˦�Έ����Nld��+:��!�N/�[�h�:���<��R���4�C���S�l2���~2���C�+�_r)�����&x�Gz!$J���ZĐ��p|�_�V=�'G�
���#v:�����q=�-C�z�5�pH��wz�).C�a�-���L���/��FV}�_s6)�7ܯ�[��j��l�S��<�Vd���P�s��-f�����qJ`�afˉ��0.����������p��i�C݆�/��8*�݅\tk_����^J���v�{99�'�`�d~��0���k^�8rA��ۊ�^k���s"���mk-�D�x QC� �� M�BǾw�d�X�}Ϭ�wh�PK���2Ax���B��y5�z�@1d��!�{$�R��ˋ�1�8�O �?3��b�x.�?t��4�,�m�`�BȻ� �J�p�/Ӈ�W!�*�av�J?q3�xJ���V���^��V����QhDpC�$�ӟ L��@�md����@s.�i@�Ka k�[ҕ˕�w8�y��P�k�+���p͒�!�j1�~������;��Q��- �ˍ��[ؽ��={�N��R�h��d3�cI��>I��1�8�Oy�~� n�A!M~�w �*�0 ��eVʺw�� |(�� ��:�f��7M3-���V#\;e��̢��)r1]��Mz��� �C1�����y]	��FMp��7��WM�n>�`T��1��i�I[m�i\�cfޒ��@�[� �[�I�`F3���_�'�,�]	��S.M��� �%��m	��#��,�܁D$3�X�ǽ�\'�e3
  �^ x�q�wz 2Z�Ԗ �1̌<~��q�R�Q�@o�)<G�Q��`�0	t	�#���h��ok`�q�޿�A(�CC�2���	 ��i��/C� ��` z���$�w�t9U��E�䪪�wJ�yj���\;Z���+ $1ġ}�w b�/0 � :����^ ��� �v���d윻���T�dH�k�b��a�j^J�ݞ��#}z�xܑ���[� ��u� n-��bt�w� �ߗ/K��%�׎��W��p�ɑ)J��'r�\���o&�9��`����U�_�g��� �?H����7�_�ֆ__H��]�Ԉ~��0�D���;[iS�S�D��9��W�ShȂ�6��x�\�X-��s�:�WƷx=���T�Ԣo?�2��ݍ�Y������ğ��A�9��/ �a�r�wz���U��������
@'^�@Iݶ-p*�sa�pv���*�)�N�ܝ`@嚃�є&I
_ �Z�C�\�o�P��\ `Q�@����^����m	PI����A|�>8��Ʀ@"8]��Y3P ��\�o�!=�xء^	��; �aq� l�4��\� ��exB�
�H����)�7���K8"���
�P\��%��vB����e�wz�!�s����͊�wn8X ������0 �2���Ňa��Gq�PŞd�]Ҳ�)��� �"�y	�C��e�/�	��4��\ `Y��ػ��Pg���	��� ��eB��݅�:��},dɥY���m�������� � 9����[�P^� �&MR��^ � �z�x�:\Tm*�8�s�f|�_��a��� f~vy��c� <� ����; �U:� �C����� �Wc�=(� ��u���y�4'-��$;�ڪܑ�����,n�> o=C�z�K� 0$�v> �y�Ú�ߺ�/�a�s��t�����"oIe�F*.��� ��,;`/�.P��z�_����M}���O �߮BN������ ��&���&h#�Ұ> ������,O�`�����C�H�2�o�I�Mߐ�z%�K� �0d1 ��:���V �W�A��=σ8`F�J1B��{᰹c!��}Ζ2$ϧd5]��u`��A�i��	������V6��?��ih3����j�y�i0�XoSx��')H����q���B\������K��~�v��F��OuS�D��-	�x#���D�>��no�S�9�G�������/��tݔ�t�ƻ�f�V�I���L�C��������	*���rh>�w�l��a)yz{6ِv���z�1{%��H:΂��VN+�\Ii� �:'���O�P��l�_���U&|���F5�ԍ@a\sr�|8!�$R�\]e��o�c��2Ž^g��)e&�  nD1��}#w�7YPv��_�ʛ��6����WI�"�Z�?�q�m�#7`�@v"�K����ٟx�����z.����O �^< �p]�jt# ��7R�Pb#��4f d�z>Y�G^w��o��
���l	�Ս����N�_ h;����[ (�"3�&@�L� |����Q�NP=�B;���-;�ۍc	��bL���7Sg�\�����%��0$ڻ?��w�ӟ .�k��"���A���0��D/�3��m�K}&*��J���r;�snv�-/�`w�t"Y>�<!
� �VG�C򏳠/�@F��{����#�{�;4c���=$k{@�zE8�n�X�ʱ^jW�p��,��I�A6�������� PD��� ~�?�3�����s��      �   >   x�+��I5�-N-�4202�54�52Q04�24�24�373�%�U�j�阒��G��=... ̲&      �   |  x���Yr�0�g�\ I�b;g�KhX�A���S([�m��r�I���vT��%'�YF���ʅ"�뭯���㬝v�Ap � 7�#J�C5�LI�C�(M�@��!����)�i� ~(Ax0 ���Fĕ�QQ�QȚz������r|Z�B,��V+���q���>��9e�X �[ǥ`�:�7G��w�;���Y��~�����#�����$W��I�%�71~��̘ֈ�[���1�'�����G�^o��bo���^�E��W���*�[���D��tJ_$A���7m�^w��^/��C�]�]���	�k�E�.�.��Vg�jY7ݾ��ݙ�i����Zi�^�~���52�m�\�7
�C�e�'�Y      �     x����n�0���)xP	-��"m�MBT�.�H!*{���{���g[��N��2L���A�}b�,��xV��l#x�z���1�����F�9%�p���c�:���u� �ۤ��f�H�P�ڬʒ�r%�^��F��E�X����/��gR�.�*�Y�w�ɑ����w�I�hC���v�?H��]/���y�$��ҽv4�R(�C�?��%%��i�j�}CiQIܬ��3ƒU$�J�o&ޓ���00��1I��=�{_��y�ec�      �   �   x���1� �ڼ� �ǁoq�*e,��W�!��X��#�]����r��i�(�/�"7��4h�f��)"e�[�����4���N���[q����S��傑��f��8ʸ.��b�K�n��,��� �I����\�D����X5yck�p���w��K]�k�j���#8�~��$�      �   �  x����n�H�ו��"�麲�;��8mw:r�рP$�m^d^dɯ��,�ef3�l�f��#�!}����$��)��>�S�?�0��iYc�L��J¼����MhѨ��[[&�&/G�IR/,2���	~~�.:���p�|x7x�x����~������</y��_������.9�^������ǿ�QL�K�K}���{�y����p1q)v�a�ғ��_��5��ga&�f������C�̯oѡ�-�������]���:���M�n���3�O�W�����]�|�t�;��{eԷiZ874��������<�*��{�����Ͽ���	L�V3IU[D2_b�|�8sM�1�\�<�4T�`�i�>��ػ��ځÐE����~ȷ|V5��7(LS�[��b����=�#	A�?Ow5����ի��_�9�q�!eS\]�l��7!��5�������gd�����@�Cx�� �� ��{NQO���s!�%qH%U
PhBc*BM#4�\)�f��sՍ�<�$"
E&�0-�0���:����l��n�cS�m4����'��;��"��>9�u�ce[�v�T�uc���=�ꛁr8�<_4��I���J23�����$�n�`k2.��%>U��<nK.m�b,���f���|Ϩ؎�23��8��ò������d�&�v����fm�������v�Qv{q�??�cuܟ��΃�,򛛸�n3u����΁ %iY�߳D��*è��ၱ�7�vs[U�.�ήʑ�o(�Wz�\��W>V�����/b���Q>S��i��X>�[ćQU�6���)���׶���h0��&&M��0o�0lR�= ��f&��U��iH�@�b��� ^$HPn�|����*�L�{�G�'�����m�e	ݒ�1I��Dc��aw�28~dt��L��\�+_���I�̖�IY<���9¤�lJ���}p�t33!!3B4�+d�5�6�J6��R�1s2�8����ӫxoh=N�����4H�1d��V�^�'>��,���i1o�zbe��ʁ��@c3�,!�0�|.]Q��Td��<\F�-����x�&q [ۻ��3h���Ԧ�d��c�p�	�e4�6B�k
�Ck�� W�2Fpǜm�b���X��[�CZ��{H(���|tt�)J���Zx�M�lsلs"���5�
�cbRgS�^w�.�D{��������$W��n��c��h.�����:�q*����y��A����P�5��#6S��9�z��!��Y�5�M�̔5h�a���Ǧw�\�P���*���� ^'MRA����P*-#�Vڗ��(&�r)C������4iW|�,�ǝ�u�R�� 4@Sݼ�6��/����K
�\�|k���0v��:�N/����e9�Ť�Q�\�!$�1Tg��m{_�K��S~I�<����pP���V�J������pA�{D����YZ^>̏"b��?����P�������$^P�a�L�
9+���g��!O��q���_)�9T$Xa�q���8������m�_�lS�����;2���Y�v)�QL���a��ꔢ�;,���C˻o-�f�^Y��[�Q�"/��#�vN�ц��J&�XRP�ؚ]�}G</�z�s��@����+>�KY2�:�Ks��+RlYuJ3,HˍL��Q$�XP��$恒�_sz9:i�pwЋIpp�$]/�k��]�P��Zʐ�}��v"l��m��$�Q�$Ҹ�P��B�"�l�}�T[�%�]�;���9.�@Y��I�!��,�<�=XJU@�����ʩ
(��wa�S~y;��hgJB�i_+2��>-&R�Zw�9�X�b��5i=��ik���׵�B��0�-ǧ�y+/7䡾�`��x���FQh�ٺ1�WĸX�H�VU��y�X�?5����D;!\��y��ڇ^�C�9�A���
(�F����I�"���F�VL3H�������K�)�&��݄���S䡅�&N�>m���#}�}�*͈	�$�������i� ���Mn�&�TH����W�2��%ll�+K;�d�&���GI�?���ï�F�۸L��},�yҷ������$��'�Ysd��e5�=I�G�\uY��f-�2"�Pk����L�\�T@�8���"��EP:z��`�l�������ٳ���N      �   �  x��X�nE]������ؚ��$������ٱ��.���Tu����e�@�*(	����'pnuuO�Q)�=�Nߺ�qo�ںt��y�.�0ɩbkï�'�h�J�{��G���(�?6Z�OO�ӣ�(}����NM�J�i�yU�0���*�WW�2�ಒ�{����t��0M��NOƋ����x�>��?|��7�d�K����
1d��_VVr��:��ю=�8y2���\��-˄cB9÷*��_C���q���ř�s�KcKi8\�B���7QO���ə��oV��xX0��c�%�גi4��˟���s��ݲ�VJ0'�K%�U�Y��_]ӳ���{�Irj�!��]Ÿe9J�Fq'���3`�(�E@<���㶀$��r)���K\,�W��#MkX���lc�_C�i�B��ޠ���x��� �`k.�1z��"�+��7�[w���6��	̒'�]�����0���rbK.�Au�5X�ÿt�!Gf���8�Jok�2 F�T��<������HQ݀��Jۙ}Vq����k���p�c�-T�[sm����B�5�^�@ߡ�U�-���l_� �b���uo^���_����G�)N�	�l|􈀴��e��+@�A0���R�5��N���E@�̴.�*$�:�;��!N(Fy(�ƒv��{�������\�L*��Y�Z2��fѢﾍ���H����ڃ����b 
��g
HQ���kJ�`���= 8L�c@r��e�;����C��8L�O��,�jErЬ�ڐq�i	�� N���њ����j-�0�>���������f;��b0/�<x`\��}>z'P�6���¢9\@��:�u�q�F0��P��4��yӎ$�Ȑ5���y=[t{�h����v���<~����נV�����Ab������G���k剤�u�;Odi���x~���'e24���Is�6uw3A�dɳ0 ���o�(Z��k$Ь��jۓ/$M�D�Z7R'r��$�`�Uy��ug��-�[�z|����Hp7
���o����9���r8�EAٝ4��	� ~uL�޸6�l�����J�e��\h���Y�Ҟ��+7%W�2���G�����J>����PL���mR*���0�n��;��]]HCx�z�k*�0���d4B���1�v�e{���o3�^mU8Nk7Cyus�پ&�~�2j�?ߐ5A�w�AeFW4j�K�49U��˻3�7�y� 7/ehu7e!�U��~�K�o���]�U\��.8k��'��k񼙈��5�B�����J��bUt������Z	��߀,�y�Z�:��ڶ��PΪ��E�8.�ݣ3ǕbFoE"�hb�	���� ޼<h]���H��*����]%�G��H��      �   H  x���An�0�5> y�>K7�ZT��RE=})6U6��3�������P5��W�س4DKMY�J+��e5�0�6��L�Lg�0#`�oHlDb���F� EP���Q@Ѐ��x��Dȏ63 ն� &�=նM LJz-f����]RyG���.�R)r�g 7��zH��0�FD�Sa����{ R���=�#/���A*�n��^��H���q��^PR)z.�È�\���z;ܖ��x͎�8*E�V�����8�o�e���i�i�j?����:v`:��~]�z�:~������8=_%�������:�~ �L4�      �      x������ � �      �     x���;��0��:E.`C�IK�Y�,vI���?�Ŵ� ,Xs�>�4��.4pf�F���˪45)����F� ��fvML���A�����H��q/>*����@�<�M��L���MLOz+f�� Y�#e;���;R3�z��π5<R�z��A�TC�՜�=@#Ȃ��@����=(��ȃ�Ȑ"HY��,|�(����÷�*���s0QV������|������;�r]�L"��SJ�܏�      �   E  x��ҽn�0��</�;� {��N�t�B	��P,���kCT����fCw��67��n��ð߇w��Ȑ�� lP�@Z�q|�nl[ڬ��-0L���i��>�7�3�+)�Ƽ�3)VR�Ǣ�E��(W�س1���1iFɡyC)5��'#��ͨI��>�����!W�b-�H��u'&'����E�jN�̆��v�Uա�%VM��buz�Y_t�j���D�p�������g���ߪ���e8Z��S��87�@�����Ts��"E����^���}Qv�ow��@F\�e�L#������>���u��(�OK��g      �   �   x���Qn�0�gr�^ �v�$�Y��!T����
�N�@�M�v������Su�ͥD���1L^��|Q_�z=�T0�+�K�a��H!�{e4m}<�>�>Z�bB�( Ņ��D9`L��؂� ��6ܟ�����]�\�!ք�+��<�y��:��ҏz��q����~����6@pq�j� B.�ڡ�X���R>5w�Y��E]���\"�o���ca7D�%��$� �9�c��T��      �   �	  x��X�N�9��y��_�.v�y�}��Z�ζ�@�v���:�0�($
П��unյ4ϳ�0�qк<�R$P�9����q���̱ԫԚK��zr�ea�����z˵�6z>z���#k 
�_)]G��te�R�Dz�m,�cRNt<ݞ�s}��I���ϋ�tih��5q�ڕ�`;2�>J��.ξ���Z�#�A3zב���C��V�Pƫb�O��	__��%]�_���\}���$�����i�z}<��>������s��%Y�Yd��^����-tbY���5ǎa�O�g����kR-<�Ǹ0Έ�-N)�+G(�/�S�L?�@�������_�[�l
ٙ�S�4ʌ]�݂Ҫ���}L&Is�xȑ��t�Wg�3*,^f�0��zV̮��2���KRo)	���@���5�k*W�M��z&�"���\���_�w���o�x��Ha~n��UgF�:��L�x\�)�P�{�q��.����"���n�4M\��^	��d-���Scٴ6#<�l�og�
H��L��q���7Lm� Y((n04+��dTܢ��JY�d�U3�)bfw͵�u@x1K*�f�U�-�6���qh�����o��@<�Al�k9>I��ξ�t9(4g����ϵ�)+Y����L����]˴�[���쳵&��⍟��\|!Ȑ��Hz.��tIt�9��C�i�b^c��S��e�D�b�1�0��t1Q�Ur��]��R��^��_��ٟP����C܎c���y|<=���������<�X�L�A�h��`�� �6��ɴ��<hn
�ͣ��� O)o��f�}�x��H��Bolc�=�s 3��%%(v����-����a���0�ǈ[.���i�I�h�iAn�`N:�<�)��a�R�*ZbiJҏom��V�MFs�E���(����f�y���
��~:Zd	�C]�r�  ��RG+\#u�S�y	�W7C�DK�Z5B��m q�$���-D�0Z��Ux��Z�#�8�7���χO[�|v����ƎDQ8�����_���5���<2����u��M�4b͵d�ɘ���������e�9�k��ll�UH!e�Rb�Ɉ~������wtxsB���ēQ��� �BN堅R��F��07�W��&���&��t����/睃*�S��X�k�BU����e�!�A��W{�q�����<�d�1LJ��;�c�[�Xo�'�	o0�YhR��¢Wsi��U�V/�#�,l6Xxׅ�Rt��q��<��m��e��&�VtznbR
J��! $ ��!��H� nՃ78�l��>��� ��[���4�mȎ��%jro�5�7�L��!�]e ʛ�'���ǻ�vW������:͛�Q�{9(��37��>�j�G^m%d�`���=u�B7A�0�#�N���H�	�f��V��6Ӛs�0B-�
~��i������XFY��>]���+tE@�h!� �X0���<wº��֑�F��˖���L�nEݦm�[�(=c.�.���RwV�r�	�?�K�{�jM/Į�����'d ^a³��P�I�*��CO��*�����3rQ��w_b�⌑��tt��y��F9 !6&n�J��6���! �b*��|=�	�t5�o���(8�r<�v$��<A���k��4��nPg�aȽ��V+ ����
��JZr����U��~�Hz��%�����a�����ɋ���ے����X��0WNt-E�(��M�,�Q("�l����{�lFԽbg%�BO{���(n�\�^��˸IHp��N�?mk�c������7ϡ�H|`Rh���	��?Py>�:뜈�%{�� �4*�f>� ��ւ�;F�X�˨C^A��F 8_�_�I]�;�%ȗ�6��x�����S.|^�5�eJwGh��zE҈:�!*�4찗,2QI���>x���=�F���mF �`*j/@�i�B!vE��E�5��$C�owc~8�7'�����PP�6�HKBa���\�+�[Ê@�Qh�%��N��hV�L�m�N��-�'`�@��%ﯢ�t�{sD��t�l~�������?��{�t���K� U�C� �X�fKyr<�8�Jё�u��T"J8!�b�@�[�R�]7�(�K(��F�z���	�u^�����ԍ�U����@�o�ׇ~���H.�Q�t׺?H�D��]�;:��>��L7*�| 1���	�5���52/�[�l*���w�=#u��)�VQ60V�r���V`�;���".���-g������VA2�d�0��tv�X����D䅾���S�i!��a�&pm`+&$B-�ٽ����^A,�?z,}ާ_��#���hg��Ӂ��%جxI{����#/d;��^��NH�!��2+�K��M;D�5<��K�O�A�2^� �J~��"^� �.>۟�`�������q����n������~��{s$l��)��՗/_�j���     