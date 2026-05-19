.class public abstract Lk6/m;
.super Lk6/n;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lk6/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Li5/b;Li5/b;)V
    .registers 4

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lk6/m;->e(Li5/b;Li5/b;)V

    return-void
.end method

.method public c(Li5/b;Li5/b;)V
    .registers 4

    const-string v0, "fromSuper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromCurrent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lk6/m;->e(Li5/b;Li5/b;)V

    return-void
.end method

.method public abstract e(Li5/b;Li5/b;)V
.end method
