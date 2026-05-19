.class public Lz0/l$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:Lc1/a;

.field public final b:Lc1/a;

.field public final c:Lc1/a;

.field public final d:Lc1/a;

.field public final e:Lz0/n;

.field public final f:Lz0/q$a;

.field public final g:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lz0/m<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc1/a;Lc1/a;Lc1/a;Lc1/a;Lz0/n;Lz0/q$a;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz0/l$b$a;

    invoke-direct {v0, p0}, Lz0/l$b$a;-><init>(Lz0/l$b;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lu1/a;->a(ILu1/a$b;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lz0/l$b;->g:Landroidx/core/util/Pools$Pool;

    iput-object p1, p0, Lz0/l$b;->a:Lc1/a;

    iput-object p2, p0, Lz0/l$b;->b:Lc1/a;

    iput-object p3, p0, Lz0/l$b;->c:Lc1/a;

    iput-object p4, p0, Lz0/l$b;->d:Lc1/a;

    iput-object p5, p0, Lz0/l$b;->e:Lz0/n;

    iput-object p6, p0, Lz0/l$b;->f:Lz0/q$a;

    return-void
.end method
