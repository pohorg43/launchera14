.class public Lcom/oplus/zoom/zoommenu/ZoomDecorManager;
.super Landroid/view/WindowlessWindowManager;
.source ""


# static fields
.field public static final HIDE_HANDLE_BACKGROUND:I = 0xa

.field public static final HIDE_SCALE_BOUND:I = 0x6

.field public static final HIDE_ZOOM_TIPS:I = 0x8

.field public static final SHOW_HANDLE_BACKGROUND:I = 0x9

.field public static final SHOW_SCALE_BOUND:I = 0x5

.field public static final SHOW_ZOOM_TIPS:I = 0x7

.field public static final SWITCH_TO_DEFAULT:I = 0x3

.field public static final SWITCH_TO_MINI:I = 0x1

.field public static final SWITCH_TO_SIMPLE:I = 0x4

.field public static final SWITCH_TO_SUPER_MINI:I = 0xb

.field public static final SWITCH_TO_ZOOM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ZoomDecor"


# instance fields
.field private mDecorLeash:Landroid/view/SurfaceControl;

.field private mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

.field private mHostLeash:Landroid/view/SurfaceControl;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mSettingObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

.field private mSimpleModeManager:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

.field private mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTopActivity:Landroid/content/ComponentName;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;

.field private mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

.field private mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    new-instance p4, Lcom/oplus/zoom/zoommenu/ZoomDecorManager$1;

    invoke-direct {p4, p0}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager$1;-><init>(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;)V

    iput-object p4, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mSettingObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

    iput-object p3, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

    iput-object p2, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->lambda$removeZoomDecorView$1(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->lambda$createZoomDecorView$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private buildLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;
    .registers 8

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x7f6

    const/16 v4, 0x28

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string p1, "ZoomDecor"

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, 0x20000040

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object p0
.end method

.method private synthetic lambda$createZoomDecorView$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    const v0, 0x7ffffffc

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$removeZoomDecorView$1(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method private runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method


# virtual methods
.method public attachToNewParent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_25

    if-eqz p1, :cond_25

    iget-object v1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    if-eq v1, p1, :cond_25

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "attachToNewParent parent = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomDecor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public createZoomDecorView(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/content/ComponentName;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_10

    invoke-direct {p0, p3}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->buildLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/16 v1, 0x7f6

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p2, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    new-instance p2, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v1, "ZoomDecorManager"

    invoke-direct {p2, p1, v0, p0, v1}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iput-object p4, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mTopActivity:Landroid/content/ComponentName;

    new-instance p2, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    iget-object p4, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-direct {p2, p4}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;-><init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;)V

    iput-object p2, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mSimpleModeManager:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomSettingsObserver;->getInstance()Lcom/oplus/zoom/common/ZoomSettingsObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/zoom/common/ZoomSettingsObserver;->getSimpleModeEnable()Z

    move-result p2

    new-instance p4, Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

    invoke-direct {p4, p1, v0, p2, p0}, Lcom/oplus/zoom/zoommenu/ZoomDecorView;-><init>(Landroid/content/Context;Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;ZLcom/oplus/zoom/zoommenu/ZoomDecorManager;)V

    iput-object p4, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    invoke-direct {p0, p3}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->buildLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object p4, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    invoke-virtual {p2, p4, p1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iget-object p2, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->setInputToken(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->getInstance()Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mSettingObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->addCallbackListener(Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;)V

    new-instance p1, Lcom/android/wm/shell/pip/g;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/g;-><init>(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;)V

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createZoomDecorView success rootBounds = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomDecor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDecorView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    return-object p0
.end method

.method public getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .registers 3

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance p2, Landroid/view/SurfaceSession;

    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "ZoomDecor"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "ZoomDecorManager#attachToParentSurface"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method public getSimpleModeManager()Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mSimpleModeManager:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    return-object p0
.end method

.method public hideZoomDecorView(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_f
    return-void
.end method

.method public isTopActivitySupportZoomMenu()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mTopActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomPackageListManager;->isUnSupportZoomMenu(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "package not support show mTopActivity = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZoomDecor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public notifyDecorationChange(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v1, :cond_12

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorView;->processDecorationChange(I)V

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_12
    const-string p0, "notifyDecorationChange flag ="

    const-string v0, "ZoomDecor"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorView;->updateThreeButtonView(Landroid/content/res/Configuration;)V

    :cond_7
    return-void
.end method

.method public onDisplayConfigChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->setConfiguration(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_12
    return-void
.end method

.method public onFocusChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorView;->onFocusChanged(Z)V

    :cond_b
    return-void
.end method

.method public onTopActivityChanged(Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mTopActivity:Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/zoom/zoommenu/ZoomDecorView;->onTopActivityChanged()V

    :cond_d
    return-void
.end method

.method public onZoomStateChanged()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mSimpleModeManager:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->removeSimpleModeControlView(ZZ)V

    :cond_8
    return-void
.end method

.method public removeControlButtonIfNeed()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mSimpleModeManager:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->removeSimpleModeControlView(ZZ)V

    :cond_9
    return-void
.end method

.method public removeZoomDecorView()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    :cond_7
    new-instance v0, Lcom/android/wm/shell/pip/h;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/h;-><init>(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;)V

    invoke-direct {p0, v0}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->getInstance()Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mSettingObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->removeCallbackListener(Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;)V

    const-string p0, "ZoomDecor"

    const-string v0, "removeZoomDecorView success"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resizeZoomDecorView(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->buildLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_13
    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mSimpleModeManager:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->removeSimpleModeControlView(ZZ)V

    return-void
.end method

.method public resizeZoomDecorViewHeight(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    if-eqz v1, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_f
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Region;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorView:Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    :cond_13
    return-void
.end method

.method public showZoomDecorView(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->mDecorLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_f
    return-void
.end method
