.class public final Lf2/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$nullable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_16

    :cond_10
    new-instance v0, Lz7/s0;

    invoke-direct {v0, p0}, Lz7/s0;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object p0, v0

    :goto_16
    return-object p0
.end method

.method public static final b(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/StringCompanionObject;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$serializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lz7/k1;->b:Lz7/k1;

    return-object p0
.end method
