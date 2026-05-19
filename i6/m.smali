.class public Li6/m;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;
.implements Li6/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Li6/n;"
    }
.end annotation


# static fields
.field public static final b:Li6/n;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Li6/m;

    invoke-direct {v0}, Li6/m;-><init>()V

    new-instance v1, Li6/w;

    invoke-direct {v1, v0}, Li6/w;-><init>(Li6/n;)V

    sput-object v1, Li6/m;->b:Li6/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li6/m;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Li6/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Li6/m;->a:Ljava/util/List;

    invoke-virtual {p0}, Li6/m;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Li6/m;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_7
    instance-of v0, p0, Li6/c;

    if-eqz v0, :cond_12

    check-cast p0, Li6/c;

    invoke-virtual {p0}, Li6/c;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    check-cast p0, [B

    sget-object v0, Li6/i;->a:[B

    :try_start_16
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p2, Li6/n;

    if-eqz v0, :cond_a

    check-cast p2, Li6/n;

    invoke-interface {p2}, Li6/n;->getUnderlyingElements()Ljava/util/List;

    move-result-object p2

    :cond_a
    iget-object v0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Li6/m;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Li6/m;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public b(Li6/c;)V
    .registers 3

    iget-object v0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/lang/String;

    goto :goto_3d

    :cond_d
    instance-of v1, v0, Li6/c;

    if-eqz v1, :cond_24

    check-cast v0, Li6/c;

    invoke-virtual {v0}, Li6/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Li6/c;->k()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_22
    :goto_22
    move-object v0, v1

    goto :goto_3d

    :cond_24
    check-cast v0, [B

    sget-object v1, Li6/i;->a:[B

    :try_start_28
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_28 .. :try_end_2f} :catch_3e

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Le2/c;->e([BII)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :goto_3d
    return-object v0

    :catch_3e
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 not supported?"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getByteString(I)Li6/c;
    .registers 7

    iget-object v0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li6/c;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Li6/c;

    goto :goto_2b

    :cond_e
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Li6/c;->d(Ljava/lang/String;)Li6/c;

    move-result-object v1

    goto :goto_2b

    :cond_1a
    move-object v1, v0

    check-cast v1, [B

    sget-object v2, Li6/c;->a:Li6/c;

    array-length v2, v1

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Li6/o;

    invoke-direct {v1, v3}, Li6/o;-><init>([B)V

    :goto_2b
    if-eq v1, v0, :cond_32

    iget-object p0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_32
    return-object v1
.end method

.method public getUnderlyingElements()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Li6/m;->a:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUnmodifiableView()Li6/n;
    .registers 2

    new-instance v0, Li6/w;

    invoke-direct {v0, p0}, Li6/w;-><init>(Li6/n;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Li6/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Li6/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .registers 1

    iget-object p0, p0, Li6/m;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
