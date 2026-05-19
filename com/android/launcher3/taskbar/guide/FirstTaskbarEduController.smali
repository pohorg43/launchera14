.class public Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;
.implements Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;
    }
.end annotation


# static fields
.field private static final EDU_DELAY_MS:J = 0xc8L


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private mFirstTaskbarEduView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

.field private mGuideContext:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

.field public final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mProxyView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mProxyView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;

    new-instance p1, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$1;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;)Landroid/view/WindowManager;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->lambda$closeWindow$2(Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;)Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mGuideContext:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;Landroid/view/WindowManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->lambda$showEdu$0(Landroid/view/WindowManager;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;Landroid/view/WindowManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->lambda$closeWindow$3(Landroid/view/WindowManager;)V

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 5

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const-string v1, "Edu"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 p0, 0x3

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setSystemApplicationOverlay(Z)V

    return-object v0
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->lambda$showEdu$1()V

    return-void
.end method

.method private static synthetic lambda$closeWindow$2(Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;)Landroid/view/WindowManager;
    .registers 2

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method private synthetic lambda$closeWindow$3(Landroid/view/WindowManager;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mGuideContext:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showEdu$0(Landroid/view/WindowManager;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mGuideContext:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$showEdu$1()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mFirstTaskbarEduView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->closeWindow()V

    return-void
.end method


# virtual methods
.method public closeWindow()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mProxyView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mGuideContext:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/batchdrag/b;->d:Lcom/android/launcher/batchdrag/b;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/common/util/n;

    invoke-direct {v1, p0}, Lcom/android/common/util/n;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mGuideContext:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/util/OplusFoldStateHelper;->removeCallback(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "FirstTaskbarEduController:"

    invoke-static {p1, v0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mFirstTaskbarEduView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    const/4 p1, 0x1

    if-eqz p0, :cond_11

    move v1, p1

    :cond_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, p1

    const-string p0, "%s\tisShowingEdu=%b"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hideEdu()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mFirstTaskbarEduView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mProxyView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public onFoldStateChange(Z)V
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->closeWindow()V

    :cond_9
    return-void
.end method

.method public showEdu()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mProxyView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mGuideContext:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/util/OplusFoldStateHelper;->addCallBack(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mGuideContext:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Landroidx/core/location/a;

    invoke-direct {v1, p0}, Landroidx/core/location/a;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mGuideContext:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mEduView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mFirstTaskbarEduView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/d;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/allapps/d;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mProxyView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;->access$100(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->mFirstTaskbarEduView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->show()V

    return-void
.end method
