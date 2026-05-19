.class public final Lk8/g$d;
.super Lf8/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lk8/g;


# direct methods
.method public constructor <init>(Lk8/g;)V
    .registers 4

    iput-object p1, p0, Lk8/g$d;->b:Lk8/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lk8/g;->d:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping"

    invoke-direct {p0, p1, v0}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    iget-object v0, p0, Lk8/g$d;->b:Lk8/g;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lk8/g$d;->b:Lk8/g;

    iget-wide v1, p0, Lk8/g;->l:J

    iget-wide v3, p0, Lk8/g;->k:J

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-gez v1, :cond_11

    move v1, v2

    goto :goto_17

    :cond_11
    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    iput-wide v3, p0, Lk8/g;->k:J

    move v1, v5

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_22

    if-eqz v1, :cond_1e

    invoke-static {p0}, Lk8/g;->a(Lk8/g;)V

    goto :goto_21

    :cond_1e
    invoke-virtual {p0, v5, v2, v5}, Lk8/g;->k(ZII)V

    :goto_21
    return-void

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method
