.class Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;
.super Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# annotations
.annotation build Landroidx/annotation/BinderThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/desktopmode/DesktopModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IDesktopModeImpl"
.end annotation


# instance fields
.field private mController:Lcom/android/wm/shell/desktopmode/DesktopModeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->mController:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    return-void
.end method

.method public static synthetic a(ILcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->lambda$showDesktopApps$0(ILcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void
.end method

.method public static synthetic b([IILcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->lambda$getVisibleTaskCount$1([IILcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void
.end method

.method private static synthetic lambda$getVisibleTaskCount$1([IILcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 3

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->getVisibleTaskCount(I)I

    move-result p1

    const/4 p2, 0x0

    aput p1, p0, p2

    return-void
.end method

.method private static synthetic lambda$showDesktopApps$0(ILcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->showDesktopApps(I)V

    return-void
.end method


# virtual methods
.method public getVisibleTaskCount(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->mController:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    new-instance v2, Lcom/android/wm/shell/desktopmode/d;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lcom/android/wm/shell/desktopmode/d;-><init>([III)V

    const-string p1, "getVisibleTaskCount"

    invoke-static {p0, p1, v2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget p0, v1, v3

    return p0
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->mController:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    return-void
.end method

.method public showDesktopApps(I)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;->mController:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    new-instance v0, Lcom/android/wm/shell/desktopmode/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/desktopmode/c;-><init>(II)V

    const-string/jumbo p1, "showDesktopApps"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
