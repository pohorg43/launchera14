.class public Lcom/android/launcher3/views/OplusFloatingIconView;
.super Lcom/android/launcher3/views/FloatingIconView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;,
        Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;
    }
.end annotation


# static fields
.field public static final ADAPTIVE_ICON_ANIM_ADD_MILLS:I = 0xc8

.field public static final ADAPTIVE_ICON_SCALE_END:F = 1.0f

.field public static final ADAPTIVE_ICON_SCALE_START:F = 1.8f

.field public static final ANIM_END_PROGRESS:F = 1.0f

.field public static final ANTI_ALIAS_FILTER:Landroid/graphics/DrawFilter;

.field public static final ANTI_ALIAS_PAINT:Landroid/graphics/Paint;

.field public static final DEBUG_DEPTH:I = 0x5

.field public static final FADE_DURATION_MS:I = 0xc8

.field public static final GET_BADGE_MILLS:I = 0x64

.field public static final INT_0:I = 0x0

.field public static final NUM_1:F = 1.0f

.field private static final SHOW_APP_ICON_DELAY:I = 0x258

.field public static final TAG:Ljava/lang/String; = "OplusFloatingIconView"


# instance fields
.field private mCancelStaggeredAnimRunnable:Ljava/lang/Runnable;

.field private mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

.field private mHideIcon:Ljava/lang/Boolean;

.field public mIsHotseatIcon:Z

.field private final mRemoteAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialapplist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needDraw:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher3/views/OplusFloatingIconView;->ANTI_ALIAS_FILTER:Landroid/graphics/DrawFilter;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/views/OplusFloatingIconView;->ANTI_ALIAS_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    const-string p1, "com.google.android.apps.podcasts"

    const-string v0, "com.heytap.reader"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mSpecialapplist:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mIsHotseatIcon:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mHideIcon:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    const-string p1, "com.google.android.apps.podcasts"

    const-string p2, "com.heytap.reader"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mSpecialapplist:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mIsHotseatIcon:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mHideIcon:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    const-string p1, "com.google.android.apps.podcasts"

    const-string p2, "com.heytap.reader"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mSpecialapplist:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mIsHotseatIcon:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mHideIcon:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/views/OplusFloatingIconView;Lcom/android/launcher3/OplusBubbleTextView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->setIconVisibleForFIView(Lcom/android/launcher3/OplusBubbleTextView;)V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/launcher3/views/OplusFloatingIconView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mCancelStaggeredAnimRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static checkDragingView(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    instance-of v0, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v0, :cond_3c

    check-cast p0, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragView;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_31

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_31
    if-eqz p0, :cond_3c

    if-eqz v0, :cond_3c

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne p0, p1, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    return v1
.end method

.method public static checkShowOriginalView(Landroid/view/View;Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkStateAllApps(Lcom/android/launcher3/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_15

    const-string p0, "OplusFloatingIconView"

    const-string p1, "all_apps_state_ordinal type and originalView now is visible , not set originalView visible"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public static checkStateAllApps(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "OplusFloatingIconView"

    const-string v0, "current is all_apps type"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static checkStateAllAppsStopFloatAnima(ZLandroid/view/ViewParent;Lcom/android/launcher3/Launcher;)Z
    .registers 3

    if-nez p0, :cond_19

    instance-of p0, p1, Lcom/android/launcher3/views/FloatingIconViewContainer;

    if-eqz p0, :cond_19

    check-cast p1, Lcom/android/launcher3/views/FloatingIconViewContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_19

    invoke-static {p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkStateAllApps(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method private static drawIconBadge(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;
    .registers 9

    const-string v0, "OplusFloatingIconView"

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/g1;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher3/g1;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    :try_start_d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportTTSatelliteDevice()Z

    move-result v1

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_4a

    invoke-static {}, Lcom/android/launcher/model/SatelliteStateManage;->getInstance()Lcom/android/launcher/model/SatelliteStateManage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/model/SatelliteStateManage;->isDisplaySatelliteBadge()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawIconBadge isDisplaySatelliteBadge = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_59

    sget-object v1, Lcom/android/common/util/SatelliteUtils;->INSTANCE:Lcom/android/common/util/SatelliteUtils;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/common/util/SatelliteUtils;->satelliteBadgeDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_40

    goto :goto_49

    :cond_40
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    :goto_49
    return-object p1

    :cond_4a
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_52} :catch_53
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_52} :catch_53
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_52} :catch_53

    return-object p0

    :catch_53
    move-exception p0

    const-string p1, "getIconResult e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_59
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "Get icon drawable for fancy drawable, width = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", drawable bounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusFloatingIconView"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    instance-of v1, p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v1, :cond_61

    if-nez p2, :cond_51

    invoke-static {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result p2

    if-nez p2, :cond_51

    move-object p2, p1

    check-cast p2, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    :cond_51
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-static {p1}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_61
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/views/OplusClipIconView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private static getIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "Get icon drawable for fancy drawable, width = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", drawable bounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusFloatingIconView"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    instance-of v1, p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v1, :cond_48

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-static {p1}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_48
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/views/OplusClipIconView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static getIconResultForAsync(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Z)V
    .registers 18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v7, p4

    sget-object v3, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    move v4, v8

    goto :goto_17

    :cond_16
    move v4, v9

    :goto_17
    instance-of v5, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v5, :cond_24

    move-object v5, v2

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-boolean v5, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsIconEdited:Z

    if-eqz v5, :cond_24

    move v5, v8

    goto :goto_25

    :cond_24
    move v5, v9

    :goto_25
    sget-boolean v6, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-eqz v6, :cond_2f

    if-eqz v4, :cond_2f

    if-nez v5, :cond_2f

    move v10, v8

    goto :goto_30

    :cond_2f
    move v10, v9

    :goto_30
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v4

    instance-of v4, v1, Lcom/android/launcher3/card/LauncherCardView;

    const/4 v11, 0x0

    if-eqz v4, :cond_46

    new-instance v3, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v1, v2}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;-><init>(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/Boolean;)V

    move v1, v8

    :goto_43
    move v2, v1

    goto/16 :goto_204

    :cond_46
    instance-of v4, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v4, :cond_57

    new-instance v3, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v1, v2}, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Ljava/lang/Boolean;)V

    :cond_53
    :goto_53
    move v2, v8

    move v1, v9

    goto/16 :goto_204

    :cond_57
    instance-of v4, v1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v4, :cond_10f

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_66

    move-object v3, v11

    goto :goto_86

    :cond_66
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_75

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_86

    :cond_75
    instance-of v4, v3, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v4, :cond_82

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/views/OplusFloatingIconView;->getIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_86

    :cond_82
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_86
    instance-of v4, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v4, :cond_93

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_93

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_93
    if-eqz v10, :cond_de

    if-eqz v4, :cond_c4

    move-object v2, v3

    check-cast v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v4, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_ae

    iget-object v4, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_ae
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {v1, v3, v2, v9, v4}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1fe

    :cond_c4
    instance-of v2, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_201

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {v1, v3, v2, v9, v4}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1fe

    :cond_de
    if-eqz v4, :cond_f9

    move-object v1, v3

    check-cast v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v2, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v4, :cond_53

    iget-object v2, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v4, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_53

    :cond_f9
    instance-of v1, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_106

    const-string v1, "OplusFloatingIconView"

    const-string v2, "BigFolderItemIcon Third Theme icon in fancyicon "

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53

    :cond_106
    const-string v1, "OplusFloatingIconView"

    const-string v2, "BigFolderItemIcon Third Theme icon in default "

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53

    :cond_10f
    instance-of v4, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_1dc

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_11e

    move-object v3, v11

    goto :goto_13e

    :cond_11e
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_12d

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_13e

    :cond_12d
    instance-of v4, v3, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v4, :cond_13a

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/views/OplusFloatingIconView;->getIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_13e

    :cond_13a
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_13e
    instance-of v4, v3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v4, :cond_14b

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_14b

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_14b
    instance-of v2, v1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v2, :cond_157

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->getIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_158

    :cond_157
    move-object v2, v11

    :goto_158
    if-eqz v10, :cond_1ab

    if-eqz v4, :cond_191

    if-eqz v2, :cond_15f

    goto :goto_173

    :cond_15f
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {v1, v3, v2, v9, v4}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_173
    instance-of v1, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v1, :cond_18e

    move-object v1, v2

    check-cast v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v3, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_18e

    iget-object v3, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_18e
    move-object v3, v2

    goto/16 :goto_1fe

    :cond_191
    instance-of v2, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_201

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {v1, v3, v2, v9, v4}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    goto :goto_1fe

    :cond_1ab
    if-eqz v4, :cond_1c6

    move-object v1, v3

    check-cast v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v2, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v4, :cond_53

    iget-object v2, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v4, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_53

    :cond_1c6
    instance-of v1, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1d3

    const-string v1, "OplusFloatingIconView"

    const-string v2, "BubbleTextView Third Theme icon in fancyicon "

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53

    :cond_1d3
    const-string v1, "OplusFloatingIconView"

    const-string v2, "BubbleTextView Third Theme icon in default "

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53

    :cond_1dc
    instance-of v4, v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v4, :cond_53

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    check-cast v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1fb

    const/4 v5, 0x0

    sget-object v6, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1fb
    move-object v3, v1

    if-eqz v10, :cond_201

    :goto_1fe
    move v1, v8

    move v2, v9

    goto :goto_204

    :cond_201
    move v1, v9

    goto/16 :goto_43

    :goto_204
    monitor-enter p4

    :try_start_205
    const-string v4, "OplusFloatingIconView"

    const-string v5, "icon load successfully"

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    iput-boolean v2, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->hasStyleBounds:Z

    iput-object v3, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v11, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iput v9, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    iget-object v1, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    if-eqz v1, :cond_22e

    const-string v1, "OplusFloatingIconView"

    const-string v2, "checkIconResult function in MainThread has completed and register onIconLoaded callback; "

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v11, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    :cond_22e
    iput-boolean v8, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->uxForegroudScale:F

    monitor-exit p4

    return-void

    :catchall_236
    move-exception v0

    monitor-exit p4
    :try_end_238
    .catchall {:try_start_205 .. :try_end_238} :catchall_236

    throw v0
.end method

.method public static getOplusIconResult(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Z)V
    .registers 23

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v8, p4

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v2

    instance-of v2, v1, Lcom/android/launcher3/BubbleTextView;

    const/4 v9, 0x0

    if-eqz v2, :cond_18

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v10, v3

    goto :goto_19

    :cond_18
    move-object v10, v9

    :goto_19
    instance-of v3, v0, Lcom/android/launcher3/popup/SystemShortcut;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_40

    instance-of v0, v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2b

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_4b

    :cond_2b
    instance-of v0, v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_3b

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_4b

    :cond_3b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_4b

    :cond_40
    instance-of v3, v1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v3, :cond_50

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_4b
    :goto_4b
    move-object v2, v9

    :goto_4c
    const/high16 v11, 0x3f800000  # 1.0f

    goto/16 :goto_1ea

    :cond_50
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v4, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v5, v3

    instance-of v3, v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isAdaptiveIconAnimSupportted()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    const-string v14, "com.qiyi.video"

    invoke-static {v7, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_78

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    const-string v14, "com.qiyi.video.lite"

    invoke-static {v7, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    :cond_78
    move v6, v13

    :cond_79
    if-eqz v6, :cond_83

    instance-of v7, v10, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-nez v3, :cond_81

    if-eqz v7, :cond_84

    :cond_81
    move v6, v13

    goto :goto_84

    :cond_83
    move v7, v13

    :cond_84
    :goto_84
    iput-object v9, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    const-string v14, "OplusFloatingIconView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIconResult: supportsAdaptiveIcons: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", info: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", isFancyIcon: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isFolderIcon: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1aa

    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/16 v6, 0x3e7

    if-eq v3, v6, :cond_1aa

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq v2, v12, :cond_109

    const/4 v3, 0x6

    if-ne v2, v3, :cond_c8

    goto :goto_109

    :cond_c8
    instance-of v2, v10, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v2, :cond_d7

    move-object v2, v10

    check-cast v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v2

    if-eqz v2, :cond_d7

    move v6, v12

    goto :goto_d8

    :cond_d7
    move v6, v13

    :goto_d8
    if-eqz v6, :cond_e1

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e1

    goto :goto_109

    :cond_e1
    sget-object v2, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v3, "fetchIconTimeOutUI"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    sget-object v7, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_fc

    invoke-static/range {p0 .. p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->drawIconBadge(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_fe

    :cond_fc
    move-object v0, v9

    move-object v2, v10

    :goto_fe
    sget-object v3, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v3, v11}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    goto :goto_10b

    :cond_109
    :goto_109
    move-object v2, v9

    move-object v0, v10

    :goto_10b
    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_13e

    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v4, :cond_11e

    if-nez v3, :cond_13e

    :cond_11e
    const-string v0, "OplusFloatingIconView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t do foreground anim. background: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", foreground: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v10

    goto :goto_13f

    :cond_13e
    move-object v3, v0

    :goto_13f
    instance-of v0, v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1a7

    :try_start_143
    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-static {v0}, Lcom/oplus/compat/graphics/AdaptiveIconDrawableNative;->getForegroundScalePercent(Landroid/graphics/drawable/AdaptiveIconDrawable;)F

    move-result v0

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getUXDesignScale()F

    move-result v4

    div-float v4, v0, v4

    const-string v5, "OplusFloatingIconView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getForegroundScalePercent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", foregroudScalePercent: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16e
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_143 .. :try_end_16e} :catch_16f

    goto :goto_175

    :catch_16f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/high16 v4, 0x3f800000  # 1.0f

    :goto_175
    instance-of v0, v10, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_183

    check-cast v10, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v10}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v0

    if-eqz v0, :cond_183

    move v0, v12

    goto :goto_184

    :cond_183
    move v0, v13

    :goto_184
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_18e

    if-eqz v0, :cond_18e

    const/high16 v11, 0x3f800000  # 1.0f

    goto :goto_18f

    :cond_18e
    move v11, v4

    :goto_18f
    const-string v0, "OplusFloatingIconView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "foregroudScalePercent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v3

    goto :goto_1ea

    :cond_1a7
    move-object v10, v3

    goto/16 :goto_4c

    :cond_1aa
    if-eqz v2, :cond_1b5

    const-string v0, "OplusFloatingIconView"

    const-string v2, "if doesn\'t supportsAdaptiveIcons, simply fetch from local"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    :cond_1b5
    instance-of v2, v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v2, :cond_1c0

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/16 :goto_4b

    :cond_1c0
    instance-of v2, v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v2, :cond_1dd

    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_4b

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->loadFolderIconDrawable()V

    goto/16 :goto_4b

    :cond_1dd
    const/4 v6, 0x1

    sget-object v7, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto/16 :goto_4b

    :goto_1ea
    instance-of v0, v10, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_206

    move-object v0, v10

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_204

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    goto :goto_208

    :cond_204
    move-object v0, v9

    goto :goto_208

    :cond_206
    move-object v0, v9

    move-object v3, v0

    :goto_208
    if-nez v10, :cond_20c

    move-object v4, v9

    goto :goto_22c

    :cond_20c
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_21b

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_22c

    :cond_21b
    instance-of v4, v10, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v4, :cond_228

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/android/launcher3/views/OplusFloatingIconView;->getIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_22c

    :cond_228
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_22c
    instance-of v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_251

    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_242

    if-eqz v3, :cond_242

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_242
    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_251

    if-eqz v0, :cond_251

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_251
    move-object/from16 v3, p0

    move-object/from16 v5, p3

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/views/FloatingIconView;->getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I

    move-result v0

    instance-of v5, v4, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    if-eqz v5, :cond_25e

    goto :goto_25f

    :cond_25e
    move v13, v0

    :goto_25f
    instance-of v0, v1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_26d

    new-instance v4, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v4, v0, v5}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;-><init>(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/Boolean;)V

    :cond_26d
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_278

    new-instance v4, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;

    invoke-direct {v4, v1}, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;-><init>(Landroid/view/View;)V

    :cond_278
    monitor-enter p4

    :try_start_279
    const-string v0, "OplusFloatingIconView"

    const-string v1, "icon load successfully"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iput v13, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    iget-object v0, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    if-eqz v0, :cond_29c

    const-string v0, "OplusFloatingIconView"

    const-string v1, "checkIconResult function in MainThread has completed and register onIconLoaded callback; "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v9, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    :cond_29c
    iput-boolean v12, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    iput v11, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->uxForegroudScale:F

    monitor-exit p4

    return-void

    :catchall_2a2
    move-exception v0

    monitor-exit p4
    :try_end_2a4
    .catchall {:try_start_279 .. :try_end_2a4} :catchall_2a2

    throw v0
.end method

.method public static synthetic h(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->lambda$ensureLoadFloatIcon$1(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->lambda$checkIconResult$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/views/OplusFloatingIconView;FLjava/util/function/Supplier;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/OplusFloatingIconView;->lambda$forceLoadIfNeed$0(FLjava/util/function/Supplier;Z)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/os/CancellationSignal;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->lambda$checkIconResult$3(Landroid/os/CancellationSignal;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/views/OplusFloatingIconView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->lambda$resetIconToVisible$5()V

    return-void
.end method

.method private synthetic lambda$checkIconResult$2(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    const-string v1, "OplusFloatingIconView"

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    invoke-interface {v0, v3, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->canSetIconVisibleOnAnimationEnd(Landroid/view/View;Z)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "cancellationSignal shouldshow "

    invoke-static {v3, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1c

    :cond_1b
    move v0, v2

    :cond_1c
    :goto_1c
    instance-of v3, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v3, :cond_28

    if-eqz v0, :cond_28

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    :cond_28
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkDragingView(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string p0, "CancellationSignal originalView set INVISIBLE"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5f

    :cond_3a
    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkShowOriginalView(Landroid/view/View;Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isDragging(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_5f

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_5f

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private synthetic lambda$checkIconResult$3(Landroid/os/CancellationSignal;Landroid/view/View;)V
    .registers 6

    const-string v0, "OplusFloatingIconView"

    const-string/jumbo v1, "onIconLoaded call back begin"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez p1, :cond_13

    goto :goto_38

    :cond_13
    iget-boolean p1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isAlreadyLoadByLocal:Z

    if-eqz p1, :cond_1d

    const-string p0, "clipedIconView has been filled by local when check icon result in callback. do nothing here either "

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :cond_1d
    const-string/jumbo p1, "set icon by the result from getOplusIconResult"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v0, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Landroid/graphics/drawable/Drawable;

    iget p1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->hideOriginalIcon(Landroid/view/View;)V

    :goto_37
    return-void

    :cond_38
    :goto_38
    const-string/jumbo p1, "onIconLoaded return mIconLoadResult: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$drawIconBadge$4(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->getBadge(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$ensureLoadFloatIcon$1(Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v2, v4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/views/OplusFloatingIconView;->getIconResultForAsync(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Z)V

    return-void
.end method

.method private synthetic lambda$forceLoadIfNeed$0(FLjava/util/function/Supplier;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz v0, :cond_45

    iget-boolean v0, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->fetchFailed:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_45

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_45

    if-nez p3, :cond_45

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/views/FloatingIconViewContainer;

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/FloatingIconViewContainer;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isFinished()Z

    move-result p2

    if-eqz p2, :cond_3f

    const-string p2, "OplusFloatingIconView"

    const-string p3, "Icon has ready, but container is GONE"

    invoke-static {p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mIsHotseatIcon:Z

    iget-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/views/FloatingIconViewContainer;->begin(ZLandroid/view/View;)V

    :cond_3f
    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->ensureLoadFloatIcon(Landroid/view/View;Z)V

    :cond_45
    return-void
.end method

.method private synthetic lambda$resetIconToVisible$5()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetIconToVisibleImp()V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->lambda$drawIconBadge$4(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static mapIconBoundsToDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusBubbleTextView;Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/Utilities;->containChildView(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p3, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v4, 0x2

    aput v1, v0, v4

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    const/4 v1, 0x3

    aput p3, v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->ensureHotseatExpandItemParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0, v0, v2, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestorOverride(Landroid/view/View;Landroid/view/View;[FZZ)V

    aget p0, v0, v2

    aget p1, v0, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aget p1, v0, v3

    aget p3, v0, v1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aget p3, v0, v2

    aget v2, v0, v4

    invoke-static {p3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    aget v2, v0, v3

    aget v0, v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p2, p0, p1, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_5d

    :cond_5a
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    :goto_5d
    return-void
.end method

.method private resetIconToVisibleImp()V
    .registers 6

    const-string/jumbo v0, "resetIconToVisibleImp, icon is null?: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    const-string v4, "OplusFloatingIconView"

    invoke-static {v0, v1, v4}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkShowOriginalView(Landroid/view/View;Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->isDragging(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_38

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_48

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v3}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    :cond_48
    return-void
.end method

.method private setIconVisibleForFIView(Lcom/android/launcher3/OplusBubbleTextView;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkStateAllAppsStopFloatAnima(ZLandroid/view/ViewParent;Lcom/android/launcher3/Launcher;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    return-void
.end method

.method private setIconWhenFetchFailed(Landroid/graphics/drawable/Drawable;ZZ)V
    .registers 6
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "setIconWhenFetchFailed: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v1, v1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->fetchFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFloatingIconView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_56

    if-eqz p1, :cond_56

    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p0, p1, v0, p2, p3}, Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;->onDrawableLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_56
    return-void
.end method

.method public static updateDrawableForAsync(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/graphics/drawable/Drawable;ZF)V
    .registers 10

    if-nez p5, :cond_a

    const-string p0, "OplusFloatingIconView"

    const-string p1, "Error!! in case drawable is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    iput-object p5, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result p3

    const/4 p6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, p6, :cond_17

    move p3, v0

    goto :goto_18

    :cond_17
    move p3, v1

    :goto_18
    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez p2, :cond_160

    sget-boolean p2, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-eqz p2, :cond_14b

    if-eqz p3, :cond_d3

    instance-of p2, p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz p2, :cond_28

    goto/16 :goto_18b

    :cond_28
    instance-of p2, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p2, :cond_53

    move-object p3, p1

    check-cast p3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz p3, :cond_53

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {p1, p5, p2, v1, p0}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->hasStyleBounds:Z

    goto/16 :goto_18b

    :cond_53
    instance-of p3, p5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p3, :cond_69

    check-cast p5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-static {p0}, Lcom/android/common/util/IconUtils;->getIconVisibleSize(Landroid/content/Context;)I

    move-result p1

    invoke-static {p5, p7, p1, p0}, Lcom/android/common/util/IconUtils;->transformAdaptiveDrawable2Bitmap(Landroid/graphics/drawable/AdaptiveIconDrawable;FILandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    iput-object p0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->hasStyleBounds:Z

    goto/16 :goto_18b

    :cond_69
    instance-of p3, p5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz p3, :cond_cf

    if-eqz p2, :cond_b3

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz p3, :cond_95

    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {p1, p2, p3, v1, p0}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_c9

    :cond_95
    invoke-virtual {p2}, Lcom/android/launcher3/OplusBubbleTextView;->getIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_9c

    goto :goto_b0

    :cond_9c
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {p1, p5, p2, v1, p0}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_b0
    iput-object p2, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_c9

    :cond_b3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {p1, p5, p2, v1, p0}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_c9
    iput-boolean v0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->hasStyleBounds:Z

    goto/16 :goto_18b

    :cond_cf
    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    goto/16 :goto_18b

    :cond_d3
    instance-of p2, p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz p2, :cond_128

    instance-of p2, p5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz p2, :cond_104

    move-object p2, p5

    check-cast p2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object p3, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p3, p6, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {p1, p5, p2, v1, p0}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->hasStyleBounds:Z

    goto/16 :goto_18b

    :cond_104
    instance-of p2, p5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_124

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {p1, p5, p2, v1, p0}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->hasStyleBounds:Z

    goto/16 :goto_18b

    :cond_124
    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    goto/16 :goto_18b

    :cond_128
    instance-of p2, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p2, :cond_18b

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusBubbleTextView;->getIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_136

    goto :goto_144

    :cond_136
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {p1, p5, p0, v1}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_144
    iput-object p2, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->hasStyleBounds:Z

    goto :goto_18b

    :cond_14b
    instance-of p0, p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz p0, :cond_150

    goto :goto_18b

    :cond_150
    instance-of p0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_18b

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextView;->getIconViewDrawable()Landroid/graphics/drawable/Drawable;

    iput-object p5, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->hasStyleBounds:Z

    goto :goto_18b

    :cond_160
    if-eq p2, v0, :cond_189

    const/4 p1, 0x6

    if-ne p2, p1, :cond_166

    goto :goto_189

    :cond_166
    const/4 p1, 0x3

    if-ne p2, p1, :cond_17f

    sget-boolean p1, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-eqz p1, :cond_170

    iput-boolean v0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    goto :goto_18b

    :cond_170
    check-cast p5, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    invoke-static {p0}, Lcom/android/common/util/IconUtils;->getIconVisibleSize(Landroid/content/Context;)I

    move-result p1

    invoke-static {p5, p7, p1, p0}, Lcom/android/common/util/IconUtils;->transformFolderAdaptiveIcon2Bitmap(Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;FILandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    iput-object p0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    goto :goto_18b

    :cond_17f
    instance-of p0, p5, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    if-eqz p0, :cond_186

    iput-boolean v0, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    goto :goto_18b

    :cond_186
    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    goto :goto_18b

    :cond_189
    :goto_189
    iput-boolean v1, p4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    :cond_18b
    :goto_18b
    return-void
.end method


# virtual methods
.method public cancelStaggeredAnim()V
    .registers 3

    const-string v0, "cancelStaggeredAnim, runnable = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mCancelStaggeredAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFloatingIconView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mCancelStaggeredAnimRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mCancelStaggeredAnimRunnable:Ljava/lang/Runnable;

    :cond_1e
    return-void
.end method

.method public checkIconResult(Landroid/view/View;)V
    .registers 9

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iget-boolean v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v1, :cond_11

    new-instance v1, Lcom/android/launcher3/views/d;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/views/d;-><init>(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_11
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    if-eqz p1, :cond_39

    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    :cond_23
    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkShowOriginalView(Landroid/view/View;Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_39

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_39

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_39
    return-void

    :cond_3a
    monitor-enter v1

    :try_start_3b
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez v3, :cond_41

    monitor-exit v1

    return-void

    :cond_41
    iget-boolean v4, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz v4, :cond_6d

    iget-boolean v3, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isAlreadyLoadByLocal:Z

    if-eqz v3, :cond_51

    const-string p1, "OplusFloatingIconView"

    const-string v2, "clipedIconView has been filled by local when check icon result. so,do nothing here "

    invoke-static {p1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    :cond_51
    const-string v3, "OplusFloatingIconView"

    const-string/jumbo v4, "set icon by the result from getOplusIconResult, not in onIconLoaded"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v4, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v6, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/launcher3/views/OplusFloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->hideOriginalIcon(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/views/OplusFloatingIconView;->setVisibility(I)V

    goto :goto_74

    :cond_6d
    new-instance v2, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/os/CancellationSignal;Landroid/view/View;)V

    iput-object v2, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    :goto_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_3b .. :try_end_75} :catchall_78

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    return-void

    :catchall_78
    move-exception p0

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .registers 2

    new-instance v0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;-><init>(Lcom/android/launcher3/views/OplusFloatingIconView;)V

    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public dispatchGetDisplayList()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Landroid/view/ViewGroup;->dispatchGetDisplayList()V

    :cond_b
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public ensureLoadFloatIcon(Landroid/view/View;Z)V
    .registers 12

    const-string v0, "OplusFloatingIconView"

    const-string v1, "ensureLoadFloatIcon"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isAdaptiveIconAnimSupportted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz v1, :cond_a9

    monitor-enter v1

    :try_start_10
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v4

    :goto_1d
    const-string v5, "OplusFloatingIconView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIconLoadResult has load already ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v7, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " ClipIconView\'s BG is Null ? --"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v5, v5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz v5, :cond_49

    if-eqz v2, :cond_a4

    if-nez v0, :cond_a4

    :cond_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v7, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v7, v7, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isOpening:Z

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2, p1, v7, v0, v8}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    if-eqz p2, :cond_71

    sget-object p2, Lcom/oplus/util/OplusExecutors;->ANIM_EXECUTOR:Lcom/oplus/util/OplusLauncherAnimExecutor;

    new-instance v2, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p2, v2}, Lcom/oplus/util/OplusLauncherAnimExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iput-boolean v4, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->fetchFailed:Z

    goto :goto_7a

    :cond_71
    iget-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v2, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p2, p1, v2, v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->fetchAndFillLocalIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;)V

    :goto_7a
    const-string p1, "OplusFloatingIconView"

    const-string p2, "clipedIconView has already filled by local "

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v5

    const-string v0, "OplusFloatingIconView"

    const-string v2, "ensureLoadFloatIcon, isOpening=%s, time=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean p0, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isOpening:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    monitor-exit v1

    goto :goto_a9

    :catchall_a6
    move-exception p0

    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_10 .. :try_end_a8} :catchall_a6

    throw p0

    :cond_a9
    :goto_a9
    return-void
.end method

.method public fetchAndFillLocalIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;)V
    .registers 11

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_d
    move-object v2, v1

    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchAndFillLocalIcon: :  info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusFloatingIconView"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v3, p3, Lcom/android/launcher3/popup/SystemShortcut;

    const/4 v5, 0x0

    if-eqz v3, :cond_4a

    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_35

    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_90

    :cond_35
    instance-of v0, p2, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_45

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_90

    :cond_45
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_90

    :cond_4a
    if-eqz v0, :cond_4d

    goto :goto_90

    :cond_4d
    instance-of v0, p2, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_57

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_90

    :cond_57
    instance-of v0, p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_68

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_90

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->loadFolderIconDrawable()V

    goto :goto_90

    :cond_68
    instance-of v0, p2, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v0, :cond_74

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_90

    :cond_74
    instance-of v0, p2, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_83

    new-instance v2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;-><init>(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/Boolean;)V

    goto :goto_90

    :cond_83
    invoke-static {p2}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8f

    new-instance v2, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;

    invoke-direct {v2, p2}, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;-><init>(Landroid/view/View;)V

    goto :goto_90

    :cond_8f
    move-object v2, v1

    :cond_90
    :goto_90
    instance-of v0, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_a0

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    goto :goto_a1

    :cond_a0
    move-object v0, v1

    :goto_a1
    if-nez v2, :cond_a5

    move-object v2, v1

    goto :goto_c5

    :cond_a5
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_b4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_c5

    :cond_b4
    instance-of v3, v2, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v3, :cond_c1

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/launcher3/views/OplusFloatingIconView;->getIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_c5

    :cond_c1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_c5
    instance-of v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_d5

    if-eqz v0, :cond_d5

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_d5
    if-nez v2, :cond_ec

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fetchAndFillLocalIcon: drawable is null, originalView:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ec
    const-string v0, "fetchAndFillLocalIcon: drawable get success "

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1ea

    instance-of p4, v2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p4, :cond_143

    move-object p4, v2

    check-cast p4, Lcom/oplus/icons/OplusFastBitmapDrawable;

    iget-object v0, p4, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_115

    iget-object v0, p4, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p4, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_115
    invoke-virtual {p4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_143

    invoke-virtual {p4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_143

    invoke-virtual {p4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {p4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object p4, p4, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p4, v1, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_143
    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result p4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_14c

    move p4, v3

    goto :goto_14d

    :cond_14c
    move p4, v5

    :goto_14d
    if-eqz p4, :cond_155

    sget-boolean p4, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-eqz p4, :cond_155

    move p4, v3

    goto :goto_156

    :cond_155
    move p4, v5

    :goto_156
    iget p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez p3, :cond_1cb

    if-eqz p4, :cond_1cb

    instance-of p3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p3, :cond_18e

    instance-of p3, p2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p3, :cond_17e

    move-object p3, p2

    check-cast p3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p3}, Lcom/android/launcher3/OplusBubbleTextView;->getIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_16e

    goto :goto_17c

    :cond_16e
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {p2, v2, p1, v5}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_17c
    move-object v2, p3

    goto :goto_1e5

    :cond_17e
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {p2, v2, p1, v5}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_18c
    move-object v2, p1

    goto :goto_1e5

    :cond_18e
    instance-of p3, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz p3, :cond_1e6

    move-object p3, v2

    check-cast p3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object p4, p3, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p4, v0, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p3, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    instance-of p3, p2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p3, :cond_1bc

    move-object p3, p2

    check-cast p3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p3}, Lcom/android/launcher3/OplusBubbleTextView;->getIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1ad

    goto :goto_17c

    :cond_1ad
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {p2, v2, p1, v5}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_17c

    :cond_1bc
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {p2, v2, p1, v5}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_18c

    :cond_1cb
    instance-of p2, v2, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    if-eqz p2, :cond_1e1

    sget-boolean p2, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-eqz p2, :cond_1d4

    goto :goto_1e5

    :cond_1d4
    check-cast v2, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-static {p1}, Lcom/android/common/util/IconUtils;->getIconVisibleSize(Landroid/content/Context;)I

    move-result p3

    invoke-static {v2, p2, p3, p1}, Lcom/android/common/util/IconUtils;->transformFolderAdaptiveIcon2Bitmap(Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;FILandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    goto :goto_1e6

    :cond_1e1
    instance-of p1, v2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    if-eqz p1, :cond_1e6

    :goto_1e5
    move v5, v3

    :cond_1e6
    :goto_1e6
    invoke-direct {p0, v2, v5, v3}, Lcom/android/launcher3/views/OplusFloatingIconView;->setIconWhenFetchFailed(Landroid/graphics/drawable/Drawable;ZZ)V

    return-void

    :cond_1ea
    invoke-static {p1, v2, p4}, Lcom/android/launcher3/views/FloatingIconView;->getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I

    move-result p1

    invoke-virtual {p0, v2, v1, v2, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iput-boolean v3, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isAlreadyLoadByLocal:Z

    instance-of p1, p2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_1ff

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-direct {p0, p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->setIconVisibleForFIView(Lcom/android/launcher3/OplusBubbleTextView;)V

    goto :goto_21d

    :cond_1ff
    instance-of p1, p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz p1, :cond_209

    check-cast p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2, v5}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    goto :goto_21d

    :cond_209
    invoke-static {p2}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_219

    const-string p1, "fetchAndFillLocalIcon: set GroupChildCardView alpha 0f"

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_21d

    :cond_219
    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_21d
    invoke-virtual {p0, v5}, Lcom/android/launcher3/views/OplusFloatingIconView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    return-void
.end method

.method public forceLoadIfNeed(FZLjava/util/function/Supplier;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/views/e;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/launcher3/views/e;-><init>(Lcom/android/launcher3/views/OplusFloatingIconView;FLjava/util/function/Supplier;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHideOriginal()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mHideIcon:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPosition()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    return-object p0
.end method

.method public hideOriginalIcon(Landroid/view/View;)V
    .registers 5

    sget v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const-string v2, "OplusFloatingIconView"

    if-nez v0, :cond_11

    const-string p0, "hideOriginalIcon no need to hide as anim duration is 0"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_1b

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->setIconVisibleForFIView(Lcom/android/launcher3/OplusBubbleTextView;)V

    goto :goto_39

    :cond_1b
    instance-of p0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_26

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    goto :goto_39

    :cond_26
    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_35

    const-string p0, "checkIconResult: set GroupChildCardView alpha 0f for hide original view"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_39

    :cond_35
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_39
    return-void
.end method

.method public isTouchVisibleRegion(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/ClipIconView;->isTouchVisibleRegion(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->isTouchVisibleRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "prepareForRecentAnimReverse, mIsOpening = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOriginalIcon != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    const-string v2, "OplusFloatingIconView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-nez v0, :cond_26

    goto :goto_6b

    :cond_26
    instance-of v1, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_30

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/OplusBubbleTextView;->prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    goto :goto_6b

    :cond_30
    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v1, :cond_44

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getParentFolderIcon()Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->touchController:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;I)V

    goto :goto_6b

    :cond_44
    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_4e

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;->prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    goto :goto_6b

    :cond_4e
    invoke-static {v0}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardInfo;->prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    goto :goto_6b

    :cond_60
    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    instance-of v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v0, :cond_6b

    check-cast p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public recycle()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetRecentReverseOpts()V

    invoke-super {p0}, Lcom/android/launcher3/views/FloatingIconView;->recycle()V

    const-string v0, "OplusFloatingIconView"

    const-string v1, "floating icon view recycle"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;

    invoke-static {v1}, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->access$000(Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;)V

    goto :goto_15

    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mRemoteAnimatorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    return-void
.end method

.method public releaseTransitionSurface()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "releaseTransitionSurface: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "OplusFloatingIconView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    invoke-interface {p0}, Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;->onFinish()V

    :cond_3d
    return-void
.end method

.method public resetIconToVisible()V
    .registers 3

    const-string v0, "OplusFloatingIconView"

    const-string/jumbo v1, "reset icon when anim exception"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v0, :cond_28

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_25

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/launcher3/views/OplusFloatingIconView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    :cond_25
    invoke-direct {p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetIconToVisibleImp()V

    :cond_28
    :goto_28
    return-void
.end method

.method public resetRecentReverseOpts()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "resetRecentReverseOpts, mIsOpening = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOriginalIcon != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFloatingIconView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-nez v0, :cond_40

    goto :goto_81

    :cond_40
    instance-of v1, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_4a

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->resetRecentReverseOpts()V

    goto :goto_81

    :cond_4a
    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v1, :cond_5a

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getParentFolderIcon()Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->touchController:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->resetRecentReverseOpts()V

    goto :goto_81

    :cond_5a
    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_64

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->resetRecentReverseOpts()V

    goto :goto_81

    :cond_64
    invoke-static {v0}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->resetRecentReverseOpts()V

    goto :goto_81

    :cond_76
    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    instance-of v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v0, :cond_81

    check-cast p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->resetRecentReverseOpts()V

    :cond_81
    :goto_81
    return-void
.end method

.method public setCancelStaggeredAnimRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mCancelStaggeredAnimRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setHideOriginal(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mHideIcon:Ljava/lang/Boolean;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .registers 10
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "setIcon: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "OplusFloatingIconView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5d

    if-eqz p1, :cond_5d

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v1, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->fetchFailed:Z

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    iget-object v2, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->uxForegroudScale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v3, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v4, v4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->hasStyleBounds:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;->onDrawableLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_5d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setIconLoadedListener(Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "setIconLoadedListener: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFloatingIconView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mDrawableLoadedListener:Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz v0, :cond_48

    iget-boolean v1, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz v1, :cond_48

    iget-object v1, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->uxForegroudScale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v2, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconCanClamped:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean p0, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->hasStyleBounds:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v1, v0, v2, p0}, Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;->onDrawableLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_48
    return-void
.end method

.method public setNeedDraw(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->needDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :cond_c
    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "FFFFZ",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3d

    invoke-interface {p8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez p6, :cond_3d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/views/FloatingIconViewContainer;

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/FloatingIconViewContainer;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "OplusFloatingIconView"

    const-string v2, "Icon has ready, but container is GONE"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher3/views/OplusFloatingIconView;->mIsHotseatIcon:Z

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->begin(ZLandroid/view/View;)V

    :cond_37
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/views/OplusFloatingIconView;->ensureLoadFloatIcon(Landroid/view/View;Z)V

    :cond_3d
    invoke-super/range {p0 .. p9}, Lcom/android/launcher3/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;Z)V

    return-void
.end method

.method public updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_30

    :cond_27
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_30
    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p1

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/widget/FrameLayout;->layout(IIII)V

    return-void
.end method
