.class public Li5/s;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Li5/t;

.field public static final b:Li5/t;

.field public static final c:Li5/t;

.field public static final d:Li5/t;

.field public static final e:Li5/t;

.field public static final f:Li5/t;

.field public static final g:Li5/t;

.field public static final h:Li5/t;

.field public static final i:Li5/t;

.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Li5/t;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Li5/t;

.field public static final l:Ls6/g;

.field public static final m:Ls6/g;

.field public static final n:Ls6/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final o:Lf7/o;

.field public static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Li5/i1;",
            "Li5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    const-class v0, Lf7/o;

    new-instance v1, Li5/s$d;

    sget-object v2, Li5/h1$e;->c:Li5/h1$e;

    invoke-direct {v1, v2}, Li5/s$d;-><init>(Li5/i1;)V

    sput-object v1, Li5/s;->a:Li5/t;

    new-instance v2, Li5/s$e;

    sget-object v3, Li5/h1$f;->c:Li5/h1$f;

    invoke-direct {v2, v3}, Li5/s$e;-><init>(Li5/i1;)V

    sput-object v2, Li5/s;->b:Li5/t;

    new-instance v3, Li5/s$f;

    sget-object v4, Li5/h1$g;->c:Li5/h1$g;

    invoke-direct {v3, v4}, Li5/s$f;-><init>(Li5/i1;)V

    sput-object v3, Li5/s;->c:Li5/t;

    new-instance v4, Li5/s$g;

    sget-object v5, Li5/h1$b;->c:Li5/h1$b;

    invoke-direct {v4, v5}, Li5/s$g;-><init>(Li5/i1;)V

    sput-object v4, Li5/s;->d:Li5/t;

    new-instance v5, Li5/s$h;

    sget-object v6, Li5/h1$h;->c:Li5/h1$h;

    invoke-direct {v5, v6}, Li5/s$h;-><init>(Li5/i1;)V

    sput-object v5, Li5/s;->e:Li5/t;

    new-instance v6, Li5/s$i;

    sget-object v7, Li5/h1$d;->c:Li5/h1$d;

    invoke-direct {v6, v7}, Li5/s$i;-><init>(Li5/i1;)V

    sput-object v6, Li5/s;->f:Li5/t;

    new-instance v7, Li5/s$j;

    sget-object v8, Li5/h1$a;->c:Li5/h1$a;

    invoke-direct {v7, v8}, Li5/s$j;-><init>(Li5/i1;)V

    sput-object v7, Li5/s;->g:Li5/t;

    new-instance v8, Li5/s$k;

    sget-object v9, Li5/h1$c;->c:Li5/h1$c;

    invoke-direct {v8, v9}, Li5/s$k;-><init>(Li5/i1;)V

    sput-object v8, Li5/s;->h:Li5/t;

    new-instance v9, Li5/s$l;

    sget-object v10, Li5/h1$i;->c:Li5/h1$i;

    invoke-direct {v9, v10}, Li5/s$l;-><init>(Li5/i1;)V

    sput-object v9, Li5/s;->i:Li5/t;

    const/4 v10, 0x4

    new-array v11, v10, [Li5/t;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v1, v11, v12

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    const/4 v15, 0x3

    aput-object v6, v11, v15

    invoke-static {v11}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    invoke-static {v10}, Li7/a;->d(I)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Li5/s;->j:Ljava/util/Map;

    sput-object v5, Li5/s;->k:Li5/t;

    new-instance v10, Li5/s$a;

    invoke-direct {v10}, Li5/s$a;-><init>()V

    sput-object v10, Li5/s;->l:Ls6/g;

    new-instance v10, Li5/s$b;

    invoke-direct {v10}, Li5/s$b;-><init>()V

    sput-object v10, Li5/s;->m:Ls6/g;

    new-instance v10, Li5/s$c;

    invoke-direct {v10}, Li5/s$c;-><init>()V

    sput-object v10, Li5/s;->n:Ls6/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf7/o;

    goto :goto_c0

    :cond_be
    sget-object v0, Lf7/o$a;->a:Lf7/o$a;

    :goto_c0
    sput-object v0, Li5/s;->o:Lf7/o;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Li5/s;->p:Ljava/util/Map;

    invoke-static {v1}, Li5/s;->g(Li5/t;)V

    invoke-static {v2}, Li5/s;->g(Li5/t;)V

    invoke-static {v3}, Li5/s;->g(Li5/t;)V

    invoke-static {v4}, Li5/s;->g(Li5/t;)V

    invoke-static {v5}, Li5/s;->g(Li5/t;)V

    invoke-static {v6}, Li5/s;->g(Li5/t;)V

    invoke-static {v7}, Li5/s;->g(Li5/t;)V

    invoke-static {v8}, Li5/s;->g(Li5/t;)V

    invoke-static {v9}, Li5/s;->g(Li5/t;)V

    return-void
.end method

.method public static synthetic a(I)V
    .registers 9

    const/16 v0, 0x10

    if-eq p0, v0, :cond_7

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_9

    :cond_7
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_9
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p0, v0, :cond_f

    move v4, v2

    goto :goto_10

    :cond_f
    move v4, v3

    :goto_10
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p0, v6, :cond_3a

    if-eq p0, v2, :cond_3a

    const/4 v2, 0x5

    if-eq p0, v2, :cond_3a

    const/4 v2, 0x7

    if-eq p0, v2, :cond_3a

    packed-switch p0, :pswitch_data_86

    const-string v2, "what"

    aput-object v2, v4, v7

    goto :goto_3e

    :pswitch_28  #0x10
    aput-object v5, v4, v7

    goto :goto_3e

    :pswitch_2b  #0xe, 0xf
    const-string v2, "visibility"

    aput-object v2, v4, v7

    goto :goto_3e

    :pswitch_30  #0xb, 0xd
    const-string v2, "second"

    aput-object v2, v4, v7

    goto :goto_3e

    :pswitch_35  #0xa, 0xc
    const-string v2, "first"

    aput-object v2, v4, v7

    goto :goto_3e

    :cond_3a
    :pswitch_3a  #0x9
    const-string v2, "from"

    aput-object v2, v4, v7

    :goto_3e
    const-string v2, "toDescriptorVisibility"

    if-eq p0, v0, :cond_45

    aput-object v5, v4, v6

    goto :goto_47

    :cond_45
    aput-object v2, v4, v6

    :goto_47
    packed-switch p0, :pswitch_data_9a

    const-string v2, "isVisible"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_4f  #0xf
    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_52  #0xe
    const-string v2, "isPrivate"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_57  #0xc, 0xd
    const-string v2, "compare"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_5c  #0xa, 0xb
    const-string v2, "compareLocal"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_61  #0x8, 0x9
    const-string v2, "findInvisibleMember"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_66  #0x6, 0x7
    const-string v2, "inSameFile"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_6b  #0x4, 0x5
    const-string v2, "isVisibleWithAnyReceiver"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_70  #0x2, 0x3
    const-string v2, "isVisibleIgnoringReceiver"

    aput-object v2, v4, v3

    :goto_74
    :pswitch_74  #0x10
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_80

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_85

    :cond_80
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_85
    throw p0

    :pswitch_data_86
    .packed-switch 0x9
        :pswitch_3a  #00000009
        :pswitch_35  #0000000a
        :pswitch_30  #0000000b
        :pswitch_35  #0000000c
        :pswitch_30  #0000000d
        :pswitch_2b  #0000000e
        :pswitch_2b  #0000000f
        :pswitch_28  #00000010
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x2
        :pswitch_70  #00000002
        :pswitch_70  #00000003
        :pswitch_6b  #00000004
        :pswitch_6b  #00000005
        :pswitch_66  #00000006
        :pswitch_66  #00000007
        :pswitch_61  #00000008
        :pswitch_61  #00000009
        :pswitch_5c  #0000000a
        :pswitch_5c  #0000000b
        :pswitch_57  #0000000c
        :pswitch_57  #0000000d
        :pswitch_52  #0000000e
        :pswitch_4f  #0000000f
        :pswitch_74  #00000010
    .end packed-switch
.end method

.method public static b(Li5/t;Li5/t;)Ljava/lang/Integer;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3b

    if-eqz p1, :cond_35

    const-string v1, "visibility"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Li5/t;->a()Li5/i1;

    move-result-object v2

    invoke-virtual {p1}, Li5/t;->a()Li5/i1;

    move-result-object v3

    invoke-virtual {v2, v3}, Li5/i1;->a(Li5/i1;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_19

    return-object v2

    :cond_19
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Li5/t;->a()Li5/i1;

    move-result-object p1

    invoke-virtual {p0}, Li5/t;->a()Li5/i1;

    move-result-object p0

    invoke-virtual {p1, p0}, Li5/i1;->a(Li5/i1;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_34
    return-object v0

    :cond_35
    const/16 p0, 0xd

    invoke-static {p0}, Li5/s;->a(I)V

    throw v0

    :cond_3b
    const/16 p0, 0xc

    invoke-static {p0}, Li5/s;->a(I)V

    throw v0
.end method

.method public static c(Ls6/g;Li5/p;Li5/l;Z)Li5/p;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    if-eqz p2, :cond_3b

    invoke-interface {p1}, Li5/l;->a()Li5/l;

    move-result-object v1

    check-cast v1, Li5/p;

    :goto_b
    if-eqz v1, :cond_29

    invoke-interface {v1}, Li5/p;->getVisibility()Li5/t;

    move-result-object v2

    sget-object v3, Li5/s;->f:Li5/t;

    if-eq v2, v3, :cond_29

    invoke-interface {v1}, Li5/p;->getVisibility()Li5/t;

    move-result-object v2

    invoke-virtual {v2, p0, v1, p2, p3}, Li5/t;->c(Ls6/g;Li5/p;Li5/l;Z)Z

    move-result v2

    if-nez v2, :cond_20

    return-object v1

    :cond_20
    const-class v2, Li5/p;

    invoke-static {v1, v2}, Lk6/i;->j(Li5/l;Ljava/lang/Class;)Li5/l;

    move-result-object v1

    check-cast v1, Li5/p;

    goto :goto_b

    :cond_29
    instance-of v1, p1, Ll5/l0;

    if-eqz v1, :cond_3a

    check-cast p1, Ll5/l0;

    invoke-interface {p1}, Ll5/l0;->O()Li5/d;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Li5/s;->c(Ls6/g;Li5/p;Li5/l;Z)Li5/p;

    move-result-object p0

    if-eqz p0, :cond_3a

    return-object p0

    :cond_3a
    return-object v0

    :cond_3b
    const/16 p0, 0x9

    invoke-static {p0}, Li5/s;->a(I)V

    throw v0

    :cond_41
    const/16 p0, 0x8

    invoke-static {p0}, Li5/s;->a(I)V

    throw v0
.end method

.method public static d(Li5/l;Li5/l;)Z
    .registers 3

    if-eqz p0, :cond_15

    invoke-static {p1}, Lk6/i;->f(Li5/l;)Li5/w0;

    move-result-object p1

    sget-object v0, Li5/w0;->a:Li5/w0;

    if-eq p1, v0, :cond_13

    invoke-static {p0}, Lk6/i;->f(Li5/l;)Li5/w0;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x6

    invoke-static {p0}, Li5/s;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Li5/t;)Z
    .registers 2

    if-eqz p0, :cond_f

    sget-object v0, Li5/s;->a:Li5/t;

    if-eq p0, v0, :cond_d

    sget-object v0, Li5/s;->b:Li5/t;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0

    :cond_f
    const/16 p0, 0xe

    invoke-static {p0}, Li5/s;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static f(Li5/p;Li5/l;Z)Z
    .registers 4

    if-eqz p1, :cond_e

    sget-object v0, Li5/s;->m:Ls6/g;

    invoke-static {v0, p0, p1, p2}, Li5/s;->c(Ls6/g;Li5/p;Li5/l;Z)Li5/p;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0

    :cond_e
    const/4 p0, 0x3

    invoke-static {p0}, Li5/s;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static g(Li5/t;)V
    .registers 3

    sget-object v0, Li5/s;->p:Ljava/util/Map;

    move-object v1, p0

    check-cast v1, Li5/q;

    iget-object v1, v1, Li5/q;->a:Li5/i1;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static h(Li5/i1;)Li5/t;
    .registers 4

    if-eqz p0, :cond_26

    sget-object v0, Li5/s;->p:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/t;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inapplicable visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/16 p0, 0xf

    invoke-static {p0}, Li5/s;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
