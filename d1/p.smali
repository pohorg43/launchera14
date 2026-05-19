.class public Ld1/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/p$a;
    }
.end annotation


# instance fields
.field public final a:Ld1/r;

.field public final b:Ld1/p$a;


# direct methods
.method public constructor <init>(Landroidx/core/util/Pools$Pool;)V
    .registers 3
    .param p1  # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ld1/r;

    invoke-direct {v0, p1}, Ld1/r;-><init>(Landroidx/core/util/Pools$Pool;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ld1/p$a;

    invoke-direct {p1}, Ld1/p$a;-><init>()V

    iput-object p1, p0, Ld1/p;->b:Ld1/p$a;

    iput-object v0, p0, Ld1/p;->a:Ld1/r;

    return-void
.end method
