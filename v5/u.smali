.class public abstract Lv5/u;
.super Lv5/l;
.source ""


# direct methods
.method public constructor <init>(Lu5/g;)V
    .registers 3

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lv5/l;-><init>(Lu5/g;Lv5/l;)V

    return-void
.end method


# virtual methods
.method public n(Lh6/f;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;)V"
        }
    .end annotation

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "result"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public p()Li5/r0;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public s(Ly5/r;Ljava/util/List;Ly6/l0;Ljava/util/List;)Lv5/l$a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/r;",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;",
            "Ly6/l0;",
            "Ljava/util/List<",
            "+",
            "Li5/e1;",
            ">;)",
            "Lv5/l$a;"
        }
    .end annotation

    const-string p0, "method"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "methodTypeParameters"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "returnType"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "valueParameters"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lv5/l$a;

    sget-object v6, Li4/y;->a:Li4/y;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lv5/l$a;-><init>(Ly6/l0;Ly6/l0;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    return-object p0
.end method
