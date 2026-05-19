.class public final Lio/branch/search/y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/y$b;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/y$b;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/branch/search/z3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/y$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/y$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/y;->Companion:Lio/branch/search/y$b;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/x;Lio/branch/search/z3;Lio/branch/search/z;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/x<",
            "Lio/branch/search/z3;",
            ">;",
            "Lio/branch/search/z3;",
            "Lio/branch/search/z;",
            ")V"
        }
    .end annotation

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configProvided"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "managerActions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/branch/search/y;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lio/branch/search/x;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/z3;

    if-nez v1, :cond_22

    goto :goto_2b

    :cond_22
    iget-wide v2, v1, Lio/branch/search/z3;->b:J

    iget-wide v4, p2, Lio/branch/search/z3;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    move-object p2, v1

    :cond_2b
    :goto_2b
    invoke-interface {p3}, Lio/branch/search/z;->a()Lio/branch/search/z3;

    move-result-object v1

    if-eqz v1, :cond_39

    iget v2, v1, Lio/branch/search/z3;->a:I

    iget v3, p2, Lio/branch/search/z3;->a:I

    if-ne v2, v3, :cond_39

    move-object p2, v1

    goto :goto_3c

    :cond_39
    invoke-interface {p3, p2}, Lio/branch/search/z;->a(Lio/branch/search/z3;)V

    :goto_3c
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "currentStatus.get()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/branch/search/z3;

    invoke-interface {p3, p2}, Lio/branch/search/z;->b(Lio/branch/search/z3;)V

    new-instance p2, Lio/branch/search/y$a;

    invoke-direct {p2, p0, p3}, Lio/branch/search/y$a;-><init>(Lio/branch/search/y;Lio/branch/search/z;)V

    invoke-virtual {p1, p2}, Lio/branch/search/x;->a(Lkotlin/jvm/functions/Function1;)Lm7/s1;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/y;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Lio/branch/search/y;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method
