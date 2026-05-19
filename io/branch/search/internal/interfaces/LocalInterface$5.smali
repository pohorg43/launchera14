.class public Lio/branch/search/internal/interfaces/LocalInterface$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/interfaces/LocalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$5;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$5;->a:Z

    return-void
.end method


# virtual methods
.method public onForeground()V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$5;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v1, v0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lio/branch/search/internal/interfaces/LocalInterface$5;->a:Z

    if-eqz v1, :cond_b

    goto :goto_26

    :cond_b
    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/Util;->isDefaultLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$5;->a:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$5;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/branch/search/v3;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$5;->a:Z

    :cond_26
    :goto_26
    return-void
.end method
