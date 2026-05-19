.class public Lz0/l$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lz0/i$d;

.field public final b:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lz0/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lz0/i$d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz0/l$a$a;

    invoke-direct {v0, p0}, Lz0/l$a$a;-><init>(Lz0/l$a;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lu1/a;->a(ILu1/a$b;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lz0/l$a;->b:Landroidx/core/util/Pools$Pool;

    iput-object p1, p0, Lz0/l$a;->a:Lz0/i$d;

    return-void
.end method
