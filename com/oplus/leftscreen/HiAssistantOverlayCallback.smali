.class public Lcom/oplus/leftscreen/HiAssistantOverlayCallback;
.super Lcom/oplus/leftscreen/ILauncherOverlayCallback$Stub;
.source ""

# interfaces
.implements Lcom/android/overlay/IOverlayCallbackProxy;


# instance fields
.field public mInnerHandler:Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/leftscreen/ILauncherOverlayCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/leftscreen/HiAssistantOverlayCallback;Lcom/android/launcher/Launcher;F)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->lambda$overlayScrollChanged$0(Lcom/android/launcher/Launcher;F)V

    return-void
.end method

.method private synthetic lambda$overlayScrollChanged$0(Lcom/android/launcher/Launcher;F)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/RecentContainerView;->getMRecentView()Lcom/android/quickstep/views/LauncherRecentsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p2, p1}, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->setLauncherAlpha(FLcom/android/launcher/Launcher;)V

    :cond_11
    return-void
.end method

.method private setLauncherAlpha(FLcom/android/launcher/Launcher;)V
    .registers 5

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe8000000000000L  # 0.75

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, p0

    double-to-float p0, v0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_26

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getAlphaProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_26
    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/view/WindowManager;Landroid/view/Window;)V
    .registers 5

    new-instance v0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;

    invoke-direct {v0}, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;-><init>()V

    iput-object v0, p0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->mInnerHandler:Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;

    iput-object p1, v0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iput-object p3, v0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindow:Landroid/view/Window;

    iput-object p2, v0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindowManager:Landroid/view/WindowManager;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object p2, p0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->mInnerHandler:Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;

    iget-object p2, p2, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p2, p0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->mInnerHandler:Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    neg-int p1, p1

    iput p1, p2, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindowShift:I

    iget-object p1, p0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->mInnerHandler:Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;

    invoke-virtual {p1}, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->setOverlayPreloadTimeout()V

    iget-object p1, p0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->mInnerHandler:Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;

    iget-object p1, p1, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object p1, p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/android/launcher/Launcher;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->setLauncherAlpha(FLcom/android/launcher/Launcher;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->mInnerHandler:Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iput-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindow:Landroid/view/Window;

    iput-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public overlayScrollChanged(F)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->mInnerHandler:Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;

    iget-object v0, v0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v0, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/launcher/Launcher;

    new-instance v1, Lcom/android/launcher/download/e;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher/download/e;-><init>(Lcom/oplus/leftscreen/HiAssistantOverlayCallback;Lcom/android/launcher/Launcher;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->mInnerHandler:Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->overlayScrollChanged(F)V

    return-void
.end method

.method public overlayStatusChanged(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;->mInnerHandler:Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->overlayStatusChanged(I)V

    return-void
.end method
