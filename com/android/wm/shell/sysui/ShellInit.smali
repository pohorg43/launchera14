.class public Lcom/android/wm/shell/sysui/ShellInit;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ShellInit"


# instance fields
.field private mHasInitialized:Z

.field private final mInitCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellInit;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method


# virtual methods
.method public addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/wm/shell/sysui/ShellInit;->mHasInitialized:Z

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can not add callback after init"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_INIT_enabled:Z

    if-eqz p0, :cond_39

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x7688a8ad

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Adding init callback for %s"

    invoke-static {p0, p1, v1, p2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    return-void
.end method

.method public init()V
    .registers 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_INIT_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v3, v0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x512b6a04

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "Initializing Shell Components: %d"

    invoke-static {v0, v5, v2, v3, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    invoke-static {v2}, Landroid/view/SurfaceControl;->setDebugUsageAfterRelease(Z)V

    move v0, v1

    :goto_23
    iget-object v3, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_66

    iget-object v3, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sget-boolean v8, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_INIT_enabled:Z

    if-eqz v8, :cond_63

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sub-long/2addr v6, v4

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x68069bd5

    const/4 v8, 0x4

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    const-string v3, "\t%s init took %dms"

    invoke-static {v4, v5, v8, v3, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_66
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/wm/shell/sysui/ShellInit;->mHasInitialized:Z

    return-void
.end method
