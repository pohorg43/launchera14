.class public final Lh4/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Result.kt\nkotlin/ResultKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,340:1\n1#2:341\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 2

    const-string v0, "exception"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh4/k$a;

    invoke-direct {v0, p0}, Lh4/k$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)V
    .registers 2

    instance-of v0, p0, Lh4/k$a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p0, Lh4/k$a;

    iget-object p0, p0, Lh4/k$a;->a:Ljava/lang/Throwable;

    throw p0
.end method
