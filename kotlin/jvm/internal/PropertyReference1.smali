.class public abstract Lkotlin/jvm/internal/PropertyReference1;
.super Lkotlin/jvm/internal/PropertyReference;
.source ""

# interfaces
.implements Lz4/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/jvm/internal/PropertyReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public computeReflected()Lz4/c;
    .registers 1

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

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

    check-cast p0, Lz4/p;

    invoke-interface {p0, p1}, Lz4/p;->getDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lz4/n$b;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference1;->getGetter()Lz4/p$a;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Lz4/p$a;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lz4/n;

    move-result-object p0

    check-cast p0, Lz4/p;

    invoke-interface {p0}, Lz4/p;->getGetter()Lz4/p$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/PropertyReference1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
