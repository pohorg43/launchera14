.class Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;
.super Lcom/android/wm/shell/back/IBackAnimation$Stub;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/back/BackAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IBackAnimationImpl"
.end annotation


# instance fields
.field private mController:Lcom/android/wm/shell/back/BackAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/back/IBackAnimation$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->lambda$clearBackToLauncherCallback$1(Lcom/android/wm/shell/back/BackAnimationController;)V

    return-void
.end method

.method public static synthetic b(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->lambda$setBackToLauncherCallback$0(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Lcom/android/wm/shell/back/BackAnimationController;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/internal/view/AppearanceRegion;Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->lambda$customizeStatusBarAppearance$2(Lcom/android/internal/view/AppearanceRegion;Lcom/android/wm/shell/back/BackAnimationController;)V

    return-void
.end method

.method private static synthetic lambda$clearBackToLauncherCallback$1(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->unregisterAnimation(I)V

    return-void
.end method

.method private static synthetic lambda$customizeStatusBarAppearance$2(Lcom/android/internal/view/AppearanceRegion;Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 2

    invoke-static {p1, p0}, Lcom/android/wm/shell/back/BackAnimationController;->access$1100(Lcom/android/wm/shell/back/BackAnimationController;Lcom/android/internal/view/AppearanceRegion;)V

    return-void
.end method

.method private static synthetic lambda$setBackToLauncherCallback$0(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 4

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationRunner;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->registerAnimation(ILcom/android/wm/shell/back/BackAnimationRunner;)V

    return-void
.end method


# virtual methods
.method public clearBackToLauncherCallback()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    sget-object v0, Lcom/android/wm/shell/back/j;->a:Lcom/android/wm/shell/back/j;

    const-string v1, "clearBackToLauncherCallback"

    invoke-static {p0, v1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public customizeStatusBarAppearance(Lcom/android/internal/view/AppearanceRegion;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    new-instance v0, Lcom/android/wm/shell/back/i;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/back/i;-><init>(Lcom/android/internal/view/AppearanceRegion;)V

    const-string/jumbo p1, "useLauncherSysBarFlags"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    return-void
.end method

.method public setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    new-instance v0, Lcom/android/wm/shell/back/h;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/back/h;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    const-string/jumbo p1, "setBackToLauncherCallback"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
