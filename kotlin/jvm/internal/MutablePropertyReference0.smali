.class public abstract Lkotlin/jvm/internal/MutablePropertyReference0;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source ""

# interfaces
.implements Lz4/j;


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

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lz4/j;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public getDelegate()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lz4/n;

    move-result-object p0

    check-cast p0, Lz4/j;

    invoke-interface {p0}, Lz4/o;->getDelegate()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lz4/n$b;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->getGetter()Lz4/o$a;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Lz4/o$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lz4/n;

    move-result-object p0

    check-cast p0, Lz4/j;

    invoke-interface {p0}, Lz4/o;->getGetter()Lz4/o$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSetter()Lz4/i$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->getSetter()Lz4/j$a;

    move-result-object p0

    return-object p0
.end method

.method public getSetter()Lz4/j$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lz4/n;

    move-result-object p0

    check-cast p0, Lz4/j;

    invoke-interface {p0}, Lz4/j;->getSetter()Lz4/j$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic set(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method
