.class public Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/ISwipeUpHandlerExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quickstep/ISwipeUpHandlerExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/quickstep/ISwipeUpHandlerExt;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSwipeUpHandlerExtOplusImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeUpHandlerExtOplusImpl.kt\ncom/android/quickstep/SwipeUpHandlerExtOplusImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n1#2:270\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl$Companion;

.field private static final GO_HOME_REGION_BOTTOM_INSET_FRACTION:F = 0.2f

.field private static final GO_HOME_REGION_LEFT_INSET_FRACTION:F = 0.2f

.field private static final GO_HOME_REGION_RIGHT_INSET_FRACTION:F = 0.2f

.field private static final GO_HOME_REGION_TOP_INSET_FRACTION:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "SwipeUpHandlerExtOplusImpl"


# instance fields
.field private mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->Companion:Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final reflectGetZoomBoundsByTaskId(I)Landroid/graphics/Rect;
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getZoomBoundsByTaskId"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type android.graphics.Rect"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Rect;
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    return-object p0

    :catchall_3b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_47

    goto :goto_4e

    :cond_47
    const-string p1, "can not invoke method getZoomBoundsByTaskId: "

    const-string v0, "SwipeUpHandlerExtOplusImpl"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public applyIconRectOffset(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FI)V
    .registers 5

    const-string/jumbo p0, "orientationHandler"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "iconRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p0, p2, p3, p4}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;FI)V

    return-void
.end method

.method public createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/ISwipeUpHandlerExt;
    .registers 3

    instance-of v0, p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/ISwipeUpHandlerExt;

    move-result-object p0

    return-object p0
.end method

.method public enableInterruptAnimateToThumbnail(Lcom/android/quickstep/GestureState$GestureEndTarget;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;->enableInterruptAnimateToThumbnail(Lcom/android/quickstep/ISwipeUpHandlerExt;Lcom/android/quickstep/GestureState$GestureEndTarget;)Z

    move-result p0

    return p0
.end method

.method public getAngleInCreateAnimateMiniWindow()F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/high16 p0, 0x42b40000  # 90.0f

    goto :goto_23

    :cond_21
    const/high16 p0, 0x43870000  # 270.0f

    :goto_23
    return p0
.end method

.method public getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "windRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "startRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "iconRect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/android/common/config/AnimationConstant;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object p0

    const-string p1, "getAnimOrientationHandler(windRect, iconRect)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCropHeightInCreateAnimateMiniWindow()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f070ace

    goto :goto_d

    :cond_a
    const v0, 0x7f070ad3

    :goto_d
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getCropWidthInCreateAnimateMiniWindow()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f070acd

    goto :goto_d

    :cond_a
    const v0, 0x7f070ad4

    :goto_d
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getGoHomeRegion(II)Landroid/graphics/RectF;
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isLandscape()Z

    move-result p0

    const/4 v0, 0x0

    const v1, 0x3e4ccccd  # 0.2f

    const v2, 0x3f4ccccd  # 0.8f

    if-eqz p0, :cond_19

    new-instance p0, Landroid/graphics/RectF;

    int-to-float p1, p1

    mul-float/2addr v1, p1

    int-to-float p2, p2

    mul-float/2addr v0, p2

    mul-float/2addr p1, v2

    mul-float/2addr p2, v2

    invoke-direct {p0, v1, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_24

    :cond_19
    new-instance p0, Landroid/graphics/RectF;

    int-to-float p2, p2

    mul-float/2addr v1, p2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr p2, v2

    mul-float/2addr p1, v2

    invoke-direct {p0, v1, v0, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_24
    return-object p0
.end method

.method public final getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-object p0
.end method

.method public getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .registers 3

    const-string/jumbo v0, "startRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    const-string p1, "mHost!!.mRemoteTargetHan…nState.orientationHandler"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getRightOffsetInCreateAnimateMiniWindow()F
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v0, "mHost!!.mActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSystemDensityDpi()I

    move-result v0

    const v1, 0x7f070ad6

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getDimensionPx(Landroid/content/Context;II)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getTopOffsetInCreateAnimateMiniWindow()F
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v0, "mHost!!.mActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSystemDensityDpi()I

    move-result v0

    const v1, 0x7f070ad7

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getDimensionPx(Landroid/content/Context;II)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getZoomWindowRectByZoomWindowManager(I)Landroid/graphics/RectF;
    .registers 7

    const-string v0, "SwipeUpHandlerExtOplusImpl"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0, p1}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->reflectGetZoomBoundsByTaskId(I)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_f

    :cond_e
    move-object p1, v1

    :goto_f
    if-nez p1, :cond_1e

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getZoomBounds(ZI)Landroid/graphics/Rect;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_6c

    :cond_1e
    const-string v2, "getZoomWindowRectByZoomWindowManager fail; "

    if-eqz p1, :cond_58

    :try_start_22
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_58

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_2f

    goto :goto_58

    :cond_2f
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gtz v3, :cond_71

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getTopOffsetInCreateAnimateMiniWindow()F

    move-result v3

    float-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_71

    :cond_58
    :goto_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_22 .. :try_end_6a} :catchall_6c

    move-object p1, v1

    goto :goto_71

    :catchall_6c
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :cond_71
    :goto_71
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_79

    move-object v1, p1

    goto :goto_7e

    :cond_79
    const-string p1, "getZoomWindowRectByZoomWindowManager fail"

    invoke-static {v0, p1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7e
    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_88

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto :goto_a0

    :cond_88
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getCropWidthInCreateAnimateMiniWindow()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getCropHeightInCreateAnimateMiniWindow()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getTopOffsetInCreateAnimateMiniWindow()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    move-object p0, p1

    :goto_a0
    return-object p0
.end method

.method public isLandscape()Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz p0, :cond_17

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    const/4 v0, 0x1

    if-nez p0, :cond_1c

    goto :goto_22

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_2e

    :goto_22
    const/4 v1, 0x3

    if-nez p0, :cond_26

    goto :goto_2d

    :cond_26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    :cond_2e
    :goto_2e
    return v0
.end method

.method public isTaskLandscape()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape()Z

    move-result p0

    return p0
.end method

.method public offsetZoomWindowRectBottom(Landroid/graphics/RectF;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;->offsetZoomWindowRectBottom(Lcom/android/quickstep/ISwipeUpHandlerExt;Landroid/graphics/RectF;)V

    return-void
.end method

.method public onAnimateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZLcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;->onAnimateToProgressInternal(Lcom/android/quickstep/ISwipeUpHandlerExt;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZLcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V

    return-void
.end method

.method public onUpdateAnimToCurrentTargetRect(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;->onUpdateAnimToCurrentTargetRect(Lcom/android/quickstep/ISwipeUpHandlerExt;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    return-void
.end method

.method public onUpdateReverseInheritAnimTargetRect(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;->onUpdateReverseInheritAnimTargetRect(Lcom/android/quickstep/ISwipeUpHandlerExt;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    return-void
.end method

.method public final setMHost(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void
.end method

.method public setTaskViewSimulatorScroll()V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;->setTaskViewSimulatorScroll(Lcom/android/quickstep/ISwipeUpHandlerExt;)V

    return-void
.end method

.method public updateIconRectCrop(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V
    .registers 13

    const-string/jumbo p0, "orientationHandler"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "windowCropRect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    return-void
.end method

.method public updateTargetBoundsInCreateAnimateMiniWindow(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[FFF)V
    .registers 10

    const-string/jumbo v0, "targetBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeWindowRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "angle"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object p7, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p7, p7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p3, v0

    const v1, 0x7f070ad5

    invoke-virtual {p7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p7

    add-float/2addr p7, p3

    iget-object p3, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p3, p3, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object p3, p3, v1

    invoke-virtual {p3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p4, p2

    invoke-virtual {p1, p4}, Landroid/graphics/RectF;->scale(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8b

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-le p2, p0, :cond_65

    move p3, p2

    goto :goto_66

    :cond_65
    move p3, p0

    :goto_66
    if-ge p2, p0, :cond_69

    goto :goto_6a

    :cond_69
    move p2, p0

    :goto_6a
    int-to-float p0, p3

    sub-float/2addr p0, p6

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v0

    sub-float/2addr p0, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float/2addr p0, p3

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    sub-float/2addr p2, p3

    sub-float/2addr p2, p7

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    add-float/2addr p3, p2

    invoke-virtual {p1, p0, p3}, Landroid/graphics/RectF;->offset(FF)V

    const/high16 p0, 0x42b40000  # 90.0f

    aput p0, p5, v1

    goto :goto_b8

    :cond_8b
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p0, v0

    add-float/2addr p0, p6

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p7, p2

    invoke-virtual {p1, p0, p7}, Landroid/graphics/RectF;->offset(FF)V

    const/high16 p0, 0x43870000  # 270.0f

    aput p0, p5, v1

    goto :goto_b8

    :cond_a3
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p3, p0

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->scale(F)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    sub-float/2addr p0, p2

    sub-float/2addr p0, p7

    invoke-virtual {p1, p0, p6}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_b8
    return-void
.end method

.method public updateTargetCropRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
    .registers 6

    const-string/jumbo v0, "targetCropRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeWindowRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    instance-of p0, p0, Lcom/android/quickstep/touch/OplusBaseLandscapePagedViewHandler;

    if-eqz p0, :cond_45

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, p4

    mul-float/2addr p2, p3

    sub-float/2addr p0, p2

    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p0, p3

    float-to-int p0, p0

    add-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_56

    :cond_45
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, p3

    mul-float/2addr p2, p4

    sub-float/2addr v0, p2

    float-to-int p2, v0

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_56
    return-void
.end method

.method public updateTmpSrc(Landroid/graphics/RectF;)V
    .registers 2

    const-string/jumbo p0, "tmpSrc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateZoomWindowRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/RectF;FFFF)V
    .registers 9

    const-string/jumbo p5, "targetCropRect"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "targetBounds"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "zoomWindowRect"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "closeWindowRect"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result p5

    if-eqz p5, :cond_71

    new-instance p5, Landroid/graphics/RectF;

    invoke-direct {p5, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    invoke-virtual {p5, p1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    invoke-virtual {p5, p1}, Landroid/graphics/RectF;->scale(F)V

    sget-object p1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/DisplayController;->getInfo(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    sub-float/2addr p0, p1

    sub-float/2addr p0, p8

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p2

    add-float/2addr p1, p7

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p0, p2

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {p5, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p5, p3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    goto :goto_78

    :cond_71
    iget p0, p3, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr p0, p6

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    :goto_78
    return-void
.end method
