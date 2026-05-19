.class public abstract Ll5/j;
.super Ll5/b;
.source ""


# instance fields
.field public final e:Li5/l;

.field public final f:Li5/v0;

.field public final g:Z


# direct methods
.method public constructor <init>(Lx6/m;Li5/l;Lh6/f;Li5/v0;Z)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    if-eqz p2, :cond_1d

    if-eqz p3, :cond_18

    if-eqz p4, :cond_13

    invoke-direct {p0, p1, p3}, Ll5/b;-><init>(Lx6/m;Lh6/f;)V

    iput-object p2, p0, Ll5/j;->e:Li5/l;

    iput-object p4, p0, Ll5/j;->f:Li5/v0;

    iput-boolean p5, p0, Ll5/j;->g:Z

    return-void

    :cond_13
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/j;->x0(I)V

    throw v0

    :cond_18
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/j;->x0(I)V

    throw v0

    :cond_1d
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/j;->x0(I)V

    throw v0

    :cond_22
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/j;->x0(I)V

    throw v0
.end method

.method public static synthetic x0(I)V
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

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq p0, v7, :cond_36

    if-eq p0, v4, :cond_31

    if-eq p0, v3, :cond_2c

    if-eq p0, v1, :cond_29

    if-eq p0, v0, :cond_29

    const-string v3, "storageManager"

    aput-object v3, v5, v8

    goto :goto_3a

    :cond_29
    aput-object v6, v5, v8

    goto :goto_3a

    :cond_2c
    const-string v3, "source"

    aput-object v3, v5, v8

    goto :goto_3a

    :cond_31
    const-string v3, "name"

    aput-object v3, v5, v8

    goto :goto_3a

    :cond_36
    const-string v3, "containingDeclaration"

    aput-object v3, v5, v8

    :goto_3a
    if-eq p0, v1, :cond_46

    if-eq p0, v0, :cond_41

    aput-object v6, v5, v7

    goto :goto_4a

    :cond_41
    const-string v3, "getSource"

    aput-object v3, v5, v7

    goto :goto_4a

    :cond_46
    const-string v3, "getContainingDeclaration"

    aput-object v3, v5, v7

    :goto_4a
    if-eq p0, v1, :cond_52

    if-eq p0, v0, :cond_52

    const-string v3, "<init>"

    aput-object v3, v5, v4

    :cond_52
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_60

    if-eq p0, v0, :cond_60

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_65

    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_65
    throw p0
.end method


# virtual methods
.method public b()Li5/l;
    .registers 1

    iget-object p0, p0, Ll5/j;->e:Li5/l;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/j;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getSource()Li5/v0;
    .registers 1

    iget-object p0, p0, Ll5/j;->f:Li5/v0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/j;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public isExternal()Z
    .registers 1

    iget-boolean p0, p0, Ll5/j;->g:Z

    return p0
.end method
