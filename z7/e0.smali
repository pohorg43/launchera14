.class public final Lz7/e0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$jsonCachedSerialNames"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$cachedSerialNames"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lz7/x0;

    if-eqz v0, :cond_19

    check-cast p0, Lz7/x0;

    invoke-virtual {p0}, Lz7/x0;->i()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_34

    :cond_19
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()I

    move-result v2

    :goto_27
    if-ge v1, v2, :cond_33

    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_33
    move-object p0, v0

    :goto_34
    return-object p0
.end method
