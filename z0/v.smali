.class public final Lz0/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz0/w;
.implements Lu1/a$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz0/w<",
        "TZ;>;",
        "Lu1/a$d;"
    }
.end annotation


# static fields
.field public static final e:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lz0/v<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lu1/d;

.field public b:Lz0/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/w<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lz0/v$a;

    invoke-direct {v0}, Lz0/v$a;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lu1/a;->a(ILu1/a$b;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lz0/v;->e:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu1/d$b;

    invoke-direct {v0}, Lu1/d$b;-><init>()V

    iput-object v0, p0, Lz0/v;->a:Lu1/d;

    return-void
.end method

.method public static c(Lz0/w;)Lz0/v;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lz0/w<",
            "TZ;>;)",
            "Lz0/v<",
            "TZ;>;"
        }
    .end annotation

    sget-object v0, Lz0/v;->e:Landroidx/core/util/Pools$Pool;

    check-cast v0, Lu1/a$c;

    invoke-virtual {v0}, Lu1/a$c;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/v;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz0/v;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lz0/v;->c:Z

    iput-object p0, v0, Lz0/v;->b:Lz0/w;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 1

    iget-object p0, p0, Lz0/v;->b:Lz0/w;

    invoke-interface {p0}, Lz0/w;->a()I

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object p0, p0, Lz0/v;->b:Lz0/w;

    invoke-interface {p0}, Lz0/w;->b()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public d()Lu1/d;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lz0/v;->a:Lu1/d;

    return-object p0
.end method

.method public declared-synchronized e()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lz0/v;->a:Lu1/d;

    invoke-virtual {v0}, Lu1/d;->a()V

    iget-boolean v0, p0, Lz0/v;->c:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz0/v;->c:Z

    iget-boolean v0, p0, Lz0/v;->d:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lz0/v;->recycle()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1e

    :cond_14
    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object p0, p0, Lz0/v;->b:Lz0/w;

    invoke-interface {p0}, Lz0/w;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized recycle()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lz0/v;->a:Lu1/d;

    invoke-virtual {v0}, Lu1/d;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz0/v;->d:Z

    iget-boolean v0, p0, Lz0/v;->c:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lz0/v;->b:Lz0/w;

    invoke-interface {v0}, Lz0/w;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz0/v;->b:Lz0/w;

    sget-object v0, Lz0/v;->e:Landroidx/core/util/Pools$Pool;

    check-cast v0, Lu1/a$c;

    invoke-virtual {v0, p0}, Lu1/a$c;->release(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
