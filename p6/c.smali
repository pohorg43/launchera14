.class public Lp6/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6/c;->a:Ljava/lang/String;

    return-void

    :cond_8
    const/4 p0, 0x5

    invoke-static {p0}, Lp6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .registers 11

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-eq p0, v3, :cond_10

    if-eq p0, v2, :cond_10

    if-eq p0, v1, :cond_10

    if-eq p0, v0, :cond_10

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_12

    :cond_10
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_12
    const/4 v5, 0x2

    if-eq p0, v3, :cond_1d

    if-eq p0, v2, :cond_1d

    if-eq p0, v1, :cond_1d

    if-eq p0, v0, :cond_1d

    move v6, v3

    goto :goto_1e

    :cond_1d
    move v6, v5

    :goto_1e
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_82

    :pswitch_26  #0x5
    const-string v9, "internalName"

    aput-object v9, v6, v8

    goto :goto_37

    :pswitch_2b  #0x3, 0x6, 0x7, 0x8
    aput-object v7, v6, v8

    goto :goto_37

    :pswitch_2e  #0x2, 0x4
    const-string v9, "fqName"

    aput-object v9, v6, v8

    goto :goto_37

    :pswitch_33  #0x1
    const-string v9, "classId"

    aput-object v9, v6, v8

    :goto_37
    const-string v8, "byFqNameWithoutInnerClasses"

    const/4 v9, 0x1

    if-eq p0, v3, :cond_54

    if-eq p0, v2, :cond_4f

    if-eq p0, v1, :cond_4a

    if-eq p0, v0, :cond_45

    aput-object v7, v6, v9

    goto :goto_56

    :cond_45
    const-string v7, "getInternalName"

    aput-object v7, v6, v9

    goto :goto_56

    :cond_4a
    const-string v7, "getPackageFqName"

    aput-object v7, v6, v9

    goto :goto_56

    :cond_4f
    const-string v7, "getFqNameForClassNameWithoutDollars"

    aput-object v7, v6, v9

    goto :goto_56

    :cond_54
    aput-object v8, v6, v9

    :goto_56
    packed-switch p0, :pswitch_data_96

    const-string v7, "byInternalName"

    aput-object v7, v6, v5

    goto :goto_6a

    :pswitch_5e  #0x5
    const-string v7, "<init>"

    aput-object v7, v6, v5

    goto :goto_6a

    :pswitch_63  #0x2, 0x4
    aput-object v8, v6, v5

    goto :goto_6a

    :pswitch_66  #0x1
    const-string v7, "byClassId"

    aput-object v7, v6, v5

    :goto_6a
    :pswitch_6a  #0x3, 0x6, 0x7, 0x8
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_7c

    if-eq p0, v2, :cond_7c

    if-eq p0, v1, :cond_7c

    if-eq p0, v0, :cond_7c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_81

    :cond_7c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_81
    throw p0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_33  #00000001
        :pswitch_2e  #00000002
        :pswitch_2b  #00000003
        :pswitch_2e  #00000004
        :pswitch_26  #00000005
        :pswitch_2b  #00000006
        :pswitch_2b  #00000007
        :pswitch_2b  #00000008
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_66  #00000001
        :pswitch_63  #00000002
        :pswitch_6a  #00000003
        :pswitch_63  #00000004
        :pswitch_5e  #00000005
        :pswitch_6a  #00000006
        :pswitch_6a  #00000007
        :pswitch_6a  #00000008
    .end packed-switch
.end method

.method public static b(Lh6/b;)Lp6/c;
    .registers 6

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Lh6/b;->h()Lh6/c;

    move-result-object v0

    invoke-virtual {p0}, Lh6/b;->i()Lh6/c;

    move-result-object p0

    invoke-virtual {p0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lh6/c;->d()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lp6/c;

    invoke-direct {v0, p0}, Lp6/c;-><init>(Ljava/lang/String;)V

    goto :goto_46

    :cond_22
    new-instance v1, Lp6/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lp6/c;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_46
    return-object v0

    :cond_47
    const/4 p0, 0x1

    invoke-static {p0}, Lp6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Lh6/c;)Lp6/c;
    .registers 4

    if-eqz p0, :cond_14

    new-instance v0, Lp6/c;

    invoke-virtual {p0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp6/c;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_14
    const/4 p0, 0x2

    invoke-static {p0}, Lp6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Ljava/lang/String;)Lp6/c;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lp6/c;

    invoke-direct {v0, p0}, Lp6/c;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    invoke-static {p0}, Lp6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lp6/c;->a:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x8

    invoke-static {p0}, Lp6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_1a

    const-class v0, Lp6/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    iget-object p0, p0, Lp6/c;->a:Ljava/lang/String;

    check-cast p1, Lp6/c;

    iget-object p1, p1, Lp6/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lp6/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lp6/c;->a:Ljava/lang/String;

    return-object p0
.end method
