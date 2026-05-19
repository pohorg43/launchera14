.class public Lcom/android/wm/shell/common/DisplayChangeController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;,
        Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayChangeController"


# instance fields
.field private final mControllerImpl:Landroid/view/IDisplayChangeWindowController;

.field private final mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mWmService:Landroid/view/IWindowManager;

    new-instance p1, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;-><init>(Lcom/android/wm/shell/common/DisplayChangeController;Lcom/android/wm/shell/common/DisplayChangeController$1;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mControllerImpl:Landroid/view/IDisplayChangeWindowController;

    new-instance p1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/wm/shell/common/DisplayChangeController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/common/DisplayChangeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/common/DisplayChangeController;->onInit()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/common/DisplayChangeController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/common/DisplayChangeController;IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/common/DisplayChangeController;->onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V

    return-void
.end method

.method private onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .registers 13

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v0, p0

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/common/DisplayChangeController;->dispatchOnDisplayChange(Landroid/window/WindowContainerTransaction;IIILandroid/window/DisplayAreaInfo;)V

    :try_start_e
    invoke-interface {p5, v6}, Landroid/view/IDisplayChangeWindowCallback;->continueDisplayChange(Landroid/window/WindowContainerTransaction;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/common/DisplayChangeController;->TAG:Ljava/lang/String;

    const-string p2, "Failed to continue handling display change"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void
.end method

.method private onInit()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mWmService:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mControllerImpl:Landroid/view/IDisplayChangeWindowController;

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->setDisplayChangeWindowController(Landroid/view/IDisplayChangeWindowController;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to register rotation controller"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addDisplayChangeListener(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchOnDisplayChange(Landroid/window/WindowContainerTransaction;IIILandroid/window/DisplayAreaInfo;)V
    .registers 13

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;->onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public removeDisplayChangeListener(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
