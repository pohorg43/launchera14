.class public final Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;
.super Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic $hasEndIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $hasInterruptAndFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $hasInterruptAndReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $hotseatIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $iconDisappear:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $iconId:I

.field public final synthetic $iconLocation:Landroid/graphics/RectF;

.field public final synthetic $iconView:Landroid/view/View;

.field public final synthetic $isBigFolderIconInAsync:Z

.field public final synthetic $isCard:Z

.field public final synthetic $isDirChanged:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $isFolderIcon:Z

.field public final synthetic $isHotSeatIcon:Z

.field public final synthetic $isIconSupportAsync:Z

.field public final synthetic $isReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $isWidget:Z

.field public final synthetic $lastDir:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $lastScrollX:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $needReparent:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $runningTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $runningTaskView:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $screenWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $workspaceStartScrollX:I

.field public final synthetic $workspaceView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

.field private final tmpNewTargetRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/RectF;ZZZLandroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;IIZLkotlin/jvm/internal/Ref$IntRef;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroid/graphics/RectF;",
            "ZZZ",
            "Landroid/view/View;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;",
            "Lcom/android/launcher3/views/FloatingIconView;",
            "Landroid/view/View;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Z",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Z",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "IIZ",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hotseatIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconLocation:Landroid/graphics/RectF;

    move v2, p5

    iput-boolean v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isFolderIcon:Z

    move v2, p6

    iput-boolean v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isCard:Z

    move v2, p7

    iput-boolean v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isBigFolderIconInAsync:Z

    move-object v2, p8

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$runningTaskView:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$workspaceView:Landroid/view/View;

    move-object v2, p12

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hasInterruptAndFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconDisappear:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$runningTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move/from16 v2, p16

    iput-boolean v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isWidget:Z

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$lastScrollX:Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$lastDir:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isDirChanged:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$needReparent:Lkotlin/jvm/internal/Ref$BooleanRef;

    move/from16 v2, p21

    iput-boolean v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isIconSupportAsync:Z

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hasInterruptAndReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hasEndIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v2, p24

    iput v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconId:I

    move/from16 v2, p25

    iput v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$workspaceStartScrollX:I

    move/from16 v2, p26

    iput-boolean v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isHotSeatIcon:Z

    move-object/from16 v2, p27

    iput-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$screenWidth:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->tmpNewTargetRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->setAnimation$lambda$5(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/views/FloatingIconView;Landroidx/core/util/Consumer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->setAnimation$lambda$14$lambda$12(Lcom/android/launcher3/views/FloatingIconView;Landroidx/core/util/Consumer;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->setAnimation$lambda$14$lambda$11(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->setAnimation$lambda$4(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->setAnimation$lambda$3$lambda$0(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/graphics/Rect;Lcom/android/quickstep/util/RectFSpringAnim;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->setAnimation$lambda$14$lambda$10(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/graphics/Rect;Lcom/android/quickstep/util/RectFSpringAnim;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;Landroid/view/View;Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->setAnimation$lambda$3$lambda$2$lambda$1(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;Landroid/view/View;Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->setAnimation$lambda$14$lambda$13(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i()Ljava/lang/Boolean;
    .registers 1

    invoke-static {}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->updateAsync$lambda$15()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private final isDisappearedWhenPagingTransition(FF)Z
    .registers 7

    iget-boolean v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isIconSupportAsync:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isHotSeatIcon:Z

    if-eqz v0, :cond_a

    goto :goto_43

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->calculateScrollX(F)I

    move-result v0

    const/4 v2, 0x1

    if-gez v0, :cond_1e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p2, p1

    cmpl-float p2, v3, p2

    if-lez p2, :cond_1e

    move p2, v2

    goto :goto_1f

    :cond_1e
    move p2, v1

    :goto_1f
    if-lez v0, :cond_32

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$screenWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_32

    move p0, v2

    goto :goto_33

    :cond_32
    move p0, v1

    :goto_33
    if-nez p0, :cond_37

    if-eqz p2, :cond_3e

    :cond_37
    const-string p1, "OplusLauncherSwipeHandlerV2Impl"

    const-string v0, "isDisappearedWhenPagingTransition"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    if-nez p0, :cond_42

    if-eqz p2, :cond_43

    :cond_42
    move v1, v2

    :cond_43
    :goto_43
    return v1
.end method

.method private static final setAnimation$lambda$14$lambda$10(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/graphics/Rect;Lcom/android/quickstep/util/RectFSpringAnim;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 14

    const-string v0, "$iconDisappear"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$isReverse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    instance-of p1, p2, Lcom/android/launcher3/views/OplusFloatingIconView;

    const/4 v1, 0x0

    if-eqz p1, :cond_26

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/views/OplusFloatingIconView;

    goto :goto_27

    :cond_26
    move-object v2, v1

    :goto_27
    if-eqz v2, :cond_2c

    invoke-virtual {v2, p3}, Lcom/android/launcher3/views/OplusFloatingIconView;->hideOriginalIcon(Landroid/view/View;)V

    :cond_2c
    const-string p3, "OplusLauncherSwipeHandlerV2Impl"

    const-string v2, "Click for recent anim reverse"

    invoke-static {p3, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p4, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v2, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherRootView;->setForceHideBackArrow(Z)V

    sget-object v2, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->launchBoost()J

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    instance-of p5, p6, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz p5, :cond_54

    move-object v3, p6

    check-cast v3, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_55

    :cond_54
    move-object v3, v1

    :goto_55
    if-eqz v3, :cond_7c

    iget-object v4, p4, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v5, v4, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v5, :cond_60

    check-cast v4, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_61

    :cond_60
    move-object v4, v1

    :goto_61
    if-eqz v4, :cond_68

    invoke-virtual {v4}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getWindowAnimParam()Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    move-result-object v4

    goto :goto_69

    :cond_68
    move-object v4, v1

    :goto_69
    invoke-virtual {v3, v2, v4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseAnimationToFullscreen(Landroid/graphics/RectF;Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;)V

    iget-object v2, p4, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v4, v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v4, :cond_75

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_76

    :cond_75
    move-object v2, v1

    :goto_76
    if-nez v2, :cond_79

    goto :goto_7c

    :cond_79
    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setReverseToFullscreenAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    :cond_7c
    :goto_7c
    sget-object v2, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result v2

    if-eqz v2, :cond_aa

    if-eqz p5, :cond_89

    check-cast p6, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_8a

    :cond_89
    move-object p6, v1

    :goto_8a
    if-eqz p6, :cond_94

    invoke-virtual {p6}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse()Z

    move-result p5

    if-ne p5, p0, :cond_94

    move p5, p0

    goto :goto_95

    :cond_94
    move p5, v0

    :goto_95
    if-eqz p5, :cond_aa

    iget-object p5, p4, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string/jumbo p6, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/android/launcher/Launcher;

    invoke-virtual {p5}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p5

    const-string p6, "interrupt_anim"

    invoke-virtual {p5, p0, p6}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_aa
    if-eqz p1, :cond_af

    check-cast p2, Lcom/android/launcher3/views/OplusFloatingIconView;

    goto :goto_b0

    :cond_af
    move-object p2, v1

    :goto_b0
    if-eqz p2, :cond_b5

    invoke-virtual {p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetRecentReverseOpts()V

    :cond_b5
    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->reset()V

    invoke-virtual {p4}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetLauncherListeners()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result p1

    if-eqz p1, :cond_e0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarStashedInApp()Z

    move-result p1

    if-nez p1, :cond_d9

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarStashRunning()Z

    move-result p1

    if-nez p1, :cond_d9

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_e0

    invoke-virtual {p1, v1, v1, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->onRecentsAnimationCanceled(Ljava/util/HashMap;Lcom/android/quickstep/RecentsAnimationController;Z)V

    goto :goto_e0

    :cond_d9
    const-string p0, "Taskbar"

    const-string p1, "Taskbar is stashed,do not pass cancel event when interrupt"

    invoke-static {p0, p3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    :goto_e0
    iget-object p0, p4, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    if-eqz p7, :cond_f4

    iget-object p0, p7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_f4

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_f4

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_f5

    :cond_f4
    move-object p0, v1

    :goto_f5
    const-string p1, "com.oplus.camera"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_105

    iget-object p0, p4, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_10b

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationController;->disableInputConsumer()V

    goto :goto_10b

    :cond_105
    const-string/jumbo p1, "setAnimation: will not disable input consumer for : "

    invoke-static {p1, p0, p3}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    :goto_10b
    iget-object p0, p4, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz p1, :cond_114

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_115

    :cond_114
    move-object p0, v1

    :goto_115
    if-eqz p0, :cond_13b

    iget-object p1, p4, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_12a

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p1

    if-eqz p1, :cond_12a

    invoke-virtual {p1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->getMOriginalView()Landroid/view/View;

    move-result-object p1

    goto :goto_12b

    :cond_12a
    move-object p1, v1

    :goto_12b
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setOriginalBtv(Landroid/view/View;)V

    invoke-static {p4}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMLauncherContentAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    move-result-object p1

    if-eqz p1, :cond_138

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object v1

    :cond_138
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setLauncherContentAnimParam(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;)V

    :cond_13b
    iget-object p0, p4, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    sget-object p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->updateStartAppsTimeMillis()V

    return-void
.end method

.method private static final setAnimation$lambda$14$lambda$11(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/view/MotionEvent;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_24

    const-string p1, "OplusLauncherSwipeHandlerV2Impl"

    const-string v0, "Down touch for recent anim reverse"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz p1, :cond_1c

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    if-nez p0, :cond_20

    goto :goto_24

    :cond_20
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setMaybeReverseGestureAnimation(Z)V

    :cond_24
    :goto_24
    return-void
.end method

.method private static final setAnimation$lambda$14$lambda$12(Lcom/android/launcher3/views/FloatingIconView;Landroidx/core/util/Consumer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    const-string p2, "$downTouchOpts"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p0, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz p2, :cond_c

    check-cast p0, Lcom/android/launcher3/views/OplusFloatingIconView;

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    invoke-virtual {p0, p3}, Lcom/android/launcher3/views/OplusFloatingIconView;->isTouchVisibleRegion(Landroid/view/MotionEvent;)Z

    move-result p0

    if-ne p0, p2, :cond_18

    goto :goto_19

    :cond_18
    move p2, v0

    :goto_19
    if-eqz p2, :cond_1e

    invoke-interface {p1, p3}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1e
    return v0
.end method

.method private static final setAnimation$lambda$14$lambda$13(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 4

    const-string p1, "$clickOpts"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "QuickStep"

    const-string v0, "OplusLauncherSwipeHandlerV2Impl"

    const-string v1, "floating icon view clicked"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static final setAnimation$lambda$3$lambda$0(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->cancel()V

    :cond_f
    return-void
.end method

.method private static final setAnimation$lambda$3$lambda$2$lambda$1(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;Landroid/view/View;Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->updateTargetRectIfNeed(Lcom/android/launcher3/OplusBubbleTextView;Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-void
.end method

.method private static final setAnimation$lambda$4(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->getWindowTargetRect()Landroid/graphics/RectF;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAnimation onGlobalLayoutDone new targetRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusLauncherSwipeHandlerV2Impl"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_2d

    :cond_2c
    move-object v0, v1

    :goto_2d
    if-eqz v0, :cond_34

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p0, v2, v3, v1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->updateTargetRect$default(Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    :cond_34
    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lcom/android/quickstep/util/RectFSpringAnim;->onTargetPositionChanged()V

    :cond_39
    return-void
.end method

.method private static final setAnimation$lambda$5(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 3

    const-string v0, "$hasInterruptAndFinish"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/android/quickstep/util/RectFSpringAnim;->end()V

    :cond_e
    return-void
.end method

.method private static final updateAsync$lambda$15()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public applyTaskFullRect(Landroid/graphics/Matrix;)V
    .registers 4

    const-string/jumbo v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMRunningTaskFullscreenBounds$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMRunningTaskFullscreenBounds$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMRunningTaskFullscreenBounds$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method public calculateScrollX(F)I
    .registers 10

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v1, :cond_16

    iget-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    move-object v6, v0

    sget-object v1, Lcom/oplus/quickstep/gesture/TransitionManager;->Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hotseatIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    const-string v0, "mActivity.workspace"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$workspaceStartScrollX:I

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->calculateScrollOffset(ZZLcom/android/launcher3/Workspace;ILcom/android/launcher3/views/FloatingIconViewContainer;F)I

    move-result p0

    return p0
.end method

.method public canUseWorkspaceItemView()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method public createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-ge v1, v0, :cond_b

    move v1, v0

    :cond_b
    mul-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    int-to-long v1, v1

    const/16 v3, 0x21

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;JI)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    const-string v0, "mActivity.stateManager.c…CE)\n                    )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public endIconSurface()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hotseatIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isIconSupportAsync:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hasEndIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_3c

    :cond_1b
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hasEndIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setRemoteInterrupt(Landroid/view/View;Z)V

    :cond_2f
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisible(Landroid/view/View;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public getCardAnimRadius(Landroid/content/res/Resources;)I
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$workspaceView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/card/LauncherCardView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    goto :goto_1b

    :cond_1a
    move-object v1, v3

    :goto_1b
    if-eqz v1, :cond_25

    invoke-interface {v1, v0}, Lcom/oplus/card/manager/domain/ICardView;->getAppTransAnimRadius(Lcom/android/launcher3/BaseQuickstepLauncher;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_25
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_30

    :cond_2c
    invoke-super {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getCardAnimRadius(Landroid/content/res/Resources;)I

    move-result p0

    :goto_30
    return p0
.end method

.method public getIsDisappear()Z
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconDisappear:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->getOplusWindowTargetRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconLocation:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-boolean v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isFolderIcon:Z

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v1, v1, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    instance-of v2, v1, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v2, :cond_4d

    iget-boolean v2, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isCard:Z

    if-nez v2, :cond_4d

    iget-boolean v2, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isBigFolderIconInAsync:Z

    if-eqz v2, :cond_3f

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    instance-of v1, p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v1, :cond_31

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getBigFolderItemStyleBoundOffset()I

    move-result p0

    int-to-float p0, p0

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    invoke-virtual {v0, p0, p0}, Landroid/graphics/RectF;->inset(FF)V

    return-object v0

    :cond_3f
    const-string/jumbo p0, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/OplusDeviceProfile;

    iget p0, v1, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float p0, p0

    invoke-virtual {v0, p0, p0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_4d
    return-object v0
.end method

.method public interruptFromRecent()V
    .registers 3

    const-string v0, "OplusLauncherSwipeHandlerV2Impl"

    const-string v1, "interruptFromRecent"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hasInterruptAndReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public isCard()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isCard:Z

    return p0
.end method

.method public isFolder()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isFolderIcon:Z

    return p0
.end method

.method public isHotSeatIcon()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hotseatIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method public isIconClamp()Z
    .registers 2

    iget-boolean p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isCard:Z

    if-nez p0, :cond_12

    sget-boolean p0, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method public isReverseEnable()Z
    .registers 2

    iget v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->mAnimType:I

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$workspaceView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMReverseDisable$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMRunningTaskFullscreenBounds$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public isViewSupportAsync()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isIconSupportAsync:Z

    return p0
.end method

.method public isWidget()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isWidget:Z

    return p0
.end method

.method public isWorkSpaceFling()Z
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/gesture/TransitionManager;->Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const-string v1, "mActivity.workspace"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->isWorkSpaceFling(Lcom/android/launcher3/Workspace;)Z

    move-result p0

    return p0
.end method

.method public onCancel(I)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "swipeHandlerV2Impl onCancel called, callers: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherSwipeHandlerV2Impl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_2e
    iget-object p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p1, v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$setIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    :cond_33
    iget-object p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/android/launcher3/views/FloatingIconView;->fastFinish()V

    :cond_3a
    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    move-result-object p0

    if-eqz p0, :cond_45

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->end()V

    :cond_45
    return-void
.end method

.method public onEnd()V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    instance-of v1, v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetIconToVisible()V

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->isViewSupportAsync()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hasInterruptAndFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceManager(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getCurrentSurfaceId(Landroid/view/View;)I

    move-result v0

    iget v3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconId:I

    if-ne v0, v3, :cond_2f

    move v0, v1

    goto :goto_30

    :cond_2f
    move v0, v2

    :goto_30
    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisible(Landroid/view/View;)V

    :cond_3f
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->end()V

    :cond_4a
    const-string/jumbo v0, "swipeHandlerV2Impl onEnd called, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hasInterruptAndFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v3}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceManager(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7c

    iget-object v5, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    invoke-interface {v3, v5}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getCurrentSurfaceId(Landroid/view/View;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7d

    :cond_7c
    move-object v3, v4

    :goto_7d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OplusLauncherSwipeHandlerV2Impl"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_94

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_95

    :cond_94
    move-object v0, v4

    :goto_95
    if-eqz v0, :cond_a0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_a0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->setIsAppCloseAsyncAniRunning(Z)V

    :cond_a0
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hasInterruptAndFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceManager(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_bb

    iget-object v3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getCurrentSurfaceId(Landroid/view/View;)I

    move-result v0

    iget v3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconId:I

    if-ne v0, v3, :cond_bb

    goto :goto_bc

    :cond_bb
    move v1, v2

    :goto_bc
    if-eqz v1, :cond_d2

    :cond_be
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_cd

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    iget v3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconId:I

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->endWindowAnim(Landroid/view/View;ZZI)V

    :cond_cd
    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p0, v4}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$setIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    :cond_d2
    return-void
.end method

.method public playAtomicAnimation(F)V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusLauncherSwipeHandlerV2Impl"

    if-nez v0, :cond_17

    const-string/jumbo p0, "playAtomicAnimation: launcher has no workspace."

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_28

    const-string/jumbo p0, "playAtomicAnimation: launcher.workspace has no cellLayout."

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string p1, "mActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;->createWindowAnimationToTaskViewAnimation(Lcom/android/launcher3/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_45
    sget-object v0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->Companion:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$runningTaskView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;->isDockSearch(Lcom/android/quickstep/views/TaskView;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->setAnimType(I)V

    :cond_57
    invoke-virtual {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->isReverseEnable()Z

    move-result v0

    const-string/jumbo v1, "playAtomicAnimation, isReverseEnable = "

    invoke-static {v1, v0, v2}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_64

    return-void

    :cond_64
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    new-instance v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    iget-object v2, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v2, v2, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v2, Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->mAnimType:I

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;-><init>(Lcom/android/launcher3/Launcher;FZI)V

    invoke-static {v0, v1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$setWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    move-result-object p0

    if-eqz p0, :cond_82

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->start()V

    :cond_82
    return-void
.end method

.method public setAnimType(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->mAnimType:I

    return-void
.end method

.method public setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 16

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    instance-of v1, v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-eqz v0, :cond_57

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$workspaceView:Landroid/view/View;

    if-eqz p1, :cond_1a

    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1a
    new-instance v4, Lcom/android/launcher3/folder/t;

    invoke-direct {v4, v1}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/views/OplusFloatingIconView;->setCancelStaggeredAnimRunnable(Ljava/lang/Runnable;)V

    instance-of v0, p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz v0, :cond_2a

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_2b

    :cond_2a
    move-object v0, v2

    :goto_2b
    if-eqz v0, :cond_57

    instance-of v0, v3, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_57

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isMultiOpen()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getContentAnimFactory()Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    move-result-object v0

    if-eqz v0, :cond_57

    new-instance v1, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;Landroid/view/View;Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setOnContentChangeListener(Ljava/lang/Runnable;)V

    :cond_57
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-eqz v0, :cond_63

    new-instance v1, Lcom/android/quickstep/r;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/r;-><init>(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    :cond_63
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-eqz v0, :cond_71

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$hasInterruptAndFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Lcom/android/quickstep/s;

    invoke-direct {v3, v1, p1}, Lcom/android/quickstep/s;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/views/FloatingIconView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    :cond_71
    invoke-virtual {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->isReverseEnable()Z

    move-result v0

    const-string/jumbo v1, "setAnimation, isReverseEnable = "

    const-string v3, "OplusLauncherSwipeHandlerV2Impl"

    invoke-static {v1, v0, v3}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "mActivity"

    const/4 v3, 0x1

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$workspaceView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v4, v0, Lcom/android/launcher3/Launcher;

    if-eqz v4, :cond_99

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_9a

    :cond_99
    move-object v0, v2

    :goto_9a
    const/4 v4, 0x0

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-ne v0, v3, :cond_aa

    goto :goto_ab

    :cond_aa
    move v3, v4

    :goto_ab
    if-eqz v3, :cond_c7

    :cond_ad
    instance-of v0, p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz v0, :cond_b4

    move-object v2, p1

    check-cast v2, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    :cond_b4
    if-eqz v2, :cond_c7

    new-instance p1, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->setLauncherContentAnim(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;)V

    :cond_c7
    return-void

    :cond_c8
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMRunningTaskFullscreenBounds$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Landroid/graphics/Rect;

    move-result-object v10

    if-eqz v10, :cond_1a3

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v13, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    iget-object v5, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconDisappear:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v8, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    iget-object v12, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$runningTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e8

    invoke-virtual {v10}, Landroid/graphics/Rect;->isValid()Z

    move-result p0

    if-eqz p0, :cond_1a3

    :cond_e8
    iget-object p0, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v4, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v4, :cond_f1

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_f2

    :cond_f1
    move-object p0, v2

    :goto_f2
    if-nez p0, :cond_f5

    goto :goto_f8

    :cond_f5
    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setCanReverseGestureAnim(Z)V

    :goto_f8
    sget-object p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->Companion:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

    iget-object v3, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;->getLauncherContentAnim(Lcom/android/launcher3/Launcher;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$setMLauncherContentAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;)V

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMLauncherContentAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$fromRecentReverseState(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->setReverseSceneState(Z)V

    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v3, v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v3, :cond_11f

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_120

    :cond_11f
    move-object v1, v2

    :goto_120
    if-eqz v1, :cond_127

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getLauncherContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object v1

    goto :goto_128

    :cond_127
    move-object v1, v2

    :goto_128
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->copyFromLastParam(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;)V

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMLauncherContentAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v3, v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v3, :cond_13b

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_13c

    :cond_13b
    move-object v1, v2

    :goto_13c
    if-eqz v1, :cond_143

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getLauncherContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object v1

    goto :goto_144

    :cond_143
    move-object v1, v2

    :goto_144
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->copyFromLastParam(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;)V

    instance-of p0, p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz p0, :cond_14f

    move-object p0, p1

    check-cast p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_150

    :cond_14f
    move-object p0, v2

    :goto_150
    if-eqz p0, :cond_175

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMLauncherContentAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->setLauncherContentAnim(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;)V

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMLauncherContentAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getMLauncherContentAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->createAnimListenerForLayerType()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_175
    new-instance p0, Lcom/android/launcher3/ota/a;

    move-object v4, p0

    move-object v7, v13

    move-object v9, v0

    move-object v11, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/launcher3/ota/a;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/graphics/Rect;Lcom/android/quickstep/util/RectFSpringAnim;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    new-instance p1, Lcom/android/quickstep/v0;

    invoke-direct {p1, v0}, Lcom/android/quickstep/v0;-><init>(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)V

    if-eqz v13, :cond_18d

    new-instance v0, Ll0/a;

    invoke-direct {v0, v13, p1}, Ll0/a;-><init>(Lcom/android/launcher3/views/FloatingIconView;Landroidx/core/util/Consumer;)V

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_18d
    if-eqz v13, :cond_197

    new-instance v0, Lcom/android/launcher/folder/recommend/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_197
    instance-of v0, v13, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v0, :cond_19e

    move-object v2, v13

    check-cast v2, Lcom/android/launcher3/views/OplusFloatingIconView;

    :cond_19e
    if-eqz v2, :cond_1a3

    invoke-virtual {v2, p1, p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    :cond_1a3
    return-void
.end method

.method public setReverseDisable(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$setMReverseDisable$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Z)V

    return-void
.end method

.method public update(FFLandroid/graphics/RectF;FFLjava/util/function/Supplier;Ljava/util/function/Supplier;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Landroid/graphics/RectF;",
            "FF",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    const-string v2, "currentRect"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "canStartForegroundAnim"

    move-object/from16 v7, p6

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "shouldGetIconImmediately"

    move-object/from16 v8, p7

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isFolderIcon:Z

    if-nez v2, :cond_36

    iget-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v2, v2, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    instance-of v3, v2, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v3, :cond_36

    iget-boolean v3, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isCard:Z

    if-nez v3, :cond_36

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/OplusDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float v2, v2

    neg-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {p3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    :cond_36
    iget-object v0, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-eqz v0, :cond_5b

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_41

    const/high16 v2, 0x3f800000  # 1.0f

    :cond_41
    sget-object v3, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {v3}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD()[Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v6, 0x0

    move-object v1, p3

    move v3, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;Z)V

    :cond_5b
    return-void
.end method

.method public updateAsync(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLjava/util/function/Supplier;Ljava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransaction;)V
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "FFFFF",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lcom/android/quickstep/util/SurfaceTransaction;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p11

    const-string v1, "currentRect"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "iconRectF"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "canStartForegroundAnim"

    move-object/from16 v2, p8

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "shouldGetIconImmediately"

    move-object/from16 v2, p9

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "transaction"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v1

    const/16 v17, 0x0

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_3e

    :cond_3c
    move-object/from16 v1, v17

    :goto_3e
    const/high16 v13, 0x3f800000  # 1.0f

    const/4 v12, 0x0

    if-nez v1, :cond_4c

    iget-object v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-eqz v1, :cond_4c

    sget-object v2, Lcom/android/quickstep/w0;->b:Lcom/android/quickstep/w0;

    invoke-virtual {v1, v13, v12, v2}, Lcom/android/launcher3/views/FloatingIconView;->forceLoadIfNeed(FZLjava/util/function/Supplier;)V

    :cond_4c
    iget-object v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_5a

    iget-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    invoke-virtual {v1, v2, v12}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setRemoteInterrupt(Landroid/view/View;Z)V

    goto :goto_67

    :cond_5a
    iget-object v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceManager(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    invoke-interface {v1, v2, v12}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->setRemoteInterrupt(Landroid/view/View;Z)V

    :cond_67
    :goto_67
    iget-object v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {v1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_1cc

    invoke-virtual {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_1cc

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v11

    if-eqz v11, :cond_1cc

    iget-object v10, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconDisappear:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isReverse:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v9, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-boolean v8, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isWidget:Z

    iget-object v7, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$lastScrollX:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v6, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$lastDir:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$isDirChanged:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$needReparent:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->$iconView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v2

    invoke-virtual {v11}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v12

    const/4 v13, -0x1

    if-eq v2, v13, :cond_1c5

    if-ne v12, v13, :cond_9c

    goto/16 :goto_1c5

    :cond_9c
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    const/4 v15, 0x0

    if-eqz v13, :cond_ad

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_ad

    move/from16 v1, p5

    move v13, v15

    goto :goto_b1

    :cond_ad
    move/from16 v13, p3

    move/from16 v1, p5

    :goto_b1
    invoke-virtual {v0, v1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->calculateScrollX(F)I

    move-result v16

    invoke-static {v9}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v18

    if-eqz v18, :cond_c6

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v18

    if-eqz v18, :cond_c6

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSupportIconExtended()Z

    move-result v18

    goto :goto_c8

    :cond_c6
    const/16 v18, 0x0

    :goto_c8
    invoke-static {v9}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v19

    if-eqz v19, :cond_d9

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v19

    if-eqz v19, :cond_d9

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getCropOffset()I

    move-result v19

    goto :goto_db

    :cond_d9
    const/16 v19, 0x0

    :goto_db
    invoke-static {v9}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v20

    if-eqz v20, :cond_ec

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v20

    if-eqz v20, :cond_ec

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getNeedAdjustCornerRadius()Z

    move-result v20

    goto :goto_ee

    :cond_ec
    const/16 v20, 0x0

    :goto_ee
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->isIconClamp()Z

    move-result v21

    move-object v1, v9

    move/from16 v22, v2

    move/from16 v2, p4

    move-object/from16 v23, v3

    move-object/from16 v3, p2

    move-object/from16 v24, v4

    move/from16 v4, v22

    move-object/from16 v25, v5

    move v5, v12

    move-object v12, v6

    move v6, v13

    move-object v13, v7

    move/from16 v7, p5

    move/from16 v22, v8

    move/from16 v8, v16

    move-object/from16 v26, v9

    move/from16 v9, p6

    move-object/from16 v27, v10

    move/from16 v10, p7

    move-object/from16 v28, v11

    move/from16 v11, v18

    move-object/from16 v29, v12

    move/from16 v12, v19

    move-object/from16 v30, v13

    move/from16 v13, v20

    move/from16 v14, p10

    move v0, v15

    move/from16 v15, v21

    move/from16 v16, v22

    invoke-static/range {v1 .. v16}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconTransitionParam(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;FLandroid/graphics/RectF;IIFFIFFZIZZZZ)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    move-result-object v1

    move v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->calculateScrollX(F)I

    move-result v2

    move-object/from16 v3, v30

    iget v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v4, v2

    move-object/from16 v5, v29

    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    invoke-static {v4, v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt;->getScrollDirection(ILcom/android/launcher3/anim/floatingdrawable/ScrollDirection;)Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    move-result-object v4

    move-object/from16 v6, v25

    iget-boolean v7, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v7, :cond_150

    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    invoke-static {v7, v4}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt;->isDifferentDirection(Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;)Z

    move-result v7

    iput-boolean v7, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_150
    iget-boolean v6, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v12, 0x1

    if-eqz v6, :cond_15d

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->isWorkSpaceFling()Z

    move-result v6

    if-eqz v6, :cond_15d

    move v6, v12

    goto :goto_15e

    :cond_15d
    const/4 v6, 0x0

    :goto_15e
    if-nez v6, :cond_173

    move-object/from16 v6, p2

    iget v7, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-direct {v0, v7, v6}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->isDisappearedWhenPagingTransition(FF)Z

    move-result v0

    if-eqz v0, :cond_16f

    goto :goto_173

    :cond_16f
    move-object/from16 v0, v27

    const/4 v12, 0x0

    goto :goto_175

    :cond_173
    :goto_173
    move-object/from16 v0, v27

    :goto_175
    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v6, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_DEFAULT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    if-ne v0, v6, :cond_180

    iput-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_180
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v4, :cond_1b1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_1b1

    move-object/from16 v4, v26

    iget-object v5, v4, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v5}, Lcom/android/launcher/Launcher;->getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v5

    if-eqz v5, :cond_1a0

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getFloatingIconSurfaceContainerView()Landroid/view/SurfaceView;

    move-result-object v17

    :cond_1a0
    move-object/from16 v5, v17

    invoke-static {v4}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceManager(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v6

    move-object/from16 v7, v23

    if-eqz v6, :cond_1ad

    invoke-interface {v6, v7, v5}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->reparentIconSurface(Landroid/view/View;Landroid/view/SurfaceView;)V

    :cond_1ad
    const/4 v5, 0x0

    iput-boolean v5, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_1b5

    :cond_1b1
    move-object/from16 v7, v23

    move-object/from16 v4, v26

    :goto_1b5
    iput v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getIconSurfaceManager(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_1cc

    move-object/from16 v2, p11

    move-object/from16 v3, v28

    invoke-interface {v0, v7, v3, v2, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->trySetIconSurfaceProp(Landroid/view/View;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransaction;Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;)V

    goto :goto_1cc

    :cond_1c5
    :goto_1c5
    const-string v0, "OplusLauncherSwipeHandlerV2Impl"

    const-string v1, "iconSurface width or height is null, sth is wrong, return"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1cc
    :goto_1cc
    return-void
.end method

.method public final updateTargetRectIfNeed(Lcom/android/launcher3/OplusBubbleTextView;Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->tmpNewTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->tmpNewTargetRectF:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/views/OplusFloatingIconView;->mapIconBoundsToDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusBubbleTextView;Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->tmpNewTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    return-void

    :cond_21
    iget-object p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object p1, p1, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/OplusDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->tmpNewTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    instance-of p1, p2, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz p1, :cond_3c

    check-cast p2, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_3d

    :cond_3c
    const/4 p2, 0x0

    :goto_3d
    if-eqz p2, :cond_45

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->tmpNewTargetRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->updateTargetRect(Landroid/graphics/RectF;Z)V

    :cond_45
    return-void
.end method
