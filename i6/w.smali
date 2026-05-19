.class public Li6/w;
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


# instance fields
.field public final a:Li6/n;


# direct methods
.method public constructor <init>(Li6/n;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Li6/w;->a:Li6/n;

    return-void
.end method


# virtual methods
.method public b(Li6/c;)V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Li6/w;->a:Li6/n;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getByteString(I)Li6/c;
    .registers 2

    iget-object p0, p0, Li6/w;->a:Li6/n;

    invoke-interface {p0, p1}, Li6/n;->getByteString(I)Li6/c;

    move-result-object p0

    return-object p0
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

    iget-object p0, p0, Li6/w;->a:Li6/n;

    invoke-interface {p0}, Li6/n;->getUnderlyingElements()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUnmodifiableView()Li6/n;
    .registers 1

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Li6/w$b;

    invoke-direct {v0, p0}, Li6/w$b;-><init>(Li6/w;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Li6/w$a;

    invoke-direct {v0, p0, p1}, Li6/w$a;-><init>(Li6/w;I)V

    return-object v0
.end method

.method public size()I
    .registers 1

    iget-object p0, p0, Li6/w;->a:Li6/n;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
