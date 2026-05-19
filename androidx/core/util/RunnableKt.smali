.class public final Landroidx/core/util/RunnableKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final asRunnable(Ll4/d;)Ljava/lang/Runnable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/util/ContinuationRunnable;

    invoke-direct {v0, p0}, Landroidx/core/util/ContinuationRunnable;-><init>(Ll4/d;)V

    return-object v0
.end method
