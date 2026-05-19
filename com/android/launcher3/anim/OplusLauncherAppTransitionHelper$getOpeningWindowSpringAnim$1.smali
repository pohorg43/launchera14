.class public final Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;
.super Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->getOpeningWindowSpringAnim(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZILcom/android/systemui/shared/system/AppTransitionParam;)Lcom/android/launcher3/anim/AppTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic $canViewInterrupt:Z

.field public final synthetic $floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic $hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $iconRadius:F

.field public final synthetic $iconRect:Landroid/graphics/RectF;

.field public final synthetic $iconSize:F

.field public final synthetic $iconView:Landroid/view/View;

.field public final synthetic $isMultiInterruptOpen:Z

.field public final synthetic $isViewSupportAsync:Z

.field public final synthetic $rotation:I

.field public final synthetic $styleBoundOffset:I

.field public final synthetic $targetRect:Landroid/graphics/RectF;

.field public final synthetic $totalDuration:J

.field public final synthetic $tracker:Lcom/android/common/util/TransitionJankTracker;

.field public final synthetic this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;


# direct methods
.method public constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;FLkotlin/jvm/internal/Ref$ObjectRef;ILandroid/graphics/Matrix;Lcom/android/common/util/TransitionJankTracker;ZZLcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicBoolean;ZJLandroid/graphics/RectF;Landroid/graphics/RectF;FILcom/android/launcher3/views/FloatingIconView;FFLcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;Z)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Landroid/graphics/RectF;",
            "Lcom/android/quickstep/util/SurfaceTransactionApplier;",
            "F",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Ljava/lang/Float;",
            ">;>;I",
            "Landroid/graphics/Matrix;",
            "Lcom/android/common/util/TransitionJankTracker;",
            "ZZ",
            "Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;",
            "Landroid/view/View;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "ZJ",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "FI",
            "Lcom/android/launcher3/views/FloatingIconView;",
            "FF",
            "Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    iput-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    move v2, p6

    iput v2, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$rotation:I

    move-object v3, p8

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$tracker:Lcom/android/common/util/TransitionJankTracker;

    move v3, p9

    iput-boolean v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$isMultiInterruptOpen:Z

    move v3, p10

    iput-boolean v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$canViewInterrupt:Z

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconView:Landroid/view/View;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v3, p14

    iput-boolean v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$isViewSupportAsync:Z

    move-wide/from16 v3, p15

    iput-wide v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$totalDuration:J

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$targetRect:Landroid/graphics/RectF;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconRect:Landroid/graphics/RectF;

    move/from16 v3, p19

    iput v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconSize:F

    move/from16 v3, p20

    iput v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$styleBoundOffset:I

    move-object/from16 v3, p21

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    move/from16 v3, p22

    iput v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconRadius:F

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v3, "animHandler"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/util/Pair;

    move-object p8, p0

    move-object p9, p1

    move-object p10, p2

    move-object/from16 p11, p3

    move/from16 p12, p4

    move/from16 p13, p23

    move-object/from16 p14, v1

    move/from16 p15, p6

    move-object/from16 p16, p24

    move-object/from16 p17, p7

    move/from16 p18, p25

    invoke-direct/range {p8 .. p18}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;FFLandroid/util/Pair;ILcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;Landroid/graphics/Matrix;Z)V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;)V
    .registers 20

    move-object v0, p0

    move-object v2, p1

    move/from16 v5, p3

    const-string v1, "currentRectF"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "currentIconRectF"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "param"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$tracker:Lcom/android/common/util/TransitionJankTracker;

    invoke-virtual {v1}, Lcom/android/common/util/TransitionJankTracker;->getAnimatorListener()Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->onUpdate(Landroid/graphics/RectF;F)V

    iget-boolean v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$isMultiInterruptOpen:Z

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_34

    iget-boolean v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$canViewInterrupt:Z

    if-eqz v1, :cond_32

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getNeedInterceptIconSurface()Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_34

    :cond_32
    move v1, v4

    goto :goto_35

    :cond_34
    :goto_34
    move v1, v6

    :goto_35
    iget-boolean v8, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$canViewInterrupt:Z

    if-nez v8, :cond_3b

    :cond_39
    move v8, v4

    goto :goto_6b

    :cond_3b
    iget-object v8, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v8}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isAllAppsIcon(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_67

    iget-object v8, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v8}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getNeedInterceptIconSurface()Z

    move-result v8

    if-eqz v8, :cond_39

    move v8, v6

    goto :goto_6b

    :cond_67
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getNeedInterceptIconSurface()Z

    move-result v8

    :goto_6b
    iget-object v9, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v8, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v8}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isAllAppsIcon(Landroid/view/View;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_b5

    iget-object v8, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v8}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v8

    sget-object v10, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_98

    if-eqz v1, :cond_98

    move v4, v6

    :cond_98
    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_a7

    iget-object v8, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconView:Landroid/view/View;

    invoke-virtual {v1, v8, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setRemoteInterrupt(Landroid/view/View;Z)V

    sget-object v9, Lh4/z;->a:Lh4/z;

    :cond_a7
    if-nez v9, :cond_d1

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v1

    iget-object v8, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconView:Landroid/view/View;

    invoke-interface {v1, v8, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->setRemoteInterrupt(Landroid/view/View;Z)V

    goto :goto_d1

    :cond_b5
    iget-object v4, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v4}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v4

    if-eqz v4, :cond_c4

    iget-object v8, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconView:Landroid/view/View;

    invoke-virtual {v4, v8, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setRemoteInterrupt(Landroid/view/View;Z)V

    sget-object v9, Lh4/z;->a:Lh4/z;

    :cond_c4
    if-nez v9, :cond_d1

    iget-object v4, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v4}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v4

    iget-object v8, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconView:Landroid/view/View;

    invoke-interface {v4, v8, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->setRemoteInterrupt(Landroid/view/View;Z)V

    :cond_d1
    :goto_d1
    iget-boolean v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$isViewSupportAsync:Z

    if-eqz v1, :cond_e3

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_e3

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromFolder()Z

    move-result v1

    if-eqz v1, :cond_ee

    :cond_e3
    sget-object v1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->updateOpeningWindowAnimProgress(F)V

    :cond_ee
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getHasInterrupted()Z

    move-result v1

    if-eqz v1, :cond_fa

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromFolder()Z

    move-result v1

    if-eqz v1, :cond_105

    :cond_fa
    sget-object v1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->updateCurrentRectF(Landroid/graphics/RectF;)V

    :cond_105
    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v1

    iget-wide v8, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$totalDuration:J

    long-to-float v4, v8

    int-to-float v8, v6

    sub-float/2addr v8, v5

    mul-float/2addr v8, v4

    float-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setDuration(J)V

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->updateWallPaperScrim(FZ)V

    iget-boolean v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$isViewSupportAsync:Z

    if-eqz v1, :cond_13a

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconView:Landroid/view/View;

    iget-object v4, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$targetRect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v8

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-super/range {v0 .. v8}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->performAsyncWindowAnimation(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    return-void

    :cond_13a
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;)V

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v9, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconRect:Landroid/graphics/RectF;

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCrop()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v11

    iget v12, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$rotation:I

    const/4 v13, 0x1

    invoke-interface/range {v8 .. v13}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconSize:F

    div-float/2addr v1, v2

    iget-object v2, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconSize:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ly4/h;->b(FF)F

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconRect:Landroid/graphics/RectF;

    iget v4, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$styleBoundOffset:I

    neg-int v8, v4

    int-to-float v8, v8

    mul-float/2addr v8, v2

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v8, v4}, Landroid/graphics/RectF;->inset(FF)V

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v2, :cond_1a4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v8, "getAppContext()"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/common/util/PlatformLevelUtils;->isHighLevelAnimation(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a4

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowAlpha()F

    move-result v2

    sub-float v2, v4, v2

    const v7, 0x3f666666  # 0.9f

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1af

    goto :goto_1ae

    :cond_1a4
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowAlpha()F

    move-result v2

    sub-float v2, v4, v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1af

    :goto_1ae
    move v3, v4

    :cond_1af
    iget-object v2, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-eqz v2, :cond_1d4

    const/16 v4, 0xff

    iget-object v7, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconRect:Landroid/graphics/RectF;

    sget-object v8, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

    invoke-virtual {v8}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;->getICON_TO_WINDOW_THRESHOLD()[Ljava/lang/Float;

    move-result-object v8

    aget-object v6, v8, v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v0, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;->$iconRadius:F

    mul-float v8, v0, v1

    const/4 v9, 0x1

    move-object v0, v2

    move v1, v3

    move v2, v4

    move-object v3, v7

    move/from16 v4, p3

    move v5, v6

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/views/FloatingIconView;->update(FILandroid/graphics/RectF;FFFZ)V

    :cond_1d4
    return-void
.end method
