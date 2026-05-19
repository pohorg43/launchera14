.class public Lr5/v;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Li5/t;

.field public static final b:Li5/t;

.field public static final c:Li5/t;

.field public static final d:Ljava/util/Map;
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
    .registers 4

    new-instance v0, Lr5/v$a;

    sget-object v1, Lm5/a;->c:Lm5/a;

    invoke-direct {v0, v1}, Lr5/v$a;-><init>(Li5/i1;)V

    sput-object v0, Lr5/v;->a:Li5/t;

    new-instance v1, Lr5/v$b;

    sget-object v2, Lm5/c;->c:Lm5/c;

    invoke-direct {v1, v2}, Lr5/v$b;-><init>(Li5/i1;)V

    sput-object v1, Lr5/v;->b:Li5/t;

    new-instance v2, Lr5/v$c;

    sget-object v3, Lm5/b;->c:Lm5/b;

    invoke-direct {v2, v3}, Lr5/v$c;-><init>(Li5/i1;)V

    sput-object v2, Lr5/v;->c:Li5/t;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lr5/v;->d:Ljava/util/Map;

    invoke-static {v0}, Lr5/v;->d(Li5/t;)V

    invoke-static {v1}, Lr5/v;->d(Li5/t;)V

    invoke-static {v2}, Lr5/v;->d(Li5/t;)V

    return-void
.end method

.method public static synthetic a(I)V
    .registers 10

    const/4 v0, 0x6

    const/4 v1, 0x5

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    move v5, v3

    goto :goto_14

    :cond_13
    move v5, v4

    :goto_14
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_6e

    const-string v8, "what"

    aput-object v8, v5, v7

    goto :goto_37

    :pswitch_21  #0x5, 0x6
    aput-object v6, v5, v7

    goto :goto_37

    :pswitch_24  #0x4
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_37

    :pswitch_29  #0x3
    const-string v8, "second"

    aput-object v8, v5, v7

    goto :goto_37

    :pswitch_2e  #0x2
    const-string v8, "first"

    aput-object v8, v5, v7

    goto :goto_37

    :pswitch_33  #0x1
    const-string v8, "from"

    aput-object v8, v5, v7

    :goto_37
    const-string v7, "toDescriptorVisibility"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_41

    if-eq p0, v0, :cond_41

    aput-object v6, v5, v8

    goto :goto_43

    :cond_41
    aput-object v7, v5, v8

    :goto_43
    if-eq p0, v4, :cond_56

    if-eq p0, v3, :cond_56

    const/4 v3, 0x4

    if-eq p0, v3, :cond_53

    if-eq p0, v1, :cond_5a

    if-eq p0, v0, :cond_5a

    const-string v3, "isVisibleForProtectedAndPackage"

    aput-object v3, v5, v4

    goto :goto_5a

    :cond_53
    aput-object v7, v5, v4

    goto :goto_5a

    :cond_56
    const-string v3, "areInSamePackage"

    aput-object v3, v5, v4

    :cond_5a
    :goto_5a
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_68

    if-eq p0, v0, :cond_68

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6d

    :cond_68
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_6d
    throw p0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_33  #00000001
        :pswitch_2e  #00000002
        :pswitch_29  #00000003
        :pswitch_24  #00000004
        :pswitch_21  #00000005
        :pswitch_21  #00000006
    .end packed-switch
.end method

.method public static b(Ls6/g;Li5/p;Li5/l;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    const/4 v2, 0x1

    if-eqz p2, :cond_19

    invoke-static {p1}, Lk6/i;->A(Li5/p;)Li5/p;

    move-result-object v1

    invoke-static {v1, p2}, Lr5/v;->c(Li5/l;Li5/l;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_18

    :cond_12
    sget-object v1, Li5/s;->c:Li5/t;

    invoke-virtual {v1, p0, p1, p2, v0}, Li5/t;->c(Ls6/g;Li5/p;Li5/l;Z)Z

    move-result v2

    :goto_18
    return v2

    :cond_19
    invoke-static {v2}, Lr5/v;->a(I)V

    throw v1

    :cond_1d
    invoke-static {v0}, Lr5/v;->a(I)V

    throw v1
.end method

.method public static c(Li5/l;Li5/l;)Z
    .registers 4

    const-class v0, Li5/h0;

    const/4 v1, 0x0

    if-eqz p0, :cond_2d

    if-eqz p1, :cond_28

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk6/i;->k(Li5/l;Ljava/lang/Class;Z)Li5/l;

    move-result-object p0

    check-cast p0, Li5/h0;

    invoke-static {p1, v0, v1}, Lk6/i;->k(Li5/l;Ljava/lang/Class;Z)Li5/l;

    move-result-object p1

    check-cast p1, Li5/h0;

    if-eqz p1, :cond_27

    if-eqz p0, :cond_27

    invoke-interface {p0}, Li5/h0;->e()Lh6/c;

    move-result-object p0

    invoke-interface {p1}, Li5/h0;->e()Lh6/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh6/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1

    :cond_28
    const/4 p0, 0x3

    invoke-static {p0}, Lr5/v;->a(I)V

    throw v1

    :cond_2d
    const/4 p0, 0x2

    invoke-static {p0}, Lr5/v;->a(I)V

    throw v1
.end method

.method public static d(Li5/t;)V
    .registers 3

    sget-object v0, Lr5/v;->d:Ljava/util/Map;

    move-object v1, p0

    check-cast v1, Li5/q;

    iget-object v1, v1, Li5/q;->a:Li5/i1;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
