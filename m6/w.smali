.class public final Lm6/w;
.super Lm6/b;
.source ""


# instance fields
.field public final c:Ly6/l0;


# direct methods
.method public constructor <init>(Ljava/util/List;Ly6/l0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lm6/g<",
            "*>;>;",
            "Ly6/l0;",
            ")V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm6/w$a;

    invoke-direct {v0, p2}, Lm6/w$a;-><init>(Ly6/l0;)V

    invoke-direct {p0, p1, v0}, Lm6/b;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lm6/w;->c:Ly6/l0;

    return-void
.end method
