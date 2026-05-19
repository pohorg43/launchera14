.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;
.super Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$Companion;

.field private static final TAG:Ljava/lang/String; = "TaskbarAllAppsSlideInView"


# instance fields
.field private mBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private mClipRect:Landroid/graphics/RectF;

.field private mFromStartApp:Z

.field private mIsAnimatingClosed:Z

.field private mPath:Landroid/graphics/Path;

.field private final mRadius:F

.field private mTaskbarOpenCloseAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->Companion:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c20

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mRadius:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->handleClose$lambda$1(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V

    return-void
.end method

.method public static final synthetic access$getMActivityContext$p$s593014637(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMBlurDrawable$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    return-object p0
.end method

.method public static final synthetic access$getMRadius$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mRadius:F

    return p0
.end method

.method public static final synthetic access$onCustomCloseComplete(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->onCustomCloseComplete()V

    return-void
.end method

.method public static final synthetic access$onCustomOpenComplete(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->onCustomOpenComplete()V

    return-void
.end method

.method public static final synthetic access$setMIsAnimatingClosed$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mIsAnimatingClosed:Z

    return-void
.end method

.method public static final synthetic access$setMTaskbarOpenCloseAnimator$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mTaskbarOpenCloseAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$startAnimation(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/AnimatorSet;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->startAnimation(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method private final cancelAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mTaskbarOpenCloseAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mTaskbarOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_17
    return-void
.end method

.method private static final handleClose$lambda$1(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method private final hideKeyboardIfNeed()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V

    :cond_27
    return-void
.end method

.method private final onCustomCloseComplete()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateAllAppsBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/views/ActivityContext;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->onCloseComplete()V

    return-void
.end method

.method private final onCustomCloseStart()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateAllAppsBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method private final onCustomOpenComplete()V
    .registers 1

    return-void
.end method

.method private final onCustomOpenStart()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateAllAppsBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method private final startAnimation(Landroid/animation/AnimatorSet;)V
    .registers 3

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$startAnimation$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$startAnimation$1;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :try_start_8
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_20

    const-string p1, "TaskbarAllAppsSlideInView"

    const-string v0, "catch NullPointerException Attempt to get length of null array!"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    instance-of p0, p0, Lh4/k$a;

    return-void
.end method


# virtual methods
.method public attachToContainer()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->attachToContainer()V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->updateSlideInViewParams()V

    :cond_20
    return-void
.end method

.method public final closeWhenStartApp(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mFromStartApp:Z

    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mFromStartApp:Z

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mClipRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    return-object p0
.end method

.method public getScrimColor(Landroid/content/Context;)I
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public getSolidColor()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public handleClose(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->handleClose(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    instance-of p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    if-eqz p1, :cond_14

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.taskbar.allapps.OplusTaskbarAllAppsContainerView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;->dismissPopupWindow()V

    :cond_14
    return-void
.end method

.method public handleClose(ZJ)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->hideKeyboardIfNeed()V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->onCustomCloseStart()V

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mIsAnimatingClosed:Z

    if-eqz p1, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->cancelAnimation()V

    sget-object p1, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;->INSTANCE:Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;

    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    const-string p3, "mActivityContext"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const/4 p3, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mFromStartApp:Z

    invoke-virtual {p1, p0, p2, p3, v0}, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;->getAnimator(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;ZZ)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$handleClose$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$handleClose$1;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->startAnimation(Landroid/animation/AnimatorSet;)V

    goto :goto_3c

    :cond_2e
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->cancelAnimation()V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->onCustomCloseComplete()V

    new-instance p1, Lcom/android/launcher3/model/c1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_3c
    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    const v1, 0x7f06080d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mBlurBg:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_32

    :cond_23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->mBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->mBlurBg:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_32
    return-void
.end method

.method public onCloseComplete()V
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const-string p0, "ev"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->isEventOverContent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_15
    return v1
.end method

.method public onDrag(F)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public show(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_18
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->onCustomOpenStart()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->attachToContainer()V

    :cond_24
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->cancelAnimation()V

    if-eqz p1, :cond_4a

    sget-object p1, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;->INSTANCE:Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    const-string v2, "mActivityContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;->getAnimator(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;ZZ)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$2;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView$show$3;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_4d

    :cond_4a
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->onCustomOpenComplete()V

    :goto_4d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    return-void
.end method
