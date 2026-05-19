.class public final Le8/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le8/i$a;
    }
.end annotation


# static fields
.field public static final e:Le8/i;

.field public static final f:Le8/i;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 24

    const/16 v0, 0xb

    new-array v1, v0, [Le8/g;

    sget-object v2, Le8/g;->q:Le8/g;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Le8/g;->r:Le8/g;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Le8/g;->s:Le8/g;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Le8/g;->t:Le8/g;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Le8/g;->u:Le8/g;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Le8/g;->k:Le8/g;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Le8/g;->m:Le8/g;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v16, Le8/g;->l:Le8/g;

    const/16 v17, 0x7

    aput-object v16, v1, v17

    sget-object v18, Le8/g;->n:Le8/g;

    const/16 v19, 0x8

    aput-object v18, v1, v19

    sget-object v20, Le8/g;->p:Le8/g;

    const/16 v21, 0x9

    aput-object v20, v1, v21

    sget-object v22, Le8/g;->o:Le8/g;

    const/16 v23, 0xa

    aput-object v22, v1, v23

    const/16 v0, 0x12

    new-array v0, v0, [Le8/g;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    aput-object v14, v0, v15

    aput-object v16, v0, v17

    aput-object v18, v0, v19

    aput-object v20, v0, v21

    aput-object v22, v0, v23

    sget-object v2, Le8/g;->i:Le8/g;

    const/16 v4, 0xb

    aput-object v2, v0, v4

    sget-object v2, Le8/g;->j:Le8/g;

    const/16 v4, 0xc

    aput-object v2, v0, v4

    sget-object v2, Le8/g;->g:Le8/g;

    const/16 v4, 0xd

    aput-object v2, v0, v4

    sget-object v2, Le8/g;->h:Le8/g;

    const/16 v4, 0xe

    aput-object v2, v0, v4

    sget-object v2, Le8/g;->e:Le8/g;

    const/16 v4, 0xf

    aput-object v2, v0, v4

    sget-object v2, Le8/g;->f:Le8/g;

    const/16 v4, 0x10

    aput-object v2, v0, v4

    sget-object v2, Le8/g;->d:Le8/g;

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-instance v2, Le8/i$a;

    invoke-direct {v2, v5}, Le8/i$a;-><init>(Z)V

    invoke-virtual {v2, v1}, Le8/i$a;->a([Le8/g;)Le8/i$a;

    new-array v1, v7, [Le8/d0;

    sget-object v4, Le8/d0;->b:Le8/d0;

    aput-object v4, v1, v3

    sget-object v6, Le8/d0;->c:Le8/d0;

    aput-object v6, v1, v5

    invoke-virtual {v2, v1}, Le8/i$a;->d([Le8/d0;)Le8/i$a;

    invoke-virtual {v2, v5}, Le8/i$a;->c(Z)Le8/i$a;

    new-instance v1, Le8/i;

    invoke-direct {v1, v2}, Le8/i;-><init>(Le8/i$a;)V

    new-instance v1, Le8/i$a;

    invoke-direct {v1, v5}, Le8/i$a;-><init>(Z)V

    invoke-virtual {v1, v0}, Le8/i$a;->a([Le8/g;)Le8/i$a;

    new-array v2, v11, [Le8/d0;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    sget-object v4, Le8/d0;->d:Le8/d0;

    aput-object v4, v2, v7

    sget-object v4, Le8/d0;->e:Le8/d0;

    aput-object v4, v2, v9

    invoke-virtual {v1, v2}, Le8/i$a;->d([Le8/d0;)Le8/i$a;

    invoke-virtual {v1, v5}, Le8/i$a;->c(Z)Le8/i$a;

    new-instance v2, Le8/i;

    invoke-direct {v2, v1}, Le8/i;-><init>(Le8/i$a;)V

    sput-object v2, Le8/i;->e:Le8/i;

    new-instance v1, Le8/i$a;

    invoke-direct {v1, v5}, Le8/i$a;-><init>(Z)V

    invoke-virtual {v1, v0}, Le8/i$a;->a([Le8/g;)Le8/i$a;

    new-array v0, v5, [Le8/d0;

    aput-object v4, v0, v3

    invoke-virtual {v1, v0}, Le8/i$a;->d([Le8/d0;)Le8/i$a;

    invoke-virtual {v1, v5}, Le8/i$a;->c(Z)Le8/i$a;

    new-instance v0, Le8/i;

    invoke-direct {v0, v1}, Le8/i;-><init>(Le8/i$a;)V

    new-instance v0, Le8/i$a;

    invoke-direct {v0, v3}, Le8/i$a;-><init>(Z)V

    new-instance v1, Le8/i;

    invoke-direct {v1, v0}, Le8/i;-><init>(Le8/i$a;)V

    sput-object v1, Le8/i;->f:Le8/i;

    return-void
.end method

.method public constructor <init>(Le8/i$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Le8/i$a;->a:Z

    iput-boolean v0, p0, Le8/i;->a:Z

    iget-object v0, p1, Le8/i$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Le8/i;->c:[Ljava/lang/String;

    iget-object v0, p1, Le8/i$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Le8/i;->d:[Ljava/lang/String;

    iget-boolean p1, p1, Le8/i$a;->d:Z

    iput-boolean p1, p0, Le8/i;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .registers 6

    iget-boolean v0, p0, Le8/i;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Le8/i;->d:[Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v2, Lf8/c;->o:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lf8/c;->t(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget-object p0, p0, Le8/i;->c:[Ljava/lang/String;

    if-eqz p0, :cond_28

    sget-object v0, Le8/g;->b:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lf8/c;->t(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_28

    return v1

    :cond_28
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Le8/i;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    check-cast p1, Le8/i;

    iget-boolean v2, p0, Le8/i;->a:Z

    iget-boolean v3, p1, Le8/i;->a:Z

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    if-eqz v2, :cond_32

    iget-object v2, p0, Le8/i;->c:[Ljava/lang/String;

    iget-object v3, p1, Le8/i;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    :cond_20
    iget-object v2, p0, Le8/i;->d:[Ljava/lang/String;

    iget-object v3, p1, Le8/i;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_2b
    iget-boolean p0, p0, Le8/i;->b:Z

    iget-boolean p1, p1, Le8/i;->b:Z

    if-eq p0, p1, :cond_32

    return v1

    :cond_32
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Le8/i;->a:Z

    if-eqz v0, :cond_1e

    const/16 v0, 0x20f

    iget-object v1, p0, Le8/i;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le8/i;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Le8/i;->b:Z

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    goto :goto_20

    :cond_1e
    const/16 v0, 0x11

    :goto_20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget-boolean v0, p0, Le8/i;->a:Z

    if-nez v0, :cond_7

    const-string p0, "ConnectionSpec()"

    return-object p0

    :cond_7
    iget-object v0, p0, Le8/i;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "[all enabled]"

    if-eqz v0, :cond_32

    if-eqz v0, :cond_2c

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v0

    move v6, v1

    :goto_19
    if-ge v6, v5, :cond_27

    aget-object v7, v0, v6

    invoke-static {v7}, Le8/g;->a(Ljava/lang/String;)Le8/g;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_27
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v2

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_32
    move-object v0, v3

    :goto_33
    iget-object v4, p0, Le8/i;->d:[Ljava/lang/String;

    if-eqz v4, :cond_56

    if-eqz v4, :cond_52

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v4

    :goto_40
    if-ge v1, v3, :cond_4e

    aget-object v5, v4, v1

    invoke-static {v5}, Le8/d0;->a(Ljava/lang/String;)Le8/d0;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_4e
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :cond_52
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_56
    const-string v1, "ConnectionSpec(cipherSuites="

    const-string v2, ", tlsVersions="

    const-string v4, ", supportsTlsExtensions="

    invoke-static {v1, v0, v2, v3, v4}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Le8/i;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
