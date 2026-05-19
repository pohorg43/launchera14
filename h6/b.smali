.class public final Lh6/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lh6/c;

.field public final b:Lh6/c;

.field public final c:Z


# direct methods
.method public constructor <init>(Lh6/c;Lh6/c;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    if-eqz p2, :cond_f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/b;->a:Lh6/c;

    iput-object p2, p0, Lh6/b;->b:Lh6/c;

    iput-boolean p3, p0, Lh6/b;->c:Z

    return-void

    :cond_f
    const/4 p0, 0x2

    invoke-static {p0}, Lh6/b;->a(I)V

    throw v0

    :cond_14
    const/4 p0, 0x1

    invoke-static {p0}, Lh6/b;->a(I)V

    throw v0
.end method

.method public constructor <init>(Lh6/c;Lh6/f;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    if-eqz p2, :cond_e

    invoke-static {p2}, Lh6/c;->k(Lh6/f;)Lh6/c;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    return-void

    :cond_e
    const/4 p0, 0x4

    invoke-static {p0}, Lh6/b;->a(I)V

    throw v0

    :cond_13
    const/4 p0, 0x3

    invoke-static {p0}, Lh6/b;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .registers 11

    const/16 v0, 0x9

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eq p0, v3, :cond_13

    if-eq p0, v2, :cond_13

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    packed-switch p0, :pswitch_data_b4

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_15

    :cond_13
    :pswitch_13  #0xd, 0xe, 0xf, 0x10
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_15
    const/4 v5, 0x2

    if-eq p0, v3, :cond_23

    if-eq p0, v2, :cond_23

    if-eq p0, v1, :cond_23

    if-eq p0, v0, :cond_23

    packed-switch p0, :pswitch_data_c0

    const/4 v6, 0x3

    goto :goto_24

    :cond_23
    :pswitch_23  #0xd, 0xe, 0xf, 0x10
    move v6, v5

    :goto_24
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/name/ClassId"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_cc

    const-string v9, "topLevelFqName"

    aput-object v9, v6, v8

    goto :goto_51

    :pswitch_31  #0xb, 0xc
    const-string v9, "string"

    aput-object v9, v6, v8

    goto :goto_51

    :pswitch_36  #0xa
    const-string v9, "segment"

    aput-object v9, v6, v8

    goto :goto_51

    :pswitch_3b  #0x8
    const-string v9, "name"

    aput-object v9, v6, v8

    goto :goto_51

    :pswitch_40  #0x5, 0x6, 0x7, 0x9, 0xd, 0xe, 0xf, 0x10
    aput-object v7, v6, v8

    goto :goto_51

    :pswitch_43  #0x4
    const-string v9, "topLevelName"

    aput-object v9, v6, v8

    goto :goto_51

    :pswitch_48  #0x2
    const-string v9, "relativeClassName"

    aput-object v9, v6, v8

    goto :goto_51

    :pswitch_4d  #0x1, 0x3
    const-string v9, "packageFqName"

    aput-object v9, v6, v8

    :goto_51
    const/4 v8, 0x1

    if-eq p0, v3, :cond_79

    if-eq p0, v2, :cond_74

    if-eq p0, v1, :cond_6f

    if-eq p0, v0, :cond_6a

    packed-switch p0, :pswitch_data_f0

    aput-object v7, v6, v8

    goto :goto_7d

    :pswitch_60  #0xf, 0x10
    const-string v7, "asFqNameString"

    aput-object v7, v6, v8

    goto :goto_7d

    :pswitch_65  #0xd, 0xe
    const-string v7, "asString"

    aput-object v7, v6, v8

    goto :goto_7d

    :cond_6a
    const-string v7, "asSingleFqName"

    aput-object v7, v6, v8

    goto :goto_7d

    :cond_6f
    const-string v7, "getShortClassName"

    aput-object v7, v6, v8

    goto :goto_7d

    :cond_74
    const-string v7, "getRelativeClassName"

    aput-object v7, v6, v8

    goto :goto_7d

    :cond_79
    const-string v7, "getPackageFqName"

    aput-object v7, v6, v8

    :goto_7d
    packed-switch p0, :pswitch_data_fc

    const-string v7, "topLevel"

    aput-object v7, v6, v5

    goto :goto_98

    :pswitch_85  #0xb, 0xc
    const-string v7, "fromString"

    aput-object v7, v6, v5

    goto :goto_98

    :pswitch_8a  #0xa
    const-string v7, "startsWith"

    aput-object v7, v6, v5

    goto :goto_98

    :pswitch_8f  #0x8
    const-string v7, "createNestedClassId"

    aput-object v7, v6, v5

    goto :goto_98

    :pswitch_94  #0x1, 0x2, 0x3, 0x4
    const-string v7, "<init>"

    aput-object v7, v6, v5

    :goto_98
    :pswitch_98  #0x5, 0x6, 0x7, 0x9, 0xd, 0xe, 0xf, 0x10
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_ad

    if-eq p0, v2, :cond_ad

    if-eq p0, v1, :cond_ad

    if-eq p0, v0, :cond_ad

    packed-switch p0, :pswitch_data_120

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b2

    :cond_ad
    :pswitch_ad  #0xd, 0xe, 0xf, 0x10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_b2
    throw p0

    nop

    :pswitch_data_b4
    .packed-switch 0xd
        :pswitch_13  #0000000d
        :pswitch_13  #0000000e
        :pswitch_13  #0000000f
        :pswitch_13  #00000010
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0xd
        :pswitch_23  #0000000d
        :pswitch_23  #0000000e
        :pswitch_23  #0000000f
        :pswitch_23  #00000010
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_48  #00000002
        :pswitch_4d  #00000003
        :pswitch_43  #00000004
        :pswitch_40  #00000005
        :pswitch_40  #00000006
        :pswitch_40  #00000007
        :pswitch_3b  #00000008
        :pswitch_40  #00000009
        :pswitch_36  #0000000a
        :pswitch_31  #0000000b
        :pswitch_31  #0000000c
        :pswitch_40  #0000000d
        :pswitch_40  #0000000e
        :pswitch_40  #0000000f
        :pswitch_40  #00000010
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0xd
        :pswitch_65  #0000000d
        :pswitch_65  #0000000e
        :pswitch_60  #0000000f
        :pswitch_60  #00000010
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_94  #00000001
        :pswitch_94  #00000002
        :pswitch_94  #00000003
        :pswitch_94  #00000004
        :pswitch_98  #00000005
        :pswitch_98  #00000006
        :pswitch_98  #00000007
        :pswitch_8f  #00000008
        :pswitch_98  #00000009
        :pswitch_8a  #0000000a
        :pswitch_85  #0000000b
        :pswitch_85  #0000000c
        :pswitch_98  #0000000d
        :pswitch_98  #0000000e
        :pswitch_98  #0000000f
        :pswitch_98  #00000010
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0xd
        :pswitch_ad  #0000000d
        :pswitch_ad  #0000000e
        :pswitch_ad  #0000000f
        :pswitch_ad  #00000010
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;)Lh6/b;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lh6/b;->f(Ljava/lang/String;Z)Lh6/b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Z)Lh6/b;
    .registers 6

    if-eqz p0, :cond_32

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const-string v0, ""

    goto :goto_22

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, v1

    :goto_22
    new-instance v1, Lh6/b;

    new-instance v2, Lh6/c;

    invoke-direct {v2, v0}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Lh6/c;

    invoke-direct {v0, p0}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, p1}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    return-object v1

    :cond_32
    const/16 p0, 0xc

    invoke-static {p0}, Lh6/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static l(Lh6/c;)Lh6/b;
    .registers 3

    if-eqz p0, :cond_10

    new-instance v0, Lh6/b;

    invoke-virtual {p0}, Lh6/c;->e()Lh6/c;

    move-result-object v1

    invoke-virtual {p0}, Lh6/c;->g()Lh6/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    return-object v0

    :cond_10
    const/4 p0, 0x0

    invoke-static {p0}, Lh6/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public b()Lh6/c;
    .registers 4

    iget-object v0, p0, Lh6/b;->a:Lh6/c;

    invoke-virtual {v0}, Lh6/c;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lh6/b;->b:Lh6/c;

    if-eqz p0, :cond_d

    return-object p0

    :cond_d
    const/16 p0, 0x9

    invoke-static {p0}, Lh6/b;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_14
    new-instance v0, Lh6/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lh6/b;->a:Lh6/c;

    invoke-virtual {v2}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh6/b;->b:Lh6/c;

    invoke-virtual {p0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lh6/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lh6/b;->a:Lh6/c;

    invoke-virtual {v0}, Lh6/c;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lh6/b;->b:Lh6/c;

    invoke-virtual {p0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    return-object p0

    :cond_12
    const/16 p0, 0xd

    invoke-static {p0}, Lh6/b;->a(I)V

    throw v1

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lh6/b;->a:Lh6/c;

    invoke-virtual {v2}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh6/b;->b:Lh6/c;

    invoke-virtual {p0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_43

    return-object p0

    :cond_43
    const/16 p0, 0xe

    invoke-static {p0}, Lh6/b;->a(I)V

    throw v1
.end method

.method public d(Lh6/f;)Lh6/b;
    .registers 5

    if-eqz p1, :cond_14

    new-instance v0, Lh6/b;

    invoke-virtual {p0}, Lh6/b;->h()Lh6/c;

    move-result-object v1

    iget-object v2, p0, Lh6/b;->b:Lh6/c;

    invoke-virtual {v2, p1}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object p1

    iget-boolean p0, p0, Lh6/b;->c:Z

    invoke-direct {v0, v1, p1, p0}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    return-object v0

    :cond_14
    const/16 p0, 0x8

    invoke-static {p0}, Lh6/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    const-class v2, Lh6/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2f

    :cond_10
    check-cast p1, Lh6/b;

    iget-object v2, p0, Lh6/b;->a:Lh6/c;

    iget-object v3, p1, Lh6/b;->a:Lh6/c;

    invoke-virtual {v2, v3}, Lh6/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lh6/b;->b:Lh6/c;

    iget-object v3, p1, Lh6/b;->b:Lh6/c;

    invoke-virtual {v2, v3}, Lh6/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-boolean p0, p0, Lh6/b;->c:Z

    iget-boolean p1, p1, Lh6/b;->c:Z

    if-ne p0, p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public g()Lh6/b;
    .registers 4

    iget-object v0, p0, Lh6/b;->b:Lh6/c;

    invoke-virtual {v0}, Lh6/c;->e()Lh6/c;

    move-result-object v0

    invoke-virtual {v0}, Lh6/c;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    goto :goto_1a

    :cond_e
    new-instance v1, Lh6/b;

    invoke-virtual {p0}, Lh6/b;->h()Lh6/c;

    move-result-object v2

    iget-boolean p0, p0, Lh6/b;->c:Z

    invoke-direct {v1, v2, v0, p0}, Lh6/b;-><init>(Lh6/c;Lh6/c;Z)V

    move-object p0, v1

    :goto_1a
    return-object p0
.end method

.method public h()Lh6/c;
    .registers 1

    iget-object p0, p0, Lh6/b;->a:Lh6/c;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x5

    invoke-static {p0}, Lh6/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lh6/b;->a:Lh6/c;

    invoke-virtual {v0}, Lh6/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lh6/b;->b:Lh6/c;

    invoke-virtual {v1}, Lh6/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lh6/b;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public i()Lh6/c;
    .registers 1

    iget-object p0, p0, Lh6/b;->b:Lh6/c;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x6

    invoke-static {p0}, Lh6/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public j()Lh6/f;
    .registers 1

    iget-object p0, p0, Lh6/b;->b:Lh6/c;

    invoke-virtual {p0}, Lh6/c;->g()Lh6/f;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x7

    invoke-static {p0}, Lh6/b;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public k()Z
    .registers 1

    iget-object p0, p0, Lh6/b;->b:Lh6/c;

    invoke-virtual {p0}, Lh6/c;->e()Lh6/c;

    move-result-object p0

    invoke-virtual {p0}, Lh6/c;->d()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh6/b;->a:Lh6/c;

    invoke-virtual {v0}, Lh6/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "/"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lh6/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Lh6/b;->c()Ljava/lang/String;

    move-result-object p0

    :goto_1e
    return-object p0
.end method
