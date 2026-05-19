.class public abstract Lcom/android/launcher/OplusPagedViewImpl;
.super Lcom/android/launcher3/PagedView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/OplusPagedViewImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Lcom/android/launcher3/PagedView<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusPagedViewImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusPagedViewImpl.kt\ncom/android/launcher/OplusPagedViewImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1137:1\n1#2:1138\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher/OplusPagedViewImpl$Companion;

.field private static final DEFAULT_MODE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FLING_MODE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_OVERSCROLL_VELOCITY:I = 0x2710
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_SCREEN_WIDTH_FOLDSCREEN:I = 0x780
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_SPRING_SCROLL_TO_PAGE_VELOCITY:F = 8000.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MIN_OVERSCROLL_VELOCITY:I = 0xbb8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MIN_SCROLL_SINGLE_PAGE_VELOCITY:I = 0x384
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVERSCROLL_PAGE_SNAP_ANIMATION_DURATION:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SCROLL_MODE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SCROLL_VELOCITY_FACTER:F = 3.5f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusPagedViewImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private allowOplusOverScroll:Z

.field private mBigFolderIntercept:Z

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mIsSpringMaxMinScroll:Z

.field private mLastAmount:I

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mScrollMode:I

.field private final mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

.field private mTempAmount:I

.field private mUnboundedScroll:I

.field private overScrollAmount:I

.field private wasInOverscroll:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/OplusPagedViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/OplusPagedViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/OplusPagedViewImpl;->Companion:Lcom/android/launcher/OplusPagedViewImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/OplusPagedViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/OplusPagedViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/launcher/OplusSpringOverScroller;

    invoke-direct {p2, p1}, Lcom/android/launcher/OplusSpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    const-string p2, "SCROLL"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->allowOplusOverScroll:Z

    return-void
.end method

.method private final calcRealOverScrollDist(III)I
    .registers 4

    if-nez p3, :cond_b

    const-string p0, "OplusPagedViewImpl"

    const-string p1, "calcRealOverScrollDist total is 0"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_b
    int-to-float p0, p1

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    div-int/2addr p2, p3

    int-to-float p2, p2

    sub-float/2addr p1, p2

    mul-float/2addr p1, p0

    const/4 p0, 0x3

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static final computeScrollHelper$lambda$1(Lcom/android/launcher/OplusPagedViewImpl;FF)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->scrollTo(FF)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/OplusPagedViewImpl;FF)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->computeScrollHelper$lambda$1(Lcom/android/launcher/OplusPagedViewImpl;FF)V

    return-void
.end method

.method private static final interceptUpEventWhenDragged$lambda$5(Lcom/android/launcher/OplusPagedViewImpl;II)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPageWithVelocity(II)Z

    return-void
.end method

.method private static final interceptUpEventWhenDragged$lambda$6(Lcom/android/launcher/OplusPagedViewImpl;II)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPageWithVelocity(II)Z

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher/OplusPagedViewImpl;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->interceptUpEventWhenDragged$lambda$6(Lcom/android/launcher/OplusPagedViewImpl;II)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher/OplusPagedViewImpl;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->interceptUpEventWhenDragged$lambda$5(Lcom/android/launcher/OplusPagedViewImpl;II)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher/OplusPagedViewImpl;I)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPageWithVelocity$lambda$4(Lcom/android/launcher/OplusPagedViewImpl;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/OplusPagedViewImpl;->setCurrentPage$lambda$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher/OplusPagedViewImpl;I)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPage$lambda$3(Lcom/android/launcher/OplusPagedViewImpl;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final setCurrentPage$lambda$0(Landroid/view/View;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method private static final snapToPage$lambda$3(Lcom/android/launcher/OplusPagedViewImpl;I)Ljava/lang/Integer;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    iget p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final snapToPageWithVelocity$lambda$4(Lcom/android/launcher/OplusPagedViewImpl;I)Ljava/lang/Integer;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->isFolderOverScroll()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p0

    goto :goto_19

    :cond_17
    iget p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    :goto_19
    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final updateMinAndMaxScrollXForSpring(Z)V
    .registers 9

    const-string v0, " ,mCurrentPage:"

    const-string v1, " ,mNextPage:"

    if-eqz p1, :cond_92

    iget-boolean v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    if-nez v2, :cond_92

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    sget-object v4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    iget v6, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    if-ne v2, v6, :cond_35

    if-eq v3, v5, :cond_11a

    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "updateMinAndMaxScrollXForSpring: modifyOrRevert "

    const-string v6, " mIsSpringMaxMinScroll: "

    invoke-static {v5, p1, v6}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v5, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const-string/jumbo v1, "max: "

    const-string v5, " > "

    invoke-static {p1, v0, v1, v3, v5}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    const-string v0, "; min: "

    const-string v1, " > mMinScroll; caller: "

    invoke-static {p1, p0, v0, v2, v1}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x5

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11a

    :cond_92
    if-nez p1, :cond_11a

    iget-boolean v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    if-eqz v2, :cond_11a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v3, 0x0

    if-nez v2, :cond_d5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-nez v2, :cond_d5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/quickstep/RecentsActivity;

    if-nez v2, :cond_d5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "null cannot be cast to non-null type android.content.ContextWrapper"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/quickstep/RecentsActivity;

    if-eqz v2, :cond_c6

    goto :goto_d5

    :cond_c6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher/effect/EffectSetting;->isCurrentDefaultEffect(Lcom/android/launcher3/Launcher;)Z

    move-result v2

    goto :goto_d6

    :cond_d5
    :goto_d5
    move v2, v3

    :goto_d6
    if-eqz v2, :cond_11a

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollX()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_118

    const-string/jumbo v4, "updateMinAndMaxScrollXForSpring:isDefaultEffect:"

    const-string v5, " modifyOrRevert "

    const-string v6, " mIsSpringMaxMinScroll:"

    invoke-static {v4, v2, v5, p1, v6}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "max:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",min:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const-string v1, "OplusPagedViewImpl"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_118
    iput-boolean v3, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    :cond_11a
    :goto_11a
    return-void
.end method


# virtual methods
.method public allowFlingWhenFreeScroll()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public allowSnapWhenCancelEvent()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public amountUpdateAndScroll(III)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    int-to-float p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->getOverScrollAmount(FI)I

    move-result p1

    add-int/2addr p1, p3

    invoke-interface {v0, p0, p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;I)V

    return-void
.end method

.method public applyOverScroll()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public calculateScrollDuration(FI)I
    .registers 3

    const/16 p0, 0x3e8

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x40600000  # 3.5f

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    invoke-static {p1}, Lu4/a;->b(F)I

    move-result p0

    return p0
.end method

.method public computeScrollHelper()Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v3

    if-eqz v3, :cond_3b

    iget v3, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    if-ne v3, v2, :cond_3b

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrXF()F

    move-result v3

    cmpg-float v0, v0, v3

    if-nez v0, :cond_28

    move v1, v2

    :cond_28
    if-nez v1, :cond_37

    sget-object v0, Lcom/android/launcher/g0;->a:Lcom/android/launcher/g0;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrXF()F

    move-result v3

    invoke-interface {v1, p0, v0, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    :cond_37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getCurrXAfterOffset()I

    move-result v1

    if-ne v0, v1, :cond_51

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v1

    if-nez v1, :cond_b1

    :cond_51
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_a4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-OplusPagedViewImpl"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "computeScrollHelper, currentScroll="

    const-string v4, ", mScroller.currX ="

    invoke-static {v3, v0, v4}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mScroller.currXAfterOffset="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrXAfterOffset()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isSpringing="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrXAfterOffset()I

    move-result v3

    invoke-interface {v0, p0, v1, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    :cond_b1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return v2

    :cond_b5
    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->computeScrollOffset()Z

    move-result v0

    const-string v3, "OplusPagedViewImpl"

    const/4 v4, -0x1

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    if-ne v1, v2, :cond_11d

    iget-object v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v1}, Lcom/android/launcher/OplusSpringOverScroller;->getCOUICurrX()I

    move-result v1

    iget v5, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    if-lez v5, :cond_d7

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    add-int/2addr v1, v5

    :cond_d7
    const-string v5, "computeScrollHelper(), spring: currentScroll="

    const-string v6, " - curX:"

    invoke-static {v5, v0, v6, v1, v3}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    if-eq v0, v1, :cond_11d

    const-string v0, "computeScrollHelper(), spring: curX="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v5}, Lcom/android/launcher/OplusSpringOverScroller;->getCOUICurrX()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mNextPage="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,mIsBeingDragged="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-static {v0, v5, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v0, p0, v3, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-ne v0, v4, :cond_11d

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_11d

    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->getCOUICurrX()I

    move-result v0

    if-nez v0, :cond_11d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_11d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return v2

    :cond_121
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eq v0, v4, :cond_1a2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->pageUpdate()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_18a

    const-string v2, "computeScrollHelper(), scroll End, change mNextPage to INVALID_PAGE, mCurrentPageScroll("

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", thisPageScroll="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mScrollX="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", prevPage="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mNextPage="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mIsBeingDragged="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-static {v2, v5, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_18a
    iput v4, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_196

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_196
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canAnnouncePageDescription()Z

    move-result v0

    if-eqz v0, :cond_19f

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->announcePageForAccessibility()V

    :cond_19f
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->maybeCurrentScrollWrong()V

    :cond_1a2
    return v1
.end method

.method public final dampedOverScroll(I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    instance-of v0, p0, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->applyOverScroll()Z

    move-result v2

    if-nez v2, :cond_42

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCardSize()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher/OplusPagedViewImpl;->getOverScrollAmount(FI)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->overScrollAmount:I

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    add-int/2addr v0, p1

    invoke-interface {v1, p0, v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_42
    iget v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5a

    iget-object v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v2}, Lcom/android/launcher/OplusSpringOverScroller;->isCOUIFinished()Z

    move-result v2

    if-nez v2, :cond_5a

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mTempAmount:I

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    add-int/2addr p1, v0

    invoke-interface {v1, p0, p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;I)V

    goto :goto_5d

    :cond_5a
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher/OplusPagedViewImpl;->amountUpdateAndScroll(III)V

    :goto_5d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;FZ)V
    .registers 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v2, v2

    mul-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v2, 0x1

    if-gt v1, p2, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xfe

    if-ne p1, p2, :cond_32

    goto :goto_34

    :cond_32
    const/4 p1, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    move p1, v2

    :goto_35
    if-eqz p1, :cond_59

    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    iget p1, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget p2, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    iput p1, p0, Lcom/android/launcher3/PagedView;->mTotalTouchMoved:F

    iput p1, p0, Lcom/android/launcher3/PagedView;->mTotalViewMoved:F

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    if-eqz p3, :cond_59

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_59
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    if-eqz v2, :cond_11

    iput-boolean v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mBigFolderIntercept:Z

    :cond_11
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    move v3, v0

    goto :goto_21

    :cond_20
    move v3, v1

    :goto_21
    if-eqz v3, :cond_31

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v3, :cond_31

    iget-boolean v3, p0, Lcom/android/launcher/OplusPagedViewImpl;->mBigFolderIntercept:Z

    if-nez v3, :cond_31

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/launcher/OplusPagedViewImpl;->determineScrollingStart(Landroid/view/MotionEvent;FZ)V

    goto :goto_32

    :cond_31
    move v0, v2

    :goto_32
    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_12

    return v1

    :cond_12
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/16 v0, 0x42

    const/16 v2, 0x11

    if-eqz p1, :cond_22

    if-eq p2, v2, :cond_21

    if-eq p2, v0, :cond_1f

    goto :goto_22

    :cond_1f
    move p2, v2

    goto :goto_22

    :cond_21
    move p2, v0

    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_47

    if-eq p2, v0, :cond_2d

    :cond_2b
    move v1, v3

    goto :goto_5c

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getLastPageIndex()I

    move-result v0

    if-ge p1, v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_5c

    :cond_47
    if-lez p1, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->requestFocus(I)Z

    :goto_5c
    return v1
.end method

.method public extendDurationWhenUp(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller;->extendDuration(I)V

    return-void
.end method

.method public fixUpSnapToPageWithVelocityScrollDelta(Ljava/util/function/Supplier;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const-string p0, "deltaSupplier"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "deltaSupplier.get()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getAllowOplusOverScroll()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->allowOplusOverScroll:Z

    return p0
.end method

.method public getFoldScreenDirection(FF)F
    .registers 10

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result v4

    if-gt v1, v4, :cond_38

    :cond_28
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getMinWidthForSmallScreen()I

    move-result v4

    if-gt v1, v4, :cond_43

    :cond_38
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_43

    move v1, v3

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    iget-object v4, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_54

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    if-eqz v4, :cond_54

    iget-boolean v4, v4, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-ne v4, v3, :cond_54

    move v4, v3

    goto :goto_55

    :cond_54
    move v4, v2

    :goto_55
    if-eqz v4, :cond_62

    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_6d

    goto :goto_6b

    :cond_62
    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_6d

    :goto_6b
    move v4, v3

    goto :goto_6e

    :cond_6d
    move v4, v2

    :goto_6e
    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v6, 0x0

    sub-float/2addr p2, p1

    if-eqz v5, :cond_79

    cmpg-float p2, p2, v6

    if-gez p2, :cond_7e

    goto :goto_7d

    :cond_79
    cmpl-float p2, p2, v6

    if-lez p2, :cond_7e

    :goto_7d
    move v2, v3

    :cond_7e
    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne p2, v3, :cond_ca

    if-eqz v1, :cond_ca

    if-eqz v4, :cond_ca

    if-eqz v2, :cond_ca

    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/16 v1, 0x780

    if-le p0, v1, :cond_a7

    move p0, v1

    :cond_a7
    if-le p2, p0, :cond_aa

    move p2, p0

    :cond_aa
    int-to-float p0, p2

    const-string p2, "ACTION_MOVE Touch PortraitPoint X out of range! rect.width:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " direction:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusPagedViewImpl"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p1, p0

    :cond_ca
    return p1
.end method

.method public final getLastPageIndex()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p0

    rem-int p0, v0, p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getMBigFolderIntercept()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mBigFolderIntercept:Z

    return p0
.end method

.method public final getMDefaultInterpolator()Landroid/view/animation/Interpolator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final getMLastAmount()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    return p0
.end method

.method public final getMSpringOverScroller()Lcom/android/launcher/OplusSpringOverScroller;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    return-object p0
.end method

.method public final getMTempAmount()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mTempAmount:I

    return p0
.end method

.method public final getMUnboundedScroll()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    return p0
.end method

.method public final getMaxScroll()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    return p0
.end method

.method public final getMinScroll()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    return p0
.end method

.method public final getOverScrollAmount()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->overScrollAmount:I

    return p0
.end method

.method public getOverScrollAmount(FI)I
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result p0

    return p0
.end method

.method public final getPageScrolls()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    return-object p0
.end method

.method public final getSpringOverScroller()Lcom/android/launcher/OplusSpringOverScroller;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    return-object p0
.end method

.method public final getWasInOverscroll()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    return p0
.end method

.method public interceptUpEventWhenDragged(IIFIZZZ)Z
    .registers 24

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v3, p3

    move/from16 v8, p5

    move/from16 v0, p6

    move/from16 v9, p7

    iget-boolean v1, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1c

    goto :goto_1a

    :cond_16
    cmpg-float v2, v3, v2

    if-gez v2, :cond_1c

    :goto_1a
    const/4 v11, 0x1

    goto :goto_1e

    :cond_1c
    const/4 v2, 0x0

    move v11, v2

    :goto_1e
    if-eqz v1, :cond_23

    if-lez v7, :cond_27

    goto :goto_25

    :cond_23
    if-gez v7, :cond_27

    :goto_25
    const/4 v12, 0x1

    goto :goto_29

    :cond_27
    const/4 v1, 0x0

    move v12, v1

    :goto_29
    iget-object v1, v6, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v2

    const-string v4, ", passedSlop="

    const-string v13, "OplusPagedViewImpl"

    if-eqz v2, :cond_aa

    const-string v2, "interceptUpEventWhenDragged(), velocity="

    const-string v5, ",secondaryVelocity="

    const-string v14, ", delta="

    move/from16 v15, p2

    invoke-static {v2, v7, v5, v15, v14}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", pageOrientedSize="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", isSignificantMove="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", isDeltaLeft="

    const-string v10, ", isVelocityLeft="

    invoke-static {v2, v8, v14, v11, v10}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v10, ", isFling="

    invoke-static {v2, v12, v4, v0, v10}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mFreeScroll="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v6, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mMaxScroll="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mMinScroll="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mCurrentPage="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", childCount="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", scroll="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ae

    :cond_aa
    move/from16 v15, p2

    move/from16 v5, p4

    :goto_ae
    iget-boolean v2, v6, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v2, :cond_2d2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->applyOverScroll()Z

    move-result v2

    if-eqz v2, :cond_1c5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->isInOverScroll()Z

    move-result v2

    if-eqz v2, :cond_1c5

    iget-boolean v2, v6, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    if-eqz v2, :cond_cc

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v10

    if-gt v2, v10, :cond_1c5

    :cond_cc
    const/4 v1, 0x1

    iput v1, v6, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    iget-object v1, v6, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/OplusSpringOverScroller;->setRefreshRate(F)V

    instance-of v1, v6, Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_e3

    iget v2, v6, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    goto :goto_f3

    :cond_e3
    iget v2, v6, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    if-lez v2, :cond_ef

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    iget v3, v6, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    sub-int/2addr v2, v3

    goto :goto_f3

    :cond_ef
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    :goto_f3
    if-eqz v0, :cond_162

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v5, 0xbb8

    if-lt v3, v5, :cond_162

    iget-object v0, v6, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    const/16 v3, -0x2710

    neg-int v4, v7

    const/16 v5, 0x2710

    if-le v4, v5, :cond_107

    move v4, v5

    :cond_107
    if-ge v3, v4, :cond_10a

    move v3, v4

    :cond_10a
    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/OplusSpringOverScroller;->setCurrVelocityX(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptUpEventWhenDragged(), velocityX="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", start="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz v1, :cond_146

    iget-object v0, v6, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget v3, v6, Lcom/android/launcher3/PagedView;->mMinScroll:I

    iget v4, v6, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    const/high16 v5, 0x41900000  # 18.0f

    const/high16 v7, 0x41c80000  # 25.0f

    move-object/from16 p1, v0

    move/from16 p2, v2

    move/from16 p3, v1

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v7

    invoke-virtual/range {p1 .. p7}, Lcom/android/launcher/OplusSpringOverScroller;->springBack(IIIIFF)Z

    goto/16 :goto_1c0

    :cond_146
    iget-object v0, v6, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move/from16 p2, v2

    move/from16 p3, v1

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v7

    invoke-virtual/range {p1 .. p7}, Lcom/android/launcher/OplusSpringOverScroller;->springBack(IIIIII)Z

    goto :goto_1c0

    :cond_162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptUpEventWhenDragged(), springBack="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", velocity="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v7, v13}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher/OplusSpringOverScroller;->setCurrVelocityX(F)V

    if-eqz v1, :cond_1a5

    iget-object v0, v6, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget v3, v6, Lcom/android/launcher3/PagedView;->mMinScroll:I

    iget v4, v6, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    const/high16 v5, 0x41900000  # 18.0f

    const/high16 v7, 0x41c80000  # 25.0f

    move-object/from16 p1, v0

    move/from16 p2, v2

    move/from16 p3, v1

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v7

    invoke-virtual/range {p1 .. p7}, Lcom/android/launcher/OplusSpringOverScroller;->springBack(IIIIFF)Z

    goto :goto_1c0

    :cond_1a5
    iget-object v0, v6, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move/from16 p2, v2

    move/from16 p3, v1

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v7

    invoke-virtual/range {p1 .. p7}, Lcom/android/launcher/OplusSpringOverScroller;->springBack(IIIIII)Z

    :goto_1c0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_2a0

    :cond_1c5
    if-eqz v1, :cond_27d

    iget-boolean v0, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_1d4

    if-lez v7, :cond_1d4

    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1d4

    goto/16 :goto_27d

    :cond_1d4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/OplusPagedViewImpl;->shouldReturnToOriginalPageWhenDragged(IIFIZ)Z

    move-result v0

    const-string v1, " finalPage:"

    const-string v2, " mCurrentPage:"

    const-string v3, " isVelocityLeft:"

    const-string v4, " isFling:"

    const-string v5, " isDeltaLeft:"

    if-eqz v8, :cond_1f4

    if-nez v11, :cond_1f4

    if-eqz v9, :cond_1f8

    :cond_1f4
    if-eqz v9, :cond_22a

    if-nez v12, :cond_22a

    :cond_1f8
    iget v10, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v10, :cond_22a

    if-eqz v0, :cond_1ff

    goto :goto_204

    :cond_1ff
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    sub-int/2addr v10, v0

    :goto_204
    const-string v0, "interceptUpEventWhenDragged: snapToPageWithVelocity1 isSignificantMove:"

    invoke-static {v0, v8, v5, v11, v4}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v9, v3, v12, v2}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget v2, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/h0;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v10, v7, v1}, Lcom/android/launcher/h0;-><init>(Lcom/android/launcher/OplusPagedViewImpl;III)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto/16 :goto_2a0

    :cond_22a
    if-eqz v8, :cond_230

    if-eqz v11, :cond_230

    if-eqz v9, :cond_234

    :cond_230
    if-eqz v9, :cond_26f

    if-eqz v12, :cond_26f

    :cond_234
    iget v10, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v10, v14, :cond_26f

    if-eqz v0, :cond_243

    iget v0, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_24a

    :cond_243
    iget v0, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v10

    add-int/2addr v0, v10

    :goto_24a
    const-string v10, "interceptUpEventWhenDragged: snapToPageWithVelocity2 isSignificantMove:"

    invoke-static {v10, v8, v5, v11, v4}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v9, v3, v12, v2}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget v2, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/h0;

    const/4 v2, 0x1

    invoke-direct {v1, v6, v0, v7, v2}, Lcom/android/launcher/h0;-><init>(Lcom/android/launcher/OplusPagedViewImpl;III)V

    invoke-virtual {v6, v1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto :goto_2a0

    :cond_26f
    const-string v0, "interceptUpEventWhenDragged: snapToDestination"

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/b;

    invoke-direct {v0, v6}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/OplusPagedViewImpl;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto :goto_2a0

    :cond_27d
    :goto_27d
    const-string v0, "interceptUpEventWhenDragged: primaryScroll="

    const-string v2, " mIsRtl:"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const-string v2, " velocity:"

    const-string v4, " delta:"

    invoke-static {v0, v1, v2, v7, v4}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/a;

    invoke-direct {v0, v6}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher/OplusPagedViewImpl;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    :goto_2a0
    instance-of v0, v6, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_40c

    iget-object v0, v6, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_2b7

    move-object v0, v6

    check-cast v0, Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    iput-object v0, v6, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    :cond_2b7
    iget-object v0, v6, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_2ca

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    if-eqz v0, :cond_2ca

    invoke-virtual {v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isGestureStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2ca

    const/4 v0, 0x1

    goto :goto_2cb

    :cond_2ca
    const/4 v0, 0x0

    :goto_2cb
    if-eqz v0, :cond_40c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->notifySfAnimatingIfNeed()V

    goto/16 :goto_40c

    :cond_2d2
    iget-object v0, v6, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2de

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_2de
    iget-object v0, v6, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget v2, v6, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    iget v3, v6, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v6, v12, v9}, Lcom/android/launcher/OplusPagedViewImpl;->needFlingWhenTouchUp(ZZ)Z

    move-result v4

    if-eqz v4, :cond_307

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptUpEventWhenDragged(), snapBack, scroll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher/OplusPagedViewImpl;->snapBackSpring(I)V

    goto/16 :goto_406

    :cond_307
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->allowFlingWhenFreeScroll()Z

    move-result v4

    if-eqz v4, :cond_406

    iget-object v4, v6, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    iget-object v5, v6, Lcom/android/launcher/OplusPagedViewImpl;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/OverScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x1

    iput v4, v6, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    iget-object v4, v6, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    neg-int v5, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getOverDistance()I

    move-result v8

    move-object/from16 p2, v4

    move/from16 p3, v0

    move/from16 p4, v5

    move/from16 p5, v3

    move/from16 p6, v2

    move/from16 p7, v8

    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher3/util/OverScroller;->flingSpringPrepare(IIIII)V

    iget-object v4, v6, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v4}, Lcom/android/launcher3/util/OverScroller;->getFinalX()I

    move-result v4

    invoke-virtual {v6, v4, v11}, Lcom/android/launcher3/PagedView;->getNextPageOfScreen(IZ)I

    move-result v5

    iput v5, v6, Lcom/android/launcher3/PagedView;->mNextPage:I

    iget v8, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v5, v8, :cond_343

    invoke-virtual {v6, v1}, Lcom/android/launcher3/PagedView;->getDestinationPage(I)I

    move-result v1

    if-ne v5, v1, :cond_363

    :cond_343
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v5, 0x384

    if-le v1, v5, :cond_363

    if-eqz v11, :cond_35a

    iget v1, v6, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v8

    sub-int/2addr v8, v5

    if-le v1, v8, :cond_361

    move v1, v8

    goto :goto_361

    :cond_35a
    const/4 v5, 0x1

    iget v1, v6, Lcom/android/launcher3/PagedView;->mNextPage:I

    sub-int/2addr v1, v5

    if-gez v1, :cond_361

    const/4 v1, 0x0

    :cond_361
    :goto_361
    iput v1, v6, Lcom/android/launcher3/PagedView;->mNextPage:I

    :cond_363
    iget-boolean v1, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v1, :cond_369

    const/4 v1, 0x0

    goto :goto_36d

    :cond_369
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->getLastPageIndex()I

    move-result v1

    :goto_36d
    invoke-virtual {v6, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    iget-boolean v5, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v5, :cond_37a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->getLastPageIndex()I

    move-result v5

    goto :goto_37b

    :cond_37a
    const/4 v5, 0x0

    :goto_37b
    invoke-virtual {v6, v5}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v5

    add-int/lit8 v8, v3, 0x1

    if-gt v8, v4, :cond_387

    if-ge v4, v2, :cond_387

    const/4 v8, 0x1

    goto :goto_388

    :cond_387
    const/4 v8, 0x0

    :goto_388
    if-eqz v8, :cond_3ca

    iget-object v8, v6, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    add-int v9, v1, v3

    div-int/lit8 v9, v9, 0x2

    if-ge v4, v9, :cond_394

    move v2, v3

    goto :goto_3a9

    :cond_394
    add-int v3, v5, v2

    div-int/lit8 v3, v3, 0x2

    if-le v4, v3, :cond_39b

    goto :goto_3a9

    :cond_39b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->needScrollToAnywhere()Z

    move-result v2

    if-eqz v2, :cond_3a3

    move v2, v4

    goto :goto_3a9

    :cond_3a3
    iget v2, v6, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v6, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    :goto_3a9
    invoke-virtual {v8, v2}, Lcom/android/launcher3/util/OverScroller;->setFinalX(I)V

    iget-object v2, v6, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    if-lez v2, :cond_3b9

    invoke-virtual {v6, v2}, Lcom/android/launcher/OplusPagedViewImpl;->extendDurationWhenUp(I)V

    :cond_3b9
    iget v2, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3ca

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->singleCardDuration()V

    :cond_3ca
    if-eqz v7, :cond_3d1

    iget-object v2, v6, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->flingSpring()V

    :cond_3d1
    const-string v2, "interceptUpEventWhenDragged(), fling, scroll="

    const-string v3, ", ["

    const-string v7, ", "

    invoke-static {v2, v0, v3, v1, v7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], finalX="

    const-string v2, ", cur="

    invoke-static {v0, v5, v1, v4, v2}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v1, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_406
    :goto_406
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/OplusPagedViewImpl;->notifySfAnimatingIfNeed()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_40c
    :goto_40c
    iget-object v0, v6, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, v6, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v6, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    const/4 v0, 0x1

    return v0
.end method

.method public isAssistScreenOn()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isFolderHandleEvent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mBigFolderIntercept:Z

    return p0
.end method

.method public isFolderOverScroll()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isInOverScroll()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    const-string v1, "isInOverScroll:scroll "

    const-string v2, " mIsRTL: "

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mMaxScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mMinScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mIsSpringMaxMinScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mIsSpringMaxMinScroll:Z

    const-string v3, "OplusPagedViewImpl"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_4b

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_42

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-nez p0, :cond_61

    goto :goto_62

    :cond_42
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getLastPageIndex()I

    move-result p0

    if-ne v0, p0, :cond_61

    goto :goto_62

    :cond_4b
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge v0, v1, :cond_61

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getLastPageIndex()I

    move-result p0

    if-ne v0, p0, :cond_61

    goto :goto_62

    :cond_5c
    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-nez p0, :cond_61

    goto :goto_62

    :cond_61
    move v2, v3

    :goto_62
    return v2
.end method

.method public maybeCurrentScrollWrong()V
    .registers 1

    return-void
.end method

.method public modifyDirection(I)I
    .registers 5

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne v1, v2, :cond_45

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le p1, v1, :cond_45

    sget-object p1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/16 v0, 0x780

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_45
    return p1
.end method

.method public needFlingWhenTouchUp(ZZ)Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-lt v0, v1, :cond_c

    if-nez p1, :cond_14

    if-eqz p2, :cond_14

    :cond_c
    iget p0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-gt v0, p0, :cond_16

    if-eqz p1, :cond_14

    if-nez p2, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public needScrollToAnywhere()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public notifySfAnimatingIfNeed()V
    .registers 1

    return-void
.end method

.method public onPageEndTransition()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    invoke-direct {p0, v0}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollXForSpring(Z)V

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v2, ", "

    const-string v3, "OplusPagedViewImpl"

    const/4 v4, 0x1

    if-eqz v0, :cond_128

    if-eq v0, v4, :cond_d4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_29

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_1b3

    :cond_29
    const-string/jumbo v0, "onTouchEvent(), APOINTER_UP, mIsBeingDragged="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-static {v0, v1, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_1b3

    :cond_3b
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->allowSnapWhenCancelEvent()Z

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const-string/jumbo v5, "onTouchEvent(), CANCEL, mIsBeingDragged="

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    const-string v7, ", allowSnapWhenCancelEvent="

    const-string v8, ", pageCount="

    invoke-static {v5, v6, v7, p1, v8}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", panelCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", primaryScroll="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pageWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v5, p0, Lcom/android/launcher3/Workspace;

    if-eqz v5, :cond_a8

    move-object v5, p0

    check-cast v5, Lcom/android/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v5

    if-le v6, v5, :cond_a4

    if-eqz v2, :cond_a4

    rem-int/2addr v0, v2

    :cond_a4
    if-eqz v0, :cond_a8

    move v0, v4

    goto :goto_a9

    :cond_a8
    move v0, v1

    :goto_a9
    const-string/jumbo v2, "onTouchEvent(), CANCEL, result="

    invoke-static {v2, v0, v3}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v2, :cond_b5

    if-eqz v0, :cond_cb

    :cond_b5
    if-eqz p1, :cond_bb

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto :goto_be

    :cond_bb
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :goto_be
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-interface {p1, v0, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryVelocity(Landroid/view/VelocityTracker;I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd(F)V

    :cond_cb
    iput v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    iput v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mTempAmount:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_1b3

    :cond_d4
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    const-string/jumbo v1, "onTouchEvent(), UP, ["

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], currentPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pageScroll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scroll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIsBeingDragged="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-static {v1, v0, v3}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_122
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_1b3

    :cond_128
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    const-string/jumbo v5, "onTouchEvent(), DOWN, ["

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], primaryScroll="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollX="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  mNextPage="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " childCount="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentPage="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_194

    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->abortAnimation()V

    :cond_194
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    if-ne v0, v4, :cond_1af

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v0, v2, :cond_1af

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-eq v0, v2, :cond_1af

    invoke-direct {p0, v1}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollXForSpring(Z)V

    :cond_1af
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_1b3
    return v4
.end method

.method public oplusScrollTo(II)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v1

    iput v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->isOverScrolled()Z

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le v0, v5, :cond_24

    goto :goto_22

    :cond_1e
    iget v5, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge v0, v5, :cond_24

    :goto_22
    move v5, v3

    goto :goto_25

    :cond_24
    move v5, v4

    :goto_25
    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge v0, v2, :cond_32

    goto :goto_30

    :cond_2c
    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le v0, v2, :cond_32

    :goto_30
    move v2, v3

    goto :goto_33

    :cond_32
    move v2, v4

    :goto_33
    if-eqz v5, :cond_6a

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canUpdateCurrentScroll()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_42

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    goto :goto_44

    :cond_42
    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    :goto_44
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/PagedView;->notifyCurrentScrollChange(IZ)V

    :cond_47
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_50

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    goto :goto_52

    :cond_50
    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    :goto_52
    invoke-interface {v2, p0, v1, v4}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;II)V

    iget-boolean v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->allowOplusOverScroll:Z

    if-eqz v1, :cond_113

    iput-boolean v3, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_62

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    goto :goto_64

    :cond_62
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    :goto_64
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->overScroll(III)V

    goto/16 :goto_113

    :cond_6a
    if-eqz v2, :cond_ef

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canUpdateCurrentScroll()Z

    move-result v2

    if-eqz v2, :cond_7e

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_79

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    goto :goto_7b

    :cond_79
    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    :goto_7b
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/PagedView;->notifyCurrentScrollChange(IZ)V

    :cond_7e
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_87

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    goto :goto_89

    :cond_87
    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    :goto_89
    invoke-interface {v2, p0, v1, v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollTo(Lcom/android/launcher3/PagedView;II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez v1, :cond_d8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-nez v1, :cond_d8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/quickstep/RecentsActivity;

    if-nez v1, :cond_d8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type android.content.ContextWrapper"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/quickstep/RecentsActivity;

    if-eqz v1, :cond_b9

    goto :goto_d8

    :cond_b9
    iget-object v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    if-eqz v1, :cond_c9

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-ne v1, v3, :cond_c9

    move v1, v3

    goto :goto_ca

    :cond_c9
    move v1, v4

    :goto_ca
    if-eqz v1, :cond_d8

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_d8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eq v1, v3, :cond_d9

    :cond_d8
    :goto_d8
    move v4, v3

    :cond_d9
    iget-boolean v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->allowOplusOverScroll:Z

    if-eqz v1, :cond_113

    if-eqz v4, :cond_113

    iput-boolean v3, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_e8

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    goto :goto_ea

    :cond_e8
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    :goto_ea
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->overScroll(III)V

    goto :goto_113

    :cond_ef
    iget-boolean v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    if-eqz v0, :cond_f8

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->overScroll(III)V

    iput-boolean v4, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    :cond_f8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canUpdateCurrentScroll()Z

    move-result v0

    if-eqz v0, :cond_103

    iget v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/PagedView;->notifyCurrentScrollChange(IZ)V

    :cond_103
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canScrollByTouch()Z

    move-result v0

    if-nez v0, :cond_110

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canUpdateCurrentScroll()Z

    move-result v0

    if-eqz v0, :cond_110

    return-void

    :cond_110
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->superScrollTo(II)V

    :cond_113
    :goto_113
    return-void
.end method

.method public oplusSnapBackSpring(IIZ)Z
    .registers 10

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iput v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    :cond_7
    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    return v1

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    const-string v2, "OplusPagedViewImpl"

    if-nez v0, :cond_26

    const-string/jumbo v0, "oplusSnapToPageSpring:!mScroller.isFinished"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_26
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v5, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-interface {v4, v0, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    const-string/jumbo v4, "oplusSnapBackSpring:whichPage:"

    const-string v5, " mNextPage:"

    invoke-static {v4, p1, v5}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v4, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " childCount:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  delta:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", getPrimaryScroll:"

    const-string v5, " mMaxScroll:"

    invoke-static {p1, p2, v4, v3, v5}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMinScroll:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " immediate:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    iget v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    invoke-virtual {p1, v2, p2, v0}, Lcom/android/launcher3/util/OverScroller;->startBackSpring(IIF)V

    if-eqz p3, :cond_89

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_89
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lez p0, :cond_90

    const/4 v1, 0x1

    :cond_90
    return v1
.end method

.method public oplusSnapToPage(IIIZ)Z
    .registers 13

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "oplusSnapToPage first layout currentPage="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusPagedViewImpl"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->awakenScrollBars(I)Z

    if-eqz p4, :cond_31

    move v7, v1

    goto :goto_38

    :cond_31
    if-nez p3, :cond_37

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    :cond_37
    move v7, p3

    :goto_38
    if-eqz v7, :cond_3d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    :cond_3d
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_48

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_48
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    iget v3, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    if-eqz p4, :cond_5d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_5d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lez p0, :cond_67

    const/4 v1, 0x1

    :cond_67
    return v1
.end method

.method public oplusSnapToPageSpring(IIIIZ)Z
    .registers 11

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iput v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    :cond_7
    const-string v2, "OplusPagedViewImpl"

    if-eqz v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "oplusSnapToPageSpring first layout, currentPage="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->awakenScrollBars(I)Z

    if-eqz p5, :cond_35

    move p3, v1

    goto :goto_3b

    :cond_35
    if-nez p3, :cond_3b

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    :cond_3b
    :goto_3b
    if-eqz p3, :cond_40

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    :cond_40
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_51

    const-string/jumbo v0, "oplusSnapToPageSpring:!mScroller.isFinished"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_51
    int-to-float p4, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x45fa0000  # 8000.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5d

    goto :goto_61

    :cond_5d
    invoke-static {v3, p4}, Ljava/lang/Math;->copySign(FF)F

    move-result p4

    :goto_61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v0, v3, :cond_70

    invoke-direct {p0, v1}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollXForSpring(Z)V

    goto :goto_83

    :cond_70
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_7c

    goto :goto_80

    :cond_7c
    invoke-direct {p0, v1}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollXForSpring(Z)V

    goto :goto_83

    :cond_80
    :goto_80
    invoke-direct {p0, v4}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollXForSpring(Z)V

    :goto_83
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_f8

    const-string/jumbo v0, "oplusSnapToPageSpring:whichPage:"

    const-string v3, ",mNextPage:"

    invoke-static {v0, p1, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,curPage:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",childCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",velocity:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " ,delta:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",duration:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",getPrimaryScroll:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mMaxScroll:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mMinScroll:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,immediate："

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f8
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    neg-float p4, p4

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/android/launcher3/util/OverScroller;->startScrollSpring(IIIF)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    if-eqz p5, :cond_10f

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_10f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lez p0, :cond_119

    move v1, v4

    :cond_119
    return v1
.end method

.method public overScroll(III)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->dampedOverScroll(I)V

    return-void
.end method

.method public pageUpdate()V
    .registers 1

    return-void
.end method

.method public scrollBy(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->delegateScrollBy(Lcom/android/launcher3/PagedView;III)V

    return-void
.end method

.method public scrollTo(FF)V
    .registers 3

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    return-void
.end method

.method public final setAllowOplusOverScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->allowOplusOverScroll:Z

    return-void
.end method

.method public setCurrentPage(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->setCurrentPage(II)V

    sget-object p1, Lcom/android/launcher/i0;->a:Lcom/android/launcher/i0;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setMBigFolderIntercept(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mBigFolderIntercept:Z

    return-void
.end method

.method public final setMDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final setMLastAmount(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLastAmount:I

    return-void
.end method

.method public final setMTempAmount(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mTempAmount:I

    return-void
.end method

.method public final setMUnboundedScroll(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    return-void
.end method

.method public final setOverScrollAmount(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->overScrollAmount:I

    return-void
.end method

.method public final setWasInOverscroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/OplusPagedViewImpl;->wasInOverscroll:Z

    return-void
.end method

.method public shouldReturnToOriginalPageWhenDragged(IIFIZ)Z
    .registers 6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    int-to-float p2, p4

    const/high16 p4, 0x3e800000  # 0.25f

    mul-float/2addr p2, p4

    cmpl-float p0, p0, p2

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-lez p0, :cond_23

    int-to-float p0, p1

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_1d

    move p0, p2

    goto :goto_1e

    :cond_1d
    move p0, p4

    :goto_1e
    if-nez p0, :cond_23

    if-eqz p5, :cond_23

    goto :goto_24

    :cond_23
    move p2, p4

    :goto_24
    return p2
.end method

.method public singleCardDuration()V
    .registers 1

    return-void
.end method

.method public snapBackSpring(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/OplusPagedViewImpl;->oplusSnapBackSpring(IIZ)Z

    return-void
.end method

.method public snapBacktoDestination(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    return-void
.end method

.method public snapToDestinationWithoutFreeScroll()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    return-void
.end method

.method public snapToPage(IIIZ)Z
    .registers 13

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mScrollMode:I

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/OplusPagedViewImpl;->oplusSnapToPage(IIIZ)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, ", res="

    const-string v3, ", immediate="

    const-string v4, ", duration="

    const-string v5, ", delta="

    const-string/jumbo v6, "snapToPage(), whichPage="

    const-string v7, "OplusPagedViewImpl"

    if-eqz v1, :cond_55

    const-string v1, ", mNextPage="

    invoke-static {v6, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-static {p1, v1, v5, p2, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p2, "mUnboundedScroll="

    invoke-static {p1, p3, v3, p4, p2}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    iget p2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mUnboundedScroll:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mPageScrolls="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "toString(this)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_55
    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-static {p1, p0, v5, p2, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {p1, p3, v3, p4, v2}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-static {p1, v0, v7}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_64
    return v0
.end method

.method public snapToPage(IIZ)Z
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    new-instance v0, Lcom/android/launcher/j0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher/j0;-><init>(Lcom/android/launcher/OplusPagedViewImpl;II)V

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->fixUpSnapToPageWithVelocityScrollDelta(Ljava/util/function/Supplier;I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPage(IIIZ)Z

    move-result p0

    return p0
.end method

.method public snapToPageWithVelocity(II)Z
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "snapToPageWithVelocity whichPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPagedViewImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v3

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    new-instance v0, Lcom/android/launcher/j0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v3, v1}, Lcom/android/launcher/j0;-><init>(Lcom/android/launcher/OplusPagedViewImpl;II)V

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher/OplusPagedViewImpl;->fixUpSnapToPageWithVelocityScrollDelta(Ljava/util/function/Supplier;I)I

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    if-ge v0, v2, :cond_44

    iget p1, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move-result p0

    return p0

    :cond_44
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float/2addr v0, v2

    mul-int/lit8 v5, p1, 0x2

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p1, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float/2addr v0, p1

    add-float/2addr v0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->calculateScrollDuration(FI)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez p1, :cond_a4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-nez p1, :cond_a4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quickstep/RecentsActivity;

    if-nez p1, :cond_a4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.content.ContextWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quickstep/RecentsActivity;

    if-eqz p1, :cond_96

    goto :goto_a4

    :cond_96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher/effect/EffectSetting;->isCurrentDefaultEffect(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    :cond_a4
    :goto_a4
    if-eqz v1, :cond_ae

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher/OplusPagedViewImpl;->oplusSnapToPageSpring(IIIIZ)Z

    move-result p0

    goto :goto_b2

    :cond_ae
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher3/PagedView;->snapToPage(III)Z

    move-result p0

    :goto_b2
    return p0
.end method

.method public final superUpdateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .registers 10

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v1}, Lcom/android/launcher/OplusSpringOverScroller;->getCOUIFinalX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v2}, Lcom/android/launcher/OplusSpringOverScroller;->getCOUICurrX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_33

    goto :goto_4f

    :cond_33
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/launcher/OplusPagedViewImpl;->mSpringOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v2}, Lcom/android/launcher/OplusSpringOverScroller;->isCOUIFinished()Z

    move-result v2

    if-nez v2, :cond_4d

    :cond_43
    iget v2, p0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    div-int/lit8 v3, v2, 0x3

    if-ge v0, v3, :cond_4f

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_4f

    :cond_4d
    move v0, v4

    goto :goto_50

    :cond_4f
    :goto_4f
    move v0, v5

    :goto_50
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->isAssistScreenOn()Z

    move-result v1

    if-ne v1, v4, :cond_74

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_74

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v3

    if-ne v2, v3, :cond_6a

    iget v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eqz v2, :cond_72

    :cond_6a
    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-nez v2, :cond_74

    iget v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-nez v2, :cond_74

    :cond_72
    move v2, v4

    goto :goto_75

    :cond_74
    move v2, v5

    :goto_75
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v2

    if-eqz v2, :cond_cc

    const-string/jumbo v2, "updateIsBeingDraggedOnTouchDown: mScroller.isFinished: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "finishedScrolling:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mScroller.isSpringing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "mIsScrollToAssitScreenInSpring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentPage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNextPage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const-string v6, "mAssistScreenSettingsOn "

    const-string v7, " mFreeScroll:"

    invoke-static {v2, v3, v6, v1, v7}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    const-string v3, "OplusPagedViewImpl"

    invoke-static {v2, v1, v3}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_cc
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    if-eqz v1, :cond_d3

    invoke-direct {p0, v5}, Lcom/android/launcher/OplusPagedViewImpl;->updateMinAndMaxScrollXForSpring(Z)V

    :cond_d3
    if-eqz v0, :cond_102

    iput-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_ed

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v0, :cond_ed

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_ed
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_fe

    goto :goto_ff

    :cond_fe
    move v4, v5

    :cond_ff
    :goto_ff
    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    goto :goto_104

    :cond_102
    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    :goto_104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez v0, :cond_152

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-nez v0, :cond_152

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/RecentsActivity;

    if-nez v0, :cond_152

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.content.ContextWrapper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/RecentsActivity;

    if-nez v0, :cond_152

    iget-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_140

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    iput-object v0, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    :cond_140
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/OplusPagedViewImpl;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusWorkspace;->setScrollFinished(Z)V

    :cond_152
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_181

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    :cond_181
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_18e

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    :cond_18e
    return-void
.end method

.method public updateMinAndMaxScrollX()V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->updateMinAndMaxScrollX()V

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ne v0, v2, :cond_f

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-eq v1, v2, :cond_72

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateMinAndMaxScrollX(), min: "

    const-string v4, " > "

    invoke-static {v3, v0, v4}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const-string v5, ", max: "

    invoke-static {v0, v3, v5, v1, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", childCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPageScrolls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; caller: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    return-void
.end method
