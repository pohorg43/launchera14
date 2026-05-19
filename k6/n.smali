.class public abstract Lk6/n;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Li5/b;)V
.end method

.method public abstract b(Li5/b;Li5/b;)V
.end method

.method public abstract c(Li5/b;Li5/b;)V
.end method

.method public d(Li5/b;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/b;",
            "Ljava/util/Collection<",
            "+",
            "Li5/b;",
            ">;)V"
        }
    .end annotation

    const-string p0, "member"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "overridden"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Li5/b;->w0(Ljava/util/Collection;)V

    return-void
.end method
