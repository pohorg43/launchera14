.class public Ll5/s;
.super Ll5/d;
.source ""


# instance fields
.field public final c:Li5/e;

.field public final d:Ls6/e;


# direct methods
.method public constructor <init>(Li5/e;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    sget v1, Lj5/h;->I:I

    sget-object v1, Lj5/h$a;->b:Lj5/h;

    invoke-direct {p0, v1}, Ll5/d;-><init>(Lj5/h;)V

    iput-object p1, p0, Ll5/s;->c:Li5/e;

    new-instance v1, Ls6/e;

    invoke-direct {v1, p1, v0}, Ls6/e;-><init>(Li5/e;Ls6/e;)V

    iput-object v1, p0, Ll5/s;->d:Ls6/e;

    return-void

    :cond_14
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/s;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    const/4 v3, 0x3

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_12

    move v4, v3

    goto :goto_13

    :cond_12
    move v4, v0

    :goto_13
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor"

    const/4 v6, 0x0

    if-eq p0, v1, :cond_28

    if-eq p0, v0, :cond_28

    if-eq p0, v3, :cond_23

    const-string v7, "descriptor"

    aput-object v7, v4, v6

    goto :goto_2a

    :cond_23
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_2a

    :cond_28
    aput-object v5, v4, v6

    :goto_2a
    if-eq p0, v1, :cond_36

    if-eq p0, v0, :cond_31

    aput-object v5, v4, v1

    goto :goto_3a

    :cond_31
    const-string v5, "getContainingDeclaration"

    aput-object v5, v4, v1

    goto :goto_3a

    :cond_36
    const-string v5, "getValue"

    aput-object v5, v4, v1

    :goto_3a
    if-eq p0, v1, :cond_49

    if-eq p0, v0, :cond_49

    if-eq p0, v3, :cond_45

    const-string v3, "<init>"

    aput-object v3, v4, v0

    goto :goto_49

    :cond_45
    const-string v3, "copy"

    aput-object v3, v4, v0

    :cond_49
    :goto_49
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_57

    if-eq p0, v0, :cond_57

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5c

    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5c
    throw p0
.end method


# virtual methods
.method public b()Li5/l;
    .registers 1

    iget-object p0, p0, Ll5/s;->c:Li5/e;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/s;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getValue()Ls6/g;
    .registers 1

    iget-object p0, p0, Ll5/s;->d:Ls6/e;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/s;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "class "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ll5/s;->c:Li5/e;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "::this"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
