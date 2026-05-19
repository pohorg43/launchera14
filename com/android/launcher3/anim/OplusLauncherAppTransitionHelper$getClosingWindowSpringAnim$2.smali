.class public final Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;
.super Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->getClosingWindowSpringAnim([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;Lcom/android/systemui/shared/system/AppTransitionParam;)Lcom/android/launcher3/anim/AppTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $alreadyGetIcon:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.field public final synthetic $floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic $getIconImmediately:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $iconRadius:F

.field public final synthetic $iconRectF:Landroid/graphics/RectF;

.field public final synthetic $iconSize:F

.field public final synthetic $iconView:Landroid/view/View;

.field public final synthetic $interrupterProgress:F

.field public final synthetic $isCard:Z

.field public final synthetic $isFolderIcon:Z

.field public final synthetic $isHotSeatIcon:Z

.field public final synthetic $isHotseatIcon:Z

.field public final synthetic $isViewSupportAsync:Z

.field public final synthetic $rotation:I

.field public final synthetic $shouldGetIconImmediately:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $startProgress:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $startRect:Landroid/graphics/RectF;

.field public final synthetic $targetRect:Landroid/graphics/RectF;

.field public final synthetic $tracker:Lcom/android/common/util/TransitionJankTracker;

.field public final synthetic $workspaceStartScroll:I

.field public final synthetic this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;


# direct methods
.method public constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;FFLkotlin/jvm/internal/Ref$ObjectRef;ILandroid/graphics/Matrix;ZLkotlin/jvm/internal/Ref$FloatRef;FLcom/android/common/util/TransitionJankTracker;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;Landroid/view/View;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FZZFLjava/util/function/Supplier;ZIZLcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;ZLandroid/view/SurfaceView;)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Landroid/graphics/RectF;",
            "Lcom/android/quickstep/util/SurfaceTransactionApplier;",
            "FF",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Ljava/lang/Float;",
            ">;>;I",
            "Landroid/graphics/Matrix;",
            "Z",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "F",
            "Lcom/android/common/util/TransitionJankTracker;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lcom/android/launcher3/views/FloatingIconView;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "FZZF",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;ZIZ",
            "Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;",
            "Z",
            "Landroid/view/SurfaceView;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p6

    iput-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    move v2, p7

    iput v2, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$rotation:I

    move-object v3, p10

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$startProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    move v3, p11

    iput v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$interrupterProgress:F

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$tracker:Lcom/android/common/util/TransitionJankTracker;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconView:Landroid/view/View;

    move/from16 v3, p16

    iput-boolean v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isViewSupportAsync:Z

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$alreadyGetIcon:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$getIconImmediately:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    move-object/from16 v3, p20

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$targetRect:Landroid/graphics/RectF;

    move-object/from16 v3, p21

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    move-object/from16 v3, p22

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$startRect:Landroid/graphics/RectF;

    move/from16 v3, p23

    iput v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconSize:F

    move/from16 v3, p24

    iput-boolean v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isFolderIcon:Z

    move/from16 v3, p25

    iput-boolean v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isCard:Z

    move/from16 v3, p26

    iput v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRadius:F

    move-object/from16 v3, p27

    iput-object v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$shouldGetIconImmediately:Ljava/util/function/Supplier;

    move/from16 v3, p28

    iput-boolean v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isHotseatIcon:Z

    move/from16 v3, p29

    iput v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$workspaceStartScroll:I

    move/from16 v3, p30

    iput-boolean v3, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isHotSeatIcon:Z

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v3, "animHandler"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/util/Pair;

    move-object p10, p0

    move-object p11, p1

    move-object/from16 p12, p2

    move-object/from16 p13, p3

    move/from16 p14, p4

    move/from16 p15, p5

    move-object/from16 p16, v1

    move/from16 p17, p7

    move-object/from16 p18, p8

    move-object/from16 p19, p31

    move/from16 p20, p32

    move/from16 p21, p9

    move-object/from16 p22, p33

    invoke-direct/range {p10 .. p22}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;FFLandroid/util/Pair;ILandroid/graphics/Matrix;Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;ZZLandroid/view/SurfaceView;)V

    return-void
.end method

.method public static synthetic b()Ljava/lang/Boolean;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->onUpdate$lambda$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static final onUpdate$lambda$0()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public endIconSurface()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isHotseatIcon:Z

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isViewSupportAsync:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_44

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setRemoteInterrupt(Landroid/view/View;Z)V

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisible(Landroid/view/View;)V

    :cond_2c
    const-string v0, "OplusLauncherAppTransitionHelper"

    const-string v1, "endIconSurface, currentFloatingIconSurface set to null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->releaseIconSurface(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->setIconSurfaceHolder(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public getWorkspaceScrollX(F)I
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->isScrolling()Z

    move-result v0

    if-ne v0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    if-eqz v1, :cond_21

    return v2

    :cond_21
    sget-object v3, Lcom/oplus/quickstep/gesture/TransitionManager;->Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isHotseatIcon:Z

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    const-string/jumbo v0, "mLauncher.workspace"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$workspaceStartScroll:I

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v8

    move v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->calculateScrollOffset(ZZLcom/android/launcher3/Workspace;ILcom/android/launcher3/views/FloatingIconViewContainer;F)I

    move-result p0

    return p0
.end method

.method public isDisappearedWhenPagingTransition(FF)Z
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isViewSupportAsync:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isHotSeatIcon:Z

    if-eqz v0, :cond_a

    goto :goto_44

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->getWorkspaceScrollX(F)I

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
    if-lez v0, :cond_33

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$startRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    sub-float/2addr p0, p1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_33

    move p0, v2

    goto :goto_34

    :cond_33
    move p0, v1

    :goto_34
    if-nez p0, :cond_38

    if-eqz p2, :cond_3f

    :cond_38
    const-string p1, "OplusLauncherAppTransitionHelper"

    const-string v0, "isDisappearedWhenPagingTransition"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    if-nez p0, :cond_43

    if-eqz p2, :cond_44

    :cond_43
    move v1, v2

    :cond_44
    :goto_44
    return v1
.end method

.method public isWorkSpaceFling()Z
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/gesture/TransitionManager;->Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const-string/jumbo v1, "mLauncher.workspace"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->isWorkSpaceFling(Lcom/android/launcher3/Workspace;)Z

    move-result p0

    return p0
.end method

.method public onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;)V
    .registers 27

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "currentRectF"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentIconRectF"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$startProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$interrupterProgress:F

    cmpg-float v0, v0, v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_26

    move v0, v9

    goto :goto_27

    :cond_26
    move v0, v10

    :goto_27
    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v0, :cond_32

    move/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    goto :goto_34

    :cond_32
    move/from16 v0, p3

    :goto_34
    move v14, v0

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$tracker:Lcom/android/common/util/TransitionJankTracker;

    invoke-virtual {v0}, Lcom/android/common/util/TransitionJankTracker;->getAnimatorListener()Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    move-result-object v0

    invoke-virtual {v0, v7, v14}, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;->onUpdate(Landroid/graphics/RectF;F)V

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getNeedInterceptIconSurface()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_5c

    iget-object v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconView:Landroid/view/View;

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getNeedInterceptIconSurface()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setRemoteInterrupt(Landroid/view/View;Z)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_5d

    :cond_5c
    move-object v0, v11

    :goto_5d
    if-nez v0, :cond_6e

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconView:Landroid/view/View;

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getNeedInterceptIconSurface()Z

    move-result v4

    invoke-interface {v0, v1, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->setRemoteInterrupt(Landroid/view/View;Z)V

    :cond_6e
    iget-boolean v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isViewSupportAsync:Z

    if-eqz v0, :cond_7a

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$hasInterrupt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_85

    :cond_7a
    sget-object v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v0, v14}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->updateClosingWindowAnimProgress(F)V

    :cond_85
    const v0, 0x3f19999a  # 0.6f

    cmpl-float v12, v14, v0

    if-lez v12, :cond_9e

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$alreadyGetIcon:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$getIconImmediately:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$alreadyGetIcon:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_9e
    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0, v14, v10}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->updateWallPaperScrim(FZ)V

    iget-boolean v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isViewSupportAsync:Z

    if-eqz v0, :cond_e3

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_b9

    invoke-virtual {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v0

    if-eqz v0, :cond_b9

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v11

    :cond_b9
    if-nez v11, :cond_c4

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-eqz v0, :cond_c4

    sget-object v1, Lcom/android/launcher3/anim/o;->a:Lcom/android/launcher3/anim/o;

    invoke-virtual {v0, v2, v10, v1}, Lcom/android/launcher3/views/FloatingIconView;->forceLoadIfNeed(FZLjava/util/function/Supplier;)V

    :cond_c4
    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$getIconImmediately:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconView:Landroid/view/View;

    iget-object v4, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$targetRect:Landroid/graphics/RectF;

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v5, v14

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v9

    invoke-super/range {v0 .. v8}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->performAsyncWindowAnimation(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    return-void

    :cond_e3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;)V

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCrop()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getWindowOffset()F

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getRealCropProgress()F

    move-result v3

    int-to-float v4, v9

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget-object v3, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    iget v4, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$rotation:I

    const/16 v20, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v4

    invoke-interface/range {v15 .. v20}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    iget-object v3, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    iget v5, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$rotation:I

    invoke-interface {v3, v4, v2, v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;FI)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v3

    if-eqz v3, :cond_18e

    iget-object v3, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$startRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$startRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_18e

    iget-object v3, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    iget v4, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$rotation:I

    const/16 v20, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v4

    invoke-interface/range {v15 .. v20}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    iget v3, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$rotation:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;FI)V

    goto :goto_1a9

    :cond_18e
    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    iget v5, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$rotation:I

    const/16 v20, 0x0

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v5

    invoke-interface/range {v15 .. v20}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    iget v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$rotation:I

    invoke-interface {v3, v0, v2, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;FI)V

    :goto_1a9
    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconSize:F

    div-float/2addr v0, v1

    iget-object v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconSize:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ly4/h;->b(FF)F

    move-result v1

    iget-boolean v2, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isFolderIcon:Z

    if-nez v2, :cond_1e9

    iget-object v2, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v2}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMDeviceProfile$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v2, :cond_1e9

    iget-boolean v2, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$isCard:Z

    if-nez v2, :cond_1e9

    iget-object v2, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->this$0:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    invoke-static {v2}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->access$getMDeviceProfile$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/OplusDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    iget-object v3, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    :cond_1e9
    if-lez v12, :cond_1fd

    iget-object v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$alreadyGetIcon:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1fd

    iget-object v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$getIconImmediately:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$alreadyGetIcon:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1fd
    iget-object v1, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-eqz v1, :cond_226

    iget-object v12, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRectF:Landroid/graphics/RectF;

    const/4 v2, 0x2

    invoke-static {v6, v14, v10, v2, v11}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getIconAlpha$default(Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;FZILjava/lang/Object;)F

    move-result v13

    sget-object v2, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD()[Ljava/lang/Float;

    move-result-object v2

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v15

    iget v2, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$iconRadius:F

    mul-float v16, v2, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v0, v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;->$shouldGetIconImmediately:Ljava/util/function/Supplier;

    const/16 v20, 0x1

    move-object v11, v1

    move-object/from16 v19, v0

    invoke-virtual/range {v11 .. v20}, Lcom/android/launcher3/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;Z)V

    :cond_226
    return-void
.end method
