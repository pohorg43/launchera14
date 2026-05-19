.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;
.super Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OplusTaskbarAllAppsDragLayer"
.end annotation


# instance fields
.field private mShowAgainRunnable:Ljava/lang/Runnable;

.field private mTaskbarAllAppsTouchHelper:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher3/taskbar/l;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->mShowAgainRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->mShowAgainRunnable$lambda$0(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;)V

    return-void
.end method

.method private final closeAllAppsWhenClickOutSidePanel(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->getSlideInView()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->close(Z)V

    :cond_22
    return-void
.end method

.method private static final mShowAgainRunnable$lambda$0(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p0, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWindowController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->show(Z)V

    :cond_14
    return-void
.end method

.method private final showAllAppsAgainWhenClickOnClosing(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z
    .registers 5

    sget-object v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->Companion:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;->isEventOverHotseat(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_46

    const/16 v0, 0xcc

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->isEventOverHotseatSubscribeItem(ILandroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast p2, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p2

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    if-eqz p2, :cond_46

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->isSlideInViewOpen()Z

    move-result v0

    if-nez v0, :cond_46

    if-eqz p1, :cond_46

    invoke-virtual {p2, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->close(Z)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->mShowAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->mShowAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_46
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setTouchFromGesture(Z)V

    sget-object v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->Companion:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;

    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper$Companion;->getOplusDragLayer(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->showAllAppsAgainWhenClickOnClosing(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->mTaskbarAllAppsTouchHelper:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->interceptDispatchTouchEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;Z)Z

    move-result v1

    if-ne v1, v4, :cond_23

    move v0, v4

    :cond_23
    if-eqz v0, :cond_26

    goto :goto_30

    :cond_26
    if-eqz v2, :cond_29

    goto :goto_30

    :cond_29
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->closeAllAppsWhenClickOutSidePanel(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_30
    return v4
.end method

.method public final onDestroy()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->mShowAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->mShowAgainRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->mTaskbarAllAppsTouchHelper:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;->onDestroy()V

    :cond_15
    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;->mTaskbarAllAppsTouchHelper:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsTouchHelper;

    return-void
.end method
