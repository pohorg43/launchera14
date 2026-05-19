.class public La4/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lz7/b;Ly7/b;Ljava/lang/String;)Lw7/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz7/b<",
            "TT;>;",
            "Ly7/b;",
            "Ljava/lang/String;",
            ")",
            "Lw7/a<",
            "+TT;>;"
        }
    .end annotation

    const-string v0, "$this$findPolymorphicSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lz7/b;->a(Ly7/b;Ljava/lang/String;)Lw7/a;

    move-result-object p1

    if-eqz p1, :cond_11

    return-object p1

    :cond_11
    invoke-virtual {p0}, Lz7/b;->c()Lz4/d;

    move-result-object p0

    invoke-static {p2, p0}, Lz7/c;->a(Ljava/lang/String;Lz4/d;)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public static final b(Lz7/b;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lw7/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz7/b<",
            "TT;>;",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TT;)",
            "Lw7/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$findPolymorphicSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lz7/b;->b(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lw7/h;

    move-result-object p1

    if-eqz p1, :cond_16

    return-object p1

    :cond_16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p1

    invoke-virtual {p0}, Lz7/b;->c()Lz4/d;

    move-result-object p0

    const-string p2, "subClass"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "baseClass"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lz4/d;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_33

    goto :goto_37

    :cond_33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_37
    invoke-static {p2, p0}, Lz7/c;->a(Ljava/lang/String;Lz4/d;)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method
