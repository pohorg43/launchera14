.class public final Lio/branch/search/g1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/g1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/g1$a;


# instance fields
.field public final a:Landroid/content/pm/LauncherApps;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;",
            "Lio/branch/search/j5;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/content/pm/LauncherApps$Callback;

.field public final d:Lio/branch/search/v3;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/g1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/g1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/g1;->Companion:Lio/branch/search/g1$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/branch/search/v3;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sqlManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/branch/search/g1;->d:Lio/branch/search/v3;

    const-class p2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lio/branch/search/g1;->a:Landroid/content/pm/LauncherApps;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/branch/search/g1;->b:Ljava/util/Map;

    new-instance p1, Lio/branch/search/g1$c;

    invoke-direct {p1, p0}, Lio/branch/search/g1$c;-><init>(Lio/branch/search/g1;)V

    iput-object p1, p0, Lio/branch/search/g1;->c:Landroid/content/pm/LauncherApps$Callback;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/g1;Lh4/j;)Lio/branch/search/j5;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/g1;->a(Lh4/j;)Lio/branch/search/j5;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/branch/search/g1;)Lio/branch/search/v3;
    .registers 1

    iget-object p0, p0, Lio/branch/search/g1;->d:Lio/branch/search/v3;

    return-object p0
.end method


# virtual methods
.method public final a(Lh4/j;)Lio/branch/search/j5;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;)",
            "Lio/branch/search/j5;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/branch/search/g1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2b

    new-instance v1, Lio/branch/search/j5;

    iget-object v2, p0, Lio/branch/search/g1;->d:Lio/branch/search/v3;

    invoke-virtual {v2}, Lio/branch/search/v3;->a()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "sqlManager.handler"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Ln7/f;->a:I

    const/4 v3, 0x0

    new-instance v4, Ln7/d;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Ln7/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    invoke-static {v4}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v2

    sget-object v3, Lio/branch/search/g1$b;->a:Lio/branch/search/g1$b;

    invoke-direct {v1, v2, v3}, Lio/branch/search/j5;-><init>(Lm7/j0;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    check-cast v1, Lio/branch/search/j5;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v1

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/branch/search/g1;->a:Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lio/branch/search/g1;->c:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, p0, Lio/branch/search/g1;->d:Lio/branch/search/v3;

    invoke-virtual {v2}, Lio/branch/search/v3;->a()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/branch/search/g1;->a:Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lio/branch/search/g1;->c:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    iget-object v0, p0, Lio/branch/search/g1;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/j5;

    invoke-virtual {v1}, Lio/branch/search/j5;->a()V

    goto :goto_12

    :cond_22
    iget-object v0, p0, Lio/branch/search/g1;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
