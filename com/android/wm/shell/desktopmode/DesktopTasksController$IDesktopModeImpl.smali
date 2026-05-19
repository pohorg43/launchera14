.class final Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;
.super Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# annotations
.annotation build Landroidx/annotation/BinderThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/desktopmode/DesktopTasksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IDesktopModeImpl"
.end annotation


# instance fields
.field private controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    return-void
.end method

.method public static synthetic a([IILcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->getVisibleTaskCount$lambda$1([IILcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method public static synthetic b(ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->showDesktopApps$lambda$0(ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method private static final getVisibleTaskCount$lambda$1([IILcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 4

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getVisibleTaskCount(I)I

    move-result p1

    const/4 p2, 0x0

    aput p1, p0, p2

    return-void
.end method

.method private static final showDesktopApps$lambda$0(ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->showDesktopApps(I)V

    return-void
.end method


# virtual methods
.method public getVisibleTaskCount(I)I
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance v2, Lcom/android/wm/shell/desktopmode/d;

    invoke-direct {v2, v1, p1, v0}, Lcom/android/wm/shell/desktopmode/d;-><init>([III)V

    const-string p1, "getVisibleTaskCount"

    invoke-static {p0, p1, v2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    const/4 p0, 0x0

    aget p0, v1, p0

    return p0
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    return-void
.end method

.method public showDesktopApps(I)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance v0, Lcom/android/wm/shell/desktopmode/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/desktopmode/c;-><init>(II)V

    const-string/jumbo p1, "showDesktopApps"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
