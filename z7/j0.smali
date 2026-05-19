.class public final Lz7/j0;
.super Lz7/l0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lz7/l0<",
        "TE;",
        "Ljava/util/Set<",
        "+TE;>;",
        "Ljava/util/LinkedHashSet<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "eSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz7/l0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lz7/i0;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lz7/i0;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lz7/j0;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 1

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/util/LinkedHashSet;

    const-string p0, "$this$builderSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->size()I

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Ljava/util/LinkedHashSet;

    const-string p0, "$this$checkCapacity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 2

    check-cast p1, Ljava/util/Set;

    const-string p0, "$this$collectionIterator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/util/Set;

    const-string p0, "$this$collectionSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    iget-object p0, p0, Lz7/j0;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Set;

    const-string p0, "$this$toBuilder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ljava/util/LinkedHashSet;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    move-object p0, p1

    :goto_e
    check-cast p0, Ljava/util/LinkedHashSet;

    if-eqz p0, :cond_13

    goto :goto_18

    :cond_13
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    :goto_18
    return-object p0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/LinkedHashSet;

    const-string p0, "$this$toResult"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public k(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/util/LinkedHashSet;

    const-string p0, "$this$insert"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
