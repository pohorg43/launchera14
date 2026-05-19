.class public Lcom/android/launcher3/views/FloatingIconView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher3/views/FloatingView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    }
.end annotation


# static fields
.field public static final GET_BADGE_MILLS:I = 0x64

.field public static final SHAPE_PROGRESS_DURATION:F = 0.1f

.field private static final TAG:Ljava/lang/String;

.field private static final iconSurfaceManagerProxy:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

.field private static sFetchIconId:J

.field private static sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static sRecycledFetchIconId:J

.field public static final sTmpObjArray:[Ljava/lang/Object;

.field private static final sTmpRectF:Landroid/graphics/RectF;


# instance fields
.field private canForegroundAnim:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private canReleaseSurface:Z

.field public iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

.field public mAppPackageName:Ljava/lang/String;

.field public mBadge:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBtvDrawable:Landroid/view/View;

.field public mClipIconView:Lcom/android/launcher3/views/ClipIconView;

.field public mEndRunnable:Ljava/lang/Runnable;

.field private mFastFinishRunnable:Ljava/lang/Runnable;

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field public mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

.field private mIconOffsetY:F

.field public mIsOpening:Z

.field public final mIsRtl:Z

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field public mListenerView:Lcom/android/launcher3/views/ListenerView;

.field public mLoadIconSignal:Landroid/os/CancellationSignal;

.field private mOnTargetChangeRunnable:Ljava/lang/Runnable;

.field public mOriginalIcon:Landroid/view/View;

.field public mPositionOut:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/launcher3/views/FloatingIconView;

    const-string v0, "FloatingIconView"

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    sput-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->sTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->iconSurfaceManagerProxy:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/launcher3/views/FloatingIconView;->canReleaseSurface:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mAppPackageName:Ljava/lang/String;

    sget-object p3, Lcom/android/launcher3/model/c0;->c:Lcom/android/launcher3/model/c0;

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->canForegroundAnim:Ljava/util/function/Supplier;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    new-instance p3, Lcom/android/launcher3/views/ListenerView;

    invoke-direct {p3, p1, p2}, Lcom/android/launcher3/views/ListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    new-instance p3, Lcom/android/launcher3/views/OplusClipIconView;

    invoke-direct {p3, p1, p2}, Lcom/android/launcher3/views/OplusClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/FloatingIconView;Landroid/os/CancellationSignal;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/FloatingIconView;->lambda$checkIconResult$2(Landroid/os/CancellationSignal;Landroid/view/View;)V

    return-void
.end method

.method private addToParent(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x65

    if-ne v0, v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    iput-boolean v1, v0, Lcom/android/launcher3/views/OplusFloatingIconView;->mIsHotseatIcon:Z

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->begin(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/View;ZLcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/Launcher;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/views/FloatingIconView;->lambda$getFloatingIconView$5(Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/View;ZLcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->lambda$getIconResult$1(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/views/FloatingIconView;Lcom/android/launcher3/dragndrop/DragLayer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->lambda$finish$6(Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void
.end method

.method public static synthetic e()Ljava/lang/Boolean;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/views/FloatingIconView;->lambda$new$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Landroid/view/View;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/views/FloatingIconView;->lambda$getFloatingIconView$4(Landroid/view/View;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V

    return-void
.end method

.method public static fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    .registers 16
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    invoke-static {p0, p1, p3, v7}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    instance-of v2, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_22

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, 0xc00

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->makePreloadIcon()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    goto :goto_2c

    :cond_22
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v2, :cond_2e

    check-cast v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    :goto_2c
    move-object v1, v0

    goto :goto_37

    :cond_2e
    instance-of v2, v0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v2, :cond_37

    invoke-static {v0}, Lcom/android/launcher3/icons/FastBitmapUtils;->newIconFromFancyDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    goto :goto_2c

    :cond_37
    :goto_37
    new-instance v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const/4 v0, 0x0

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v2

    if-eqz v2, :cond_44

    const/4 v2, 0x1

    goto :goto_45

    :cond_44
    move v2, v0

    :goto_45
    invoke-direct {v9, p2, v2}, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    iput-object v1, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isAlreadyLoadByLocal:Z

    sget-wide v1, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    iput-boolean v0, v9, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->fetchFailed:Z

    sget-object v0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/launcher3/views/c;

    move-object v0, v11

    move-object v3, v9

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/views/c;-><init>(JLcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Z)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    sput-object v9, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    return-object v9
.end method

.method public static synthetic g(JLcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Z)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/views/FloatingIconView;->lambda$fetchIcon$3(JLcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public static getFakeFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;
    .registers 6

    if-eqz p2, :cond_a

    invoke-static {p1, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->disableFloatingIcon(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->setNeedDraw(Ljava/lang/Boolean;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->setHideOriginal(Ljava/lang/Boolean;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-object p0
.end method

.method public static getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;
    .registers 14

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v1

    const v2, 0x7f0d0124

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/views/FloatingIconView;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v0}, Lcom/android/launcher3/views/FloatingIconView;->setNeedDraw(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v7}, Lcom/android/launcher3/views/FloatingIconView;->recycle()V

    iput-boolean p4, v7, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    iput-object p1, v7, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    iput-object p3, v7, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iput-object v1, v7, Lcom/android/launcher3/views/FloatingIconView;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_41

    if-eqz p2, :cond_41

    const/4 v1, 0x1

    move v8, v1

    goto :goto_42

    :cond_41
    move v8, v0

    :goto_42
    if-eqz v8, :cond_a6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/android/launcher3/views/FloatingIconView;->mAppPackageName:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v3, "getFloatingIconView, app package = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/android/launcher3/views/FloatingIconView;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v3, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v3, :cond_7a

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v3, :cond_7a

    invoke-static {p0, p1, v1, p4}, Lcom/android/launcher3/views/FloatingIconView;->fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    goto :goto_9f

    :cond_7a
    sget-object v3, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const-string v4, "Icon"

    if-eqz v3, :cond_94

    iget-object v3, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_94

    const-string v1, "Cache hit!!! use cache data directly"

    invoke-static {v4, v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iput-object v1, v7, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iput-boolean v0, v1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isAlreadyLoadByLocal:Z

    goto :goto_9f

    :cond_94
    const-string v3, "Cache miss!!! i fetch the icon for myself"

    invoke-static {v4, v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p4}, Lcom/android/launcher3/views/FloatingIconView;->fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    :goto_9f
    iget-object v1, v7, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v1, v1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v7, v1}, Lcom/android/launcher3/views/FloatingIconView;->setOriginalDrawableBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a6
    const/4 v1, 0x0

    sput-object v1, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    invoke-direct {v7, p0, p1, p4, p3}, Lcom/android/launcher3/views/FloatingIconView;->matchPositionOf(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    invoke-static {v7, v0}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    invoke-direct {v7, p1}, Lcom/android/launcher3/views/FloatingIconView;->addToParent(Landroid/view/View;)V

    instance-of p3, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p3, :cond_c8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p3, :cond_c8

    move-object p3, p1

    check-cast p3, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p3, p3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    if-eqz p3, :cond_c8

    invoke-interface {p3}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForFloating()V

    :cond_c8
    iget-object p3, v7, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_d5

    iget-object p3, v7, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v5, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_d5
    iget-object p3, v7, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    new-instance v1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v1, v7}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/views/FloatingIconView;)V

    invoke-virtual {p3, v1}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    iget-object p3, v7, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    new-instance v1, Lcom/android/launcher3/model/b1;

    invoke-direct {v1, v7}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/launcher3/views/FloatingIconView;)V

    invoke-virtual {p3, v1}, Lcom/android/launcher3/views/ListenerView;->setTransitionSurfaceListener(Ljava/lang/Runnable;)V

    if-nez p4, :cond_100

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez p3, :cond_100

    instance-of p3, p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-nez p3, :cond_100

    new-instance p3, Lcom/android/launcher/folder/recommend/view/b;

    invoke-direct {p3, p1, v7}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Landroid/view/View;Lcom/android/launcher3/views/FloatingIconView;)V

    invoke-virtual {v7, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_103

    :cond_100
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :goto_103
    new-instance p3, Lcom/android/exceptionmonitor/util/f;

    move-object v0, p3

    move-object v1, v7

    move v2, p2

    move-object v3, p1

    move v4, p4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/exceptionmonitor/util/f;-><init>(Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/View;ZLcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/Launcher;)V

    iput-object p3, v7, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v8, :cond_115

    invoke-virtual {v7, p1}, Lcom/android/launcher3/views/FloatingIconView;->checkIconResult(Landroid/view/View;)V

    :cond_115
    return-object v7
.end method

.method private static getIconResult(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V
    .registers 16
    .param p4  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    instance-of v2, p2, Lcom/android/launcher3/popup/SystemShortcut;

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_17

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto/16 :goto_88

    :cond_17
    instance-of p2, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p2, :cond_27

    check-cast p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto/16 :goto_88

    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_88

    :cond_2c
    instance-of v2, p4, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v2, :cond_31

    goto :goto_7d

    :cond_31
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v6, v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v7, v2

    if-eqz v0, :cond_79

    instance-of p1, p4, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz p1, :cond_4c

    move-object p1, p4

    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result p1

    if-eqz p1, :cond_4c

    move v8, v1

    goto :goto_4e

    :cond_4c
    const/4 p1, 0x0

    move v8, p1

    :goto_4e
    sget-object v9, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object v4, p0

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher/f;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher/f;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    const-wide/16 v4, 0x64

    :try_start_67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6f} :catch_70
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_67 .. :try_end_6f} :catch_70
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_67 .. :try_end_6f} :catch_70

    goto :goto_89

    :catch_70
    move-exception p2

    sget-object v0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v2, "getIconResult e = "

    invoke-static {v2, p2, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_88

    :cond_79
    instance-of p1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_7f

    :cond_7d
    :goto_7d
    move-object p1, p4

    goto :goto_88

    :cond_7f
    const/4 v8, 0x1

    sget-object v9, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    move-object v4, p0

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_88
    move-object p2, v3

    :goto_89
    if-nez p1, :cond_8d

    move-object p1, v3

    goto :goto_95

    :cond_8d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_95
    invoke-static {p0, p1, p3}, Lcom/android/launcher3/views/FloatingIconView;->getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I

    move-result p3

    monitor-enter p5

    if-eqz p4, :cond_a8

    if-ne p1, p4, :cond_9f

    goto :goto_a8

    :cond_9f
    :try_start_9f
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_a9

    :cond_a8
    :goto_a8
    move-object p4, v3

    :goto_a9
    iput-object p4, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iput p3, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    iget-object p1, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    if-eqz p1, :cond_c0

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    iget-object p1, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v3, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    :cond_c0
    iput-boolean v1, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    monitor-exit p5

    return-void

    :catchall_c4
    move-exception p0

    monitor-exit p5
    :try_end_c6
    .catchall {:try_start_9f .. :try_end_c6} :catchall_c4

    throw p0
.end method

.method private static getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V
    .registers 15

    xor-int/lit8 p2, p2, 0x1

    instance-of v0, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    check-cast p1, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {p1}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    :goto_d
    move-object v3, p1

    move v7, v1

    goto :goto_25

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p1

    goto :goto_d

    :cond_23
    move-object v3, p1

    move v7, p2

    :goto_25
    if-nez v3, :cond_28

    return-void

    :cond_28
    instance-of p1, v3, Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_33

    move-object p1, v3

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, p4}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    goto :goto_79

    :cond_33
    instance-of p1, v3, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p1, :cond_3e

    move-object p1, v3

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1, p4}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    goto :goto_79

    :cond_3e
    instance-of p1, v3, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p1, :cond_48

    check-cast v3, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v3, p3}, Lcom/android/launcher3/card/LauncherCardView;->getLocation(Landroid/graphics/RectF;)V

    return-void

    :cond_48
    instance-of p1, v3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz p1, :cond_52

    check-cast v3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v3, p3}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getLocation(Landroid/graphics/RectF;)V

    return-void

    :cond_52
    instance-of p1, v3, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz p1, :cond_6e

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getIconRectBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getParentFolderIcon()Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object v5

    const/4 v8, 0x0

    move-object v6, p4

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/Utilities;->getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V

    return-void

    :cond_6e
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p4, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_79
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    const/4 v6, 0x0

    move-object v4, p4

    move v5, v7

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V

    return-void
.end method

.method public static getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p2, v0

    invoke-direct {v2, v1, v1, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    :try_start_2b
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p1

    invoke-static {v2, p1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_58

    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Rect;->inset(II)V

    iget p0, v2, Landroid/graphics/Rect;->left:I

    return p0

    :catchall_58
    move-exception p1

    if-eqz p0, :cond_63

    :try_start_5b
    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_63
    :goto_63
    throw p1
.end method

.method private synthetic lambda$checkIconResult$2(Landroid/os/CancellationSignal;Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v0, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Landroid/graphics/drawable/Drawable;

    iget p1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {p2, p1}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    return-void
.end method

.method private static synthetic lambda$fetchIcon$3(JLcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Z)V
    .registers 14

    sget-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    cmp-long p0, p0, v0

    if-gez p0, :cond_11

    sget-object p0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string p1, "fetchIcon fetchIconId < sRecycledFetchIconId, so return!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, p2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->fetchFailed:Z

    return-void

    :cond_11
    const-wide/16 p0, 0x8

    const-string v0, "FloatingIconView#fetchIcon"

    invoke-static {p0, p1, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/views/FloatingIconView;->iconSurfaceManagerProxy:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v0, p3}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isViewSupportAsync(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object v0, p4

    move-object v1, p3

    move-object v2, p5

    move-object v3, p6

    move-object v4, p2

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/views/OplusFloatingIconView;->getIconResultForAsync(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Z)V

    goto :goto_33

    :cond_2a
    move-object v0, p4

    move-object v1, p3

    move-object v2, p5

    move-object v3, p6

    move-object v4, p2

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/views/OplusFloatingIconView;->getOplusIconResult(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Z)V

    :goto_33
    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private synthetic lambda$finish$6(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->removeFromParent(Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void
.end method

.method private static synthetic lambda$getFloatingIconView$4(Landroid/view/View;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V
    .registers 5

    sget-object p2, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v0, "Icon"

    const-string v1, "FloatingIconView, onClick"

    invoke-static {v0, p2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p2, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-nez p2, :cond_11

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_11
    instance-of p1, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_1f

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->setUpTimeForCamera()V

    :cond_1f
    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$getFloatingIconView$5(Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/View;ZLcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/Launcher;)V
    .registers 10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_f8

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-interface {p1, p2, p3}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->canSetIconVisibleOnAnimationEnd(Landroid/view/View;Z)Z

    move-result p1

    goto :goto_10

    :cond_f
    move p1, v0

    :goto_10
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endRunnable called, view is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", canSetIconVisibleOnAnimationEnd shouldshow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    if-nez p1, :cond_3a

    invoke-virtual {p0, p4}, Lcom/android/launcher3/views/FloatingIconView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void

    :cond_3a
    const/high16 p1, 0x3f800000  # 1.0f

    const/4 v1, 0x1

    if-eqz p3, :cond_6d

    instance-of p3, p2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p3, :cond_51

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    iget-object p1, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->resetPressAnimState()V

    invoke-virtual {p2}, Landroid/widget/TextView;->invalidate()V

    goto :goto_68

    :cond_51
    instance-of p3, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p3, :cond_5b

    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    goto :goto_68

    :cond_5b
    invoke-static {p2}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_65

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_68

    :cond_65
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_68
    invoke-virtual {p0, p4}, Lcom/android/launcher3/views/FloatingIconView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    goto/16 :goto_fb

    :cond_6d
    instance-of v2, p2, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v3, 0x2

    if-eqz v2, :cond_bb

    invoke-static {p2, p5}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkShowOriginalView(Landroid/view/View;Lcom/android/launcher3/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-virtual {p5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->isDragging(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_85

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_85
    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p1, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    if-eqz p1, :cond_8e

    invoke-interface {p1}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForFloating()V

    :cond_8e
    invoke-virtual {p2, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    iget-object p1, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->resetPressAnimState()V

    iget-object p1, p2, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz p1, :cond_f4

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result p1

    if-ne p1, v1, :cond_f4

    iget-object p1, p2, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->getNumberCount()I

    move-result p1

    if-lez p1, :cond_f4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-static {p3, p1, p5}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkStateAllAppsStopFloatAnima(ZLandroid/view/ViewParent;Lcom/android/launcher3/Launcher;)Z

    move-result p1

    if-nez p1, :cond_f4

    new-array p1, v3, [F

    fill-array-data p1, :array_fc

    invoke-virtual {p2, p1}, Lcom/android/launcher3/BubbleTextView;->animateDotScale([F)V

    goto :goto_f4

    :cond_bb
    instance-of p3, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p3, :cond_d6

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->hasDot()Z

    move-result p1

    if-eqz p1, :cond_f4

    new-array p1, v3, [F

    fill-array-data p1, :array_104

    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    goto :goto_f4

    :cond_d6
    invoke-static {p5, p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkDragingView(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_e8

    sget-object p1, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string p3, "mEndRunnable originalView set INVISIBLE"

    invoke-static {p1, p3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f4

    :cond_e8
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p2}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_f4

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_f4
    :goto_f4
    invoke-virtual {p0, p4}, Lcom/android/launcher3/views/FloatingIconView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    goto :goto_fb

    :cond_f8
    invoke-virtual {p0, p4}, Lcom/android/launcher3/views/FloatingIconView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    :goto_fb
    return-void

    :array_fc
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_104
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static synthetic lambda$getIconResult$1(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;
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

.method private static synthetic lambda$new$0()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private matchPositionOf(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V
    .registers 6

    invoke-static {p1, p2, p3, p4}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    new-instance p1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p4, p1}, Lcom/android/launcher3/views/FloatingIconView;->updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p3, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p2, p3, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private removeFromParent(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/views/FloatingIconViewContainer;

    if-eqz v1, :cond_12

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/views/FloatingIconViewContainer;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->finish()V

    goto :goto_1c

    :cond_12
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1c

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1c
    :goto_1c
    if-eqz v1, :cond_52

    check-cast v0, Lcom/android/launcher3/views/FloatingIconViewContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->getMOriginalView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->OPEN_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->isInterruptAnimation([Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-ne v1, v3, :cond_52

    invoke-virtual {v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isFinished()Z

    move-result v0

    if-nez v0, :cond_52

    if-nez v2, :cond_52

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object p0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string p1, "cannot remove from drag layer as not finished"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_52
    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private setOriginalDrawableBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method


# virtual methods
.method public checkIconResult(Landroid/view/View;)V
    .registers 7

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez v1, :cond_11

    sget-object p0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string p1, "No icon load result found in checkIconResult"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    monitor-enter v1

    :try_start_12
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v3, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz v3, :cond_2b

    iget-object v0, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v4, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {p1, v0}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    goto :goto_34

    :cond_2b
    new-instance v3, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher3/views/FloatingIconView;Landroid/os/CancellationSignal;Landroid/view/View;)V

    iput-object v3, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    :goto_34
    monitor-exit v1

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method public fastFinish()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "FloatingIconView fast finish ,Callers = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2, v1, v0}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    :cond_26
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    :cond_2f
    return-void
.end method

.method public finish(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->removeFromParent(Lcom/android/launcher3/dragndrop/DragLayer;)V

    goto :goto_18

    :cond_e
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/widget/a;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/views/FloatingIconView;Lcom/android/launcher3/dragndrop/DragLayer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_18
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->recycle()V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p1

    const v0, 0x7f0d0124

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    return-void
.end method

.method public forceLoadIfNeed(FZLjava/util/function/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getHideOriginal()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public interceptSurfaceRelease()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "interceptSurfaceRelease, callers: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2, v1, v0}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->canReleaseSurface:Z

    return-void
.end method

.method public isDifferentFromAppIcon()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    iget-boolean p0, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isThemed:Z

    :goto_8
    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_14

    :cond_f
    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p0}, Lcom/android/launcher3/views/ClipIconView;->endReveal()V

    :goto_14
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-boolean p1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-nez p1, :cond_15

    :cond_9
    iget-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_18

    :cond_15
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_18
    iget-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez p1, :cond_23

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz p0, :cond_23

    invoke-static {p0, v0}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    :cond_23
    return-void
.end method

.method public onGlobalLayout()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    sget-object v3, Lcom/android/launcher3/views/FloatingIconView;->sTmpRectF:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/views/FloatingIconView;->updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_37

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_37
    return-void
.end method

.method public recycle()V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_35

    sget-object v2, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recycle, mEndRunnable = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/views/ListenerView;->setTransitionSurfaceListener(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/launcher3/views/FloatingIconView;->sTmpObjArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-wide v2, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    sput-wide v2, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v2}, Lcom/android/launcher3/views/ClipIconView;->recycle()V

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    iput v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    return-void
.end method

.method public releaseSurfaceAndFinish()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseSurfaceAndFinish: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/views/FloatingIconView;->canReleaseSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->canReleaseSurface:Z

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->releaseTransitionSurface()V

    :cond_30
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->fastFinish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->canReleaseSurface:Z

    return-void
.end method

.method public releaseTransitionSurface()V
    .registers 1

    return-void
.end method

.method public setFastFinishRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setHideOriginal(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .registers 12
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
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-boolean v5, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    move-object v2, p1

    move v3, p4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/views/ClipIconView;->setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V

    instance-of p1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p1, :cond_4d

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p4, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p4, v1, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_40

    new-instance p2, Landroid/graphics/Rect;

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p2, v1, v1, p4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p4, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-static {p4, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadgeBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_40
    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4d
    invoke-direct {p0, p3}, Lcom/android/launcher3/views/FloatingIconView;->setOriginalDrawableBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setNeedDraw(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method public setOnTargetChangeListener(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setPositionOffsetY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->onGlobalLayout()V

    return-void
.end method

.method public update(FILandroid/graphics/RectF;FFFZ)V
    .registers 20

    move-object v8, p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, v8, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-object v1, v8, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v2, v8, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v9

    iget-object v10, v8, Lcom/android/launcher3/views/FloatingIconView;->canForegroundAnim:Ljava/util/function/Supplier;

    const/4 v11, 0x1

    move-object v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move v6, p2

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/views/ClipIconView;->update(Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/graphics/RectF;FFFIZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Z)V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;Z)V
    .registers 22
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

    move-object v8, p0

    move v0, p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-nez p7, :cond_b

    iget-object v0, v8, Lcom/android/launcher3/views/FloatingIconView;->canForegroundAnim:Ljava/util/function/Supplier;

    move-object v10, v0

    goto :goto_d

    :cond_b
    move-object/from16 v10, p7

    :goto_d
    iget-object v0, v8, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-object v1, v8, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const/16 v6, 0xff

    iget-object v2, v8, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v9

    move-object v2, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p6

    move-object v8, p0

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/views/ClipIconView;->update(Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/graphics/RectF;FFFIZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;Z)V

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

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_31

    :cond_28
    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_31
    iget-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, v0

    goto :goto_48

    :cond_46
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_48
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p1

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/widget/FrameLayout;->layout(IIII)V

    return-void
.end method
