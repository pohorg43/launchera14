.class public abstract Lkotlin/jvm/internal/MutablePropertyReference2;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source ""

# interfaces
.implements Lz4/l;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    sget-object v1, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public computeReflected()Lz4/c;
    .registers 1

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lz4/l;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TV;"
        }
    .end annotation
.end method

.method public getDelegate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lz4/n;

    move-result-object p0

    check-cast p0, Lz4/l;

    invoke-interface {p0, p1, p2}, Lz4/q;->getDelegate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lz4/n$b;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference2;->getGetter()Lz4/q$a;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Lz4/q$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lz4/n;

    move-result-object p0

    check-cast p0, Lz4/l;

    invoke-interface {p0}, Lz4/q;->getGetter()Lz4/q$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSetter()Lz4/i$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference2;->getSetter()Lz4/l$a;

    move-result-object p0

    return-object p0
.end method

.method public getSetter()Lz4/l$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lz4/n;

    move-result-object p0

    check-cast p0, Lz4/l;

    invoke-interface {p0}, Lz4/l;->getSetter()Lz4/l$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lkotlin/jvm/internal/MutablePropertyReference2;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;TV;)V"
        }
    .end annotation
.end method
