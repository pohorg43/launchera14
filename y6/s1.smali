.class public Ly6/s1;
.super Ly6/r1;
.source ""


# instance fields
.field public final a:Ly6/e2;

.field public final b:Ly6/l0;


# direct methods
.method public constructor <init>(Ly6/e2;Ly6/l0;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    if-eqz p2, :cond_d

    invoke-direct {p0}, Ly6/r1;-><init>()V

    iput-object p1, p0, Ly6/s1;->a:Ly6/e2;

    iput-object p2, p0, Ly6/s1;->b:Ly6/l0;

    return-void

    :cond_d
    const/4 p0, 0x1

    invoke-static {p0}, Ly6/s1;->d(I)V

    throw v0

    :cond_12
    const/4 p0, 0x0

    invoke-static {p0}, Ly6/s1;->d(I)V

    throw v0
.end method

.method public constructor <init>(Ly6/l0;)V
    .registers 3

    if-eqz p1, :cond_8

    sget-object v0, Ly6/e2;->c:Ly6/e2;

    invoke-direct {p0, v0, p1}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    return-void

    :cond_8
    const/4 p0, 0x2

    invoke-static {p0}, Ly6/s1;->d(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic d(I)V
    .registers 10

    const/4 v0, 0x5

    const/4 v1, 0x4

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

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_6a

    const-string v8, "projection"

    aput-object v8, v5, v7

    goto :goto_2d

    :pswitch_21  #0x6
    const-string v8, "kotlinTypeRefiner"

    aput-object v8, v5, v7

    goto :goto_2d

    :pswitch_26  #0x4, 0x5
    aput-object v6, v5, v7

    goto :goto_2d

    :pswitch_29  #0x1, 0x2, 0x3
    const-string v8, "type"

    aput-object v8, v5, v7

    :goto_2d
    const/4 v7, 0x1

    if-eq p0, v1, :cond_3a

    if-eq p0, v0, :cond_35

    aput-object v6, v5, v7

    goto :goto_3e

    :cond_35
    const-string v6, "getType"

    aput-object v6, v5, v7

    goto :goto_3e

    :cond_3a
    const-string v6, "getProjectionKind"

    aput-object v6, v5, v7

    :goto_3e
    if-eq p0, v3, :cond_51

    if-eq p0, v1, :cond_55

    if-eq p0, v0, :cond_55

    const/4 v3, 0x6

    if-eq p0, v3, :cond_4c

    const-string v3, "<init>"

    aput-object v3, v5, v4

    goto :goto_55

    :cond_4c
    const-string v3, "refine"

    aput-object v3, v5, v4

    goto :goto_55

    :cond_51
    const-string v3, "replaceType"

    aput-object v3, v5, v4

    :cond_55
    :goto_55
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_63

    if-eq p0, v0, :cond_63

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_68

    :cond_63
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_68
    throw p0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_29  #00000002
        :pswitch_29  #00000003
        :pswitch_26  #00000004
        :pswitch_26  #00000005
        :pswitch_21  #00000006
    .end packed-switch
.end method


# virtual methods
.method public a(Lz6/f;)Ly6/q1;
    .registers 4

    if-eqz p1, :cond_10

    new-instance v0, Ly6/s1;

    iget-object v1, p0, Ly6/s1;->a:Ly6/e2;

    iget-object p0, p0, Ly6/s1;->b:Ly6/l0;

    invoke-virtual {p1, p0}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    return-object v0

    :cond_10
    const/4 p0, 0x6

    invoke-static {p0}, Ly6/s1;->d(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public b()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public c()Ly6/e2;
    .registers 1

    iget-object p0, p0, Ly6/s1;->a:Ly6/e2;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x4

    invoke-static {p0}, Ly6/s1;->d(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getType()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ly6/s1;->b:Ly6/l0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x5

    invoke-static {p0}, Ly6/s1;->d(I)V

    const/4 p0, 0x0

    throw p0
.end method
