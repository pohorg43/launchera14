.class public Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskbarAllAppsProxyView"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(ZLcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->lambda$handleClose$0(ZLcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V

    return-void
.end method

.method private static synthetic lambda$handleClose$0(ZLcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->close(Z)V

    return-void
.end method


# virtual methods
.method public handleClose(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/e2;->c:Lcom/android/launcher3/e2;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/i;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/i;-><init>(ZI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    const/high16 p0, 0x20000

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
