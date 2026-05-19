.class public abstract Ll5/m;
.super Lj5/b;
.source ""

# interfaces
.implements Li5/l;


# instance fields
.field public final b:Lh6/f;


# direct methods
.method public constructor <init>(Lj5/h;Lh6/f;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    if-eqz p2, :cond_b

    invoke-direct {p0, p1}, Lj5/b;-><init>(Lj5/h;)V

    iput-object p2, p0, Ll5/m;->b:Lh6/f;

    return-void

    :cond_b
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/m;->z(I)V

    throw v0

    :cond_10
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/m;->z(I)V

    throw v0
.end method

.method public static d0(Li5/l;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lj6/c;->c:Lj6/c;

    invoke-virtual {v2, p0}, Lj6/c;->p(Li5/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_40

    if-eqz p0, :cond_3b

    return-object p0

    :cond_3b
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/m;->z(I)V

    throw v0

    :catchall_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_63

    return-object p0

    :cond_63
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/m;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 10

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p0, v3, :cond_f

    if-eq p0, v2, :cond_f

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_f

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_11

    :cond_f
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_11
    if-eq p0, v3, :cond_1b

    if-eq p0, v2, :cond_1b

    if-eq p0, v1, :cond_1b

    if-eq p0, v0, :cond_1b

    move v5, v2

    goto :goto_1c

    :cond_1b
    move v5, v3

    :goto_1c
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_7a

    const-string v8, "annotations"

    aput-object v8, v5, v7

    goto :goto_35

    :pswitch_29  #0x4
    const-string v8, "descriptor"

    aput-object v8, v5, v7

    goto :goto_35

    :pswitch_2e  #0x2, 0x3, 0x5, 0x6
    aput-object v6, v5, v7

    goto :goto_35

    :pswitch_31  #0x1
    const-string v8, "name"

    aput-object v8, v5, v7

    :goto_35
    const-string v7, "toString"

    const/4 v8, 0x1

    if-eq p0, v3, :cond_4b

    if-eq p0, v2, :cond_46

    if-eq p0, v1, :cond_43

    if-eq p0, v0, :cond_43

    aput-object v6, v5, v8

    goto :goto_4f

    :cond_43
    aput-object v7, v5, v8

    goto :goto_4f

    :cond_46
    const-string v6, "getOriginal"

    aput-object v6, v5, v8

    goto :goto_4f

    :cond_4b
    const-string v6, "getName"

    aput-object v6, v5, v8

    :goto_4f
    if-eq p0, v3, :cond_61

    if-eq p0, v2, :cond_61

    const/4 v6, 0x4

    if-eq p0, v6, :cond_5f

    if-eq p0, v1, :cond_61

    if-eq p0, v0, :cond_61

    const-string v6, "<init>"

    aput-object v6, v5, v3

    goto :goto_61

    :cond_5f
    aput-object v7, v5, v3

    :cond_61
    :goto_61
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_73

    if-eq p0, v2, :cond_73

    if-eq p0, v1, :cond_73

    if-eq p0, v0, :cond_73

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_78

    :cond_73
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_78
    throw p0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_2e  #00000002
        :pswitch_2e  #00000003
        :pswitch_29  #00000004
        :pswitch_2e  #00000005
        :pswitch_2e  #00000006
    .end packed-switch
.end method


# virtual methods
.method public a()Li5/l;
    .registers 1

    return-object p0
.end method

.method public getName()Lh6/f;
    .registers 1

    iget-object p0, p0, Ll5/m;->b:Lh6/f;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/m;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ll5/m;->d0(Li5/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
