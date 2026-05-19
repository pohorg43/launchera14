.class public Lio/branch/search/i0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/i0$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/i0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/branch/search/i0;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lio/branch/search/i0$a;)V
    .registers 5
    .param p0  # Lio/branch/search/i0$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lio/branch/search/i0$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/branch/search/i0$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/i0$a;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, p0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_34

    :cond_10
    sget-object v0, Lio/branch/search/i0;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_13
    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v2, p0, Lio/branch/search/i0$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/i0$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/i0$a;->c:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, p0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :cond_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_30

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_30
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_34
    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public static a(Lio/branch/search/m;)V
    .registers 6
    .param p0  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/branch/search/i0;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/i0$a;

    iget-object v3, v2, Lio/branch/search/i0$a;->a:Ljava/lang/String;

    iget-object v4, v2, Lio/branch/search/i0$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lio/branch/search/i0$a;->c:Ljava/util/Map;

    invoke-virtual {p0, v3, v4, v2}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    :cond_1d
    sget-object p0, Lio/branch/search/i0;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lio/branch/search/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/branch/search/i0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lio/branch/search/i0;->a(Lio/branch/search/i0$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/branch/search/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lio/branch/search/i0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/branch/search/i0;->a(Lio/branch/search/i0$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
