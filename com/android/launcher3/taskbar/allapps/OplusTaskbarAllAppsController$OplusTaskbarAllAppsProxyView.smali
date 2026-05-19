.class final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;
.super Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OplusTaskbarAllAppsProxyView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController<",
        "TT;>.TaskbarAllAppsProxyView;"
    }
.end annotation


# instance fields
.field private mFromStartApp:Z

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getMFromStartApp$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->mFromStartApp:Z

    return p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->handleClose$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->handleClose$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    return-object p0
.end method

.method private static final handleClose$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    return-object p0
.end method

.method private static final handleClose$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final closeWhenStartApp(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->mFromStartApp:Z

    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->mFromStartApp:Z

    return-void
.end method

.method public handleClose(Z)V
    .registers 5

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/AppLauncher;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$1;->INSTANCE:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$1;

    new-instance v2, Lcom/android/launcher3/taskbar/allapps/c;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/allapps/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$2;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;Z)V

    new-instance p0, Lcom/android/launcher3/taskbar/allapps/b;

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/allapps/b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
