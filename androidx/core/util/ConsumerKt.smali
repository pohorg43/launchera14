.class public final Landroidx/core/util/ConsumerKt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation


# direct methods
.method public static final asConsumer(Ll4/d;)Ljava/util/function/Consumer;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll4/d<",
            "-TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/util/ContinuationConsumer;

    invoke-direct {v0, p0}, Landroidx/core/util/ContinuationConsumer;-><init>(Ll4/d;)V

    return-object v0
.end method
