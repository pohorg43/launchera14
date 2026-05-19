.class public abstract Lkotlin/jvm/internal/MutablePropertyReference1;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source ""

# interfaces
.implements Lz4/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public computeReflected()Lz4/c;
    .registers 1

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lz4/k;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lz4/n;

    move-result-object p0

    check-cast p0, Lz4/k;

    invoke-interface {p0, p1}, Lz4/p;->getDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lz4/n$b;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference1;->getGetter()Lz4/p$a;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Lz4/p$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lz4/n;

    move-result-object p0

    check-cast p0, Lz4/k;

    invoke-interface {p0}, Lz4/p;->getGetter()Lz4/p$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSetter()Lz4/i$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference1;->getSetter()Lz4/k$a;

    move-result-object p0

    return-object p0
.end method

.method public getSetter()Lz4/k$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lz4/n;

    move-result-object p0

    check-cast p0, Lz4/k;

    invoke-interface {p0}, Lz4/k;->getSetter()Lz4/k$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation
.end method
