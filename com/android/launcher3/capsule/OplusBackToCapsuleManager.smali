.class public final Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusBackToCapsuleManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusBackToCapsuleManager.kt\ncom/android/launcher3/capsule/OplusBackToCapsuleManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,599:1\n1#2:600\n94#3,14:601\n*S KotlinDebug\n*F\n+ 1 OplusBackToCapsuleManager.kt\ncom/android/launcher3/capsule/OplusBackToCapsuleManager\n*L\n570#1:601,14\n*E\n"
    }
.end annotation


# static fields
.field private static final ANIMATOR_STATE_END:I = 0x0

.field private static final ANIMATOR_STATE_INTERRUPTED_END:I = -0x1

.field private static final ANIMATOR_STATE_START:I = 0x1

.field private static final CAPSULE_SUPPORT:Z = true

.field private static final CARD_STATE:Ljava/lang/String; = "cardState"

.field private static final CARD_STATE_DISPLAY:I = 0x1

.field public static final CLOSE_WINDOW_START_CAPSULE:F = 0.1f

.field public static final CLOSE_WINDOW_START_CLIP:F = 0.0f

.field public static final CLOSE_WINDOW_STOP_CLIP:F = 1.0f

.field private static final DURATION_CLOSING:J = 0x1f4L

.field private static final DURATION_HIDE_CAPSULE_SURFACE:J = 0x64L

.field public static final INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

.field private static final INTERPOLATOR_APP_CLOSING_OSPRING:Lcom/android/launcher3/anim/OSpringInterpolator;

.field private static final KEY_CAPSULE_POS:Ljava/lang/String; = "rect"

.field private static final KEY_ONLY_UPDATE_SURFACE:Ljava/lang/String; = "onlyupdatesurface"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final KEY_SURFACE_CONTROL:Ljava/lang/String; = "sfc"

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.007f

.field public static final MIN_VISIBLE_CHANGE_X:F = 0.3f

.field public static final MIN_VISIBLE_CHANGE_Y:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "OplusBackToCapsuleManager"

.field public static mIsRunningCapsuleAnim:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final sCapsulePkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCapsuleSurfaceControl:Landroid/view/SurfaceControl;

.field private static sCardState:Z

.field private static final sTargetCapsulePos:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    invoke-direct {v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    new-instance v0, Lcom/android/launcher3/anim/OSpringInterpolator;

    const-wide v2, 0x4060400000000000L  # 130.0

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/anim/OSpringInterpolator;-><init>(DDDF)V

    sput-object v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INTERPOLATOR_APP_CLOSING_OSPRING:Lcom/android/launcher3/anim/OSpringInterpolator;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sTargetCapsulePos:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCapsulePkgs:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->startHideCapsuleSurfaceAnim$lambda$9(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$hideSurface(Landroid/view/SurfaceControl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->hideSurface(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static final synthetic access$notifyInterruptedEnd(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->notifyInterruptedEnd()V

    return-void
.end method

.method public static synthetic b(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$FloatRef;FFLandroid/graphics/Rect;FLandroid/graphics/RectF;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Matrix;ILandroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 24

    invoke-static/range {p0 .. p23}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->getClosingWindowAnimators$lambda$7(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$FloatRef;FFLandroid/graphics/Rect;FLandroid/graphics/RectF;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Matrix;ILandroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method private final findClosingRemoteAnimationTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 6

    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_f

    aget-object v1, p1, v0

    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    return-object v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getBackToCapsuleParamIfSupport(Ljava/lang/String;ILandroid/content/Context;)Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCapsuleSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->isSupportCapsule(Ljava/lang/String;ILandroid/content/Context;Landroid/view/SurfaceControl;)Z

    move-result p0

    if-eqz p0, :cond_21

    new-instance p0, Landroid/graphics/RectF;

    sget-object p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sTargetCapsulePos:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_21

    new-instance p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;-><init>(Landroid/graphics/RectF;Landroid/view/SurfaceControl;)V

    return-object p1

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getClosingSourceWinBounds(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/Launcher;)Landroid/graphics/RectF;
    .registers 5

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p1, :cond_2c

    iget-object p0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_1f

    invoke-virtual {p2, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_2c

    :cond_1f
    iget-object p0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    if-eqz p0, :cond_2c

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_2c
    :goto_2c
    return-object p2
.end method

.method public static final getClosingWindowAnimators(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/Launcher;)Landroid/animation/Animator;
    .registers 32
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    const-string v1, "backToCapsuleParam"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "targets"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->getCapsulePos()Landroid/graphics/RectF;

    move-result-object v13

    sget-object v3, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    invoke-direct {v3, v15}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->findClosingRemoteAnimationTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->getClosingSourceWinBounds(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/Launcher;)Landroid/graphics/RectF;

    move-result-object v6

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_47

    iget v5, v3, Landroid/graphics/RectF;->right:F

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    iput v7, v3, Landroid/graphics/RectF;->right:F

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    :cond_47
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    const-string v7, "OplusBackToCapsuleManager"

    if-eqz v5, :cond_7b

    const-string v5, "getClosingWindowAnimators: startBounds = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", targetBounds = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", capsuleSurfaceCtl: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->getCapsuleSurfaceCtl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v5

    if-eqz v5, :cond_c9

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/LauncherState;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_a5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getClosingWindowAnimators, state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a5
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v9

    if-nez v9, :cond_b2

    invoke-virtual {v5, v8}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setState(Lcom/android/launcher3/LauncherState;)V

    :cond_b2
    iget-boolean v8, v8, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v8, :cond_c9

    const-string/jumbo v8, "the state isn\'t NORMAL, so we must change state to NORMAL"

    invoke-static {v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    invoke-virtual {v5, v9}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setState(Lcom/android/launcher3/LauncherState;)V

    :cond_c9
    new-instance v14, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;

    const/4 v5, 0x0

    invoke-direct {v14, v5, v3, v13}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v14}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v5, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INTERPOLATOR_APP_CLOSING_OSPRING:Lcom/android/launcher3/anim/OSpringInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->getCapsuleSurfaceCtl()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->showSurface(Landroid/view/SurfaceControl;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v10}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v17

    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    new-instance v18, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct/range {v18 .. v18}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v19, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct/range {v19 .. v19}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    move-object/from16 p0, v10

    new-instance v10, Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Lcom/android/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    if-eqz v4, :cond_140

    invoke-virtual {v10, v4}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_140
    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v10, v2, v2}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setLayoutRotation(II)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v10, v4}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v22

    if-eqz v22, :cond_171

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v22

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v23

    cmpl-float v22, v22, v23

    if-lez v22, :cond_16e

    sget-object v22, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_179

    :cond_16e
    sget-object v22, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_179

    :cond_171
    invoke-virtual {v10}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v22

    :goto_179
    move-object/from16 v23, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v14

    sget-object v14, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    invoke-virtual {v14, v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v14

    int-to-float v14, v14

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_194

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_19a

    :cond_194
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-eqz v1, :cond_19e

    :cond_19a
    const/4 v1, 0x0

    move/from16 v24, v1

    goto :goto_1a0

    :cond_19e
    move/from16 v24, v14

    :goto_1a0
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v25, 0x40000000  # 2.0f

    div-float v1, v1, v25

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v25

    if-eqz v25, :cond_1d1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v11

    const-string v11, "getClosingWindowAnimators: iconRadius："

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " iconSize: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d3

    :cond_1d1
    move-object/from16 v25, v11

    :goto_1d3
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-interface {v12, v6, v11, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v12

    invoke-virtual {v10}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v10

    const-string/jumbo v15, "tsv.orientationState.orientationHandler"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v2, v10}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getPagedOrientationHandler(IILcom/android/launcher3/touch/PagedOrientationHandler;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v10

    sget-object v12, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_218

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v15

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v26

    div-float v15, v15, v26

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v26, v26, v15

    sub-float v12, v12, v26

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    goto :goto_232

    :cond_218
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v15

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v26

    div-float v15, v15, v26

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v26

    mul-float v26, v26, v15

    sub-float v12, v12, v26

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    :goto_232
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v15

    if-eqz v15, :cond_27e

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v9

    const-string v9, " , targetBounds: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", iconSize: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", winRadius: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", iconRadius: "

    const-string v9, ", progressWindowRadius: "

    invoke-static {v15, v14, v0, v1, v9}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", window: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rotation: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", delta = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_280

    :cond_27e
    move-object/from16 v26, v9

    :goto_280
    new-instance v15, Li0/a;

    move-object v0, v15

    move-object v1, v4

    move-object v2, v3

    move-object/from16 v3, p1

    move-object v4, v5

    move-object v5, v10

    move-object v7, v8

    move-object/from16 v8, v26

    move/from16 v9, v24

    move-object/from16 v14, p0

    move v10, v11

    move-object/from16 v11, v25

    move-object/from16 p0, v23

    move-object/from16 p2, v14

    move-object/from16 v27, v22

    move-object/from16 v14, v19

    move-object/from16 v28, v15

    move-object/from16 v15, v18

    move-object/from16 v18, p2

    move-object/from16 v19, p0

    invoke-direct/range {v0 .. v21}, Li0/a;-><init>(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$FloatRef;FFLandroid/graphics/Rect;FLandroid/graphics/RectF;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Matrix;ILandroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$OnUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$4;

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$4;-><init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$5;

    invoke-direct {v1}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "anim.animator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getClosingWindowAnimators$lambda$7(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$FloatRef;FFLandroid/graphics/Rect;FLandroid/graphics/RectF;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Matrix;ILandroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 45

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v13, p6

    move-object/from16 v12, p7

    move/from16 v11, p8

    move-object/from16 v10, p10

    move-object/from16 v9, p13

    move-object/from16 v8, p14

    move-object/from16 v5, p15

    move-object/from16 v4, p17

    move-object/from16 v3, p18

    move-object/from16 v2, p19

    move-object/from16 v1, p20

    move-object/from16 v11, p21

    const-string v11, "$windowToHomePositionMap"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$currentWindowRect"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$targets"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$tmpPos"

    move-object/from16 v7, p3

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$animOrientationHandler"

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$windowRect"

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$transPoint"

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$capsuleAlpha"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$cropRect"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$targetBounds"

    move-object/from16 v14, p12

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$capsuleCropSize"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$capsuleRadius"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$matrix"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$capsuleLeash"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$surfaceApplier"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$capsuleMatrix"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$capsuleCropRect"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "currentRect"

    move-object/from16 v5, p21

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v11}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-object/from16 v7, p2

    array-length v0, v7

    const/16 v16, 0x0

    move-object/from16 v5, p3

    move-object/from16 v2, p15

    move-object v1, v10

    move-object/from16 v17, v13

    move/from16 v14, v16

    :goto_98
    if-ge v14, v0, :cond_252

    move/from16 v16, v0

    aget-object v0, v7, v14

    iget-object v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v3}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    move-object/from16 p0, v3

    iget-object v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    if-eqz v3, :cond_b1

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Point;->set(II)V

    :cond_b1
    iget-object v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_bc

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Point;->set(II)V

    :cond_bc
    iget v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v4, 0x1

    move-object/from16 p22, v5

    const/high16 v5, 0x3f800000  # 1.0f

    if-ne v4, v3, :cond_200

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v18, 0x0

    move-object/from16 v0, p4

    move-object/from16 v2, p20

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v19, p0

    move-object/from16 v7, p22

    move-object/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$DefaultImpls;->calculateScale$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;IILjava/lang/Object;)F

    move-result v5

    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget v1, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, v7, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move-object/from16 v3, v17

    iput v0, v3, Landroid/graphics/PointF;->x:F

    iget v0, v6, Landroid/graphics/RectF;->top:F

    iget v1, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, v7, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    const-string v7, "OplusBackToCapsuleManager"

    if-eqz v0, :cond_11f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClosingWindowAnimators: transPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentWindowRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11f
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    sget-object v17, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v0, p23

    move/from16 p22, v5

    move-object/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    const v0, 0x3dcccccd  # 0.1f

    move/from16 v3, p23

    cmpl-float v0, v3, v0

    if-lez v0, :cond_142

    iput v4, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_142
    move/from16 v4, p8

    move-object/from16 v2, p21

    float-to-double v0, v4

    float-to-double v2, v5

    move/from16 p0, v5

    const-wide/high16 v5, 0x3ff8000000000000L  # 1.5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float v5, p9, v4

    float-to-double v5, v5

    mul-double/2addr v2, v5

    add-double/2addr v2, v0

    double-to-float v6, v2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    move/from16 v0, p23

    move v4, v5

    move/from16 v18, p0

    move-object/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v1

    const-wide/high16 v2, 0x4010000000000000L  # 4.0

    move-object v4, v8

    move-object/from16 v8, p4

    move-object/from16 v9, p10

    move/from16 v10, v18

    move-object/from16 v20, v11

    move/from16 v11, p11

    move v12, v0

    move-object v0, v13

    move v13, v1

    move-object/from16 v1, p4

    move/from16 v17, v14

    move-wide v14, v2

    invoke-interface/range {v8 .. v15}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateCapsuleWindowCrop(Landroid/graphics/Rect;FFFFD)V

    move-object v8, v0

    move-object/from16 v0, p4

    move-object v9, v1

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v10, v4

    move/from16 v4, p22

    move v11, v5

    move-object/from16 v5, p12

    invoke-interface/range {v0 .. v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateCapsuleWindowTranslationX(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1af

    :cond_1ab
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_1af
    int-to-float v0, v0

    move/from16 v1, p22

    mul-float/2addr v0, v1

    move-object/from16 v5, p13

    iput v0, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    mul-float v0, v6, v1

    iput v0, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    move-object/from16 v12, p15

    invoke-virtual {v12, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v0, v8, Landroid/graphics/PointF;->x:F

    iget v1, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f6

    const-string v0, "getClosingWindowAnimators, progress: "

    const-string v1, ", windowAlpha: "

    const-string v2, ", cornerRadius: "

    move/from16 v13, p23

    invoke-static {v0, v13, v1, v11, v2}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCropRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p10

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fa

    :cond_1f6
    move-object/from16 v14, p10

    move/from16 v13, p23

    :goto_1fa
    move-object/from16 v7, p3

    move-object v3, v8

    move-object v2, v12

    move-object v1, v14

    goto :goto_225

    :cond_200
    move-object/from16 v19, p0

    move-object/from16 v12, p15

    move-object/from16 v7, p22

    move v4, v5

    move-object v5, v9

    move-object/from16 v20, v11

    move-object/from16 v3, v17

    move-object/from16 v9, p4

    move/from16 v17, v14

    move-object v14, v10

    move-object v10, v8

    move-object v8, v13

    move/from16 v13, p23

    const/4 v6, 0x0

    iget v11, v7, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v15, v7, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    invoke-virtual {v2, v11, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v11, v4

    :goto_225
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v0, v17, 0x1

    move-object/from16 v6, p1

    move-object/from16 v15, p5

    move-object/from16 v12, p7

    move-object/from16 v4, p17

    move-object/from16 v17, v3

    move-object v9, v5

    move-object v5, v7

    move-object v13, v8

    move-object v8, v10

    move-object v10, v14

    move-object/from16 v11, v20

    move-object/from16 v7, p2

    move-object/from16 v3, p18

    move v14, v0

    move/from16 v0, v16

    goto/16 :goto_98

    :cond_252
    move-object v10, v8

    move-object v5, v9

    move-object/from16 v20, v11

    const/4 v0, 0x0

    invoke-virtual/range {p21 .. p21}, Landroid/graphics/RectF;->width()F

    move-result v1

    move/from16 v2, p16

    int-to-float v2, v2

    div-float/2addr v1, v2

    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v3, p21

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v3, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr v3, v1

    float-to-int v3, v3

    iget v4, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr v4, v1

    iput v4, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    move-object/from16 v4, p19

    invoke-virtual {v4, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual/range {p17 .. p17}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    move-object/from16 v2, p20

    invoke-virtual {v2, v0, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p17

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    move-object/from16 v3, p7

    iget v3, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    iget v2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-object/from16 v0, p18

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method

.method private static final hideSurface(Landroid/view/SurfaceControl;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hideSurface: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBackToCapsuleManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public static final isSupportCapsule(Ljava/lang/String;ILandroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCapsuleSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->isSupportCapsule(Ljava/lang/String;ILandroid/content/Context;Landroid/view/SurfaceControl;)Z

    move-result p0

    return p0
.end method

.method public static final isSupportCapsule(Ljava/lang/String;ILandroid/content/Context;Landroid/view/SurfaceControl;)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    sget-object v2, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCapsulePkgs:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string v3, "OplusBackToCapsuleManager"

    if-nez v2, :cond_1f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_1e

    const-string p1, "isSupportCapsule sCapsulePkgs doesn\'t contain "

    invoke-static {p1, p0, v3}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return v1

    :cond_1f
    if-eqz p3, :cond_29

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p3

    if-ne p3, v0, :cond_29

    move p3, v0

    goto :goto_2a

    :cond_29
    move p3, v1

    :goto_2a
    if-nez p3, :cond_38

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "isSupportCapsule surfaceControl doesn\'t valid"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return v1

    :cond_38
    sget-object p3, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sTargetCapsulePos:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_5e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_5d

    const-string p0, "isSupportCapsule sTargetCapsulePos width valid = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    return v1

    :cond_5e
    sget-boolean p3, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCardState:Z

    if-eqz p3, :cond_74

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_73

    const-string p0, "isSupportCapsule there is a card, sCardState = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCardState:Z

    invoke-static {p0, p1, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_73
    return v1

    :cond_74
    if-eqz p1, :cond_9c

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p3

    if-nez p3, :cond_9c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_9b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isSupportCapsule: screen isn\'t Portrait (rotation = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and device is small screen now"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    return v1

    :cond_9c
    if-eqz p2, :cond_b9

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "oplus_no_fluid_capsule_animation"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_b4

    const-string p2, "isSupportCapsule oplus_no_fluid_capsule_animation "

    invoke-static {p2, p1, v3}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_ba

    :cond_b9
    move p1, v1

    :goto_ba
    if-eqz p1, :cond_c8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_c7

    const-string p1, "isSupportCapsule: oplus_no_fluid_capsule_animation have "

    invoke-static {p1, p0, v3}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c7
    return v1

    :cond_c8
    return v0
.end method

.method private final notifyBackToCapsuleAnimatorState(I)V
    .registers 3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->notifyAppTransition(Landroid/os/Bundle;)V

    return-void
.end method

.method private final notifyInterruptedEnd()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->notifyBackToCapsuleAnimatorState(I)V

    return-void
.end method

.method public static final onCapsuleChange(Landroid/os/Bundle;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "packagename"

    const-string/jumbo v1, "rect"

    const-string/jumbo v2, "sfc"

    const-string v3, "cardState"

    const-string v4, "OplusBackToCapsuleManager"

    if-nez p0, :cond_10

    return-void

    :cond_10
    :try_start_10
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1f

    move v5, v6

    :cond_1f
    sput-boolean v5, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCardState:Z

    :cond_21
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const-class v3, Landroid/view/SurfaceControl;

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    sput-object v2, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCapsuleSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_4c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCapsuleChange onlyUpdateSurface "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-class v2, Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_62

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_67

    :cond_62
    const-string v2, "bundle.getParcelable(KEY…ct::class.java) ?: Rect()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_67
    sget-object v2, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sTargetCapsulePos:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_6c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const-class v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_82

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_82
    sget-object p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCapsulePkgs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_c3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCapsuleChange: tmpSurfaceControl="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCapsuleSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " tmpCapsulePos="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sTargetCapsulePos:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " tmpPkgs= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " cardState = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->sCardState:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c5
    .catchall {:try_start_10 .. :try_end_c5} :catchall_c6

    goto :goto_cb

    :catchall_c6
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_cb
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_d2

    goto :goto_e7

    :cond_d2
    const-string/jumbo v0, "onCapsuleChange error. "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e7
    return-void
.end method

.method public static final showSurface(Landroid/view/SurfaceControl;Lcom/android/launcher3/Launcher;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showSurface invalid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBackToCapsuleManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    :goto_3d
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-ne v3, v1, :cond_48

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    if-eqz v1, :cond_4e

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4e
    const p1, 0x7fffffff

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static final startHideCapsuleSurfaceAnim$lambda$9(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$transaction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$capsuleSurfaceCtl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method


# virtual methods
.method public final notifyAnimatorNormalEnd()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->notifyBackToCapsuleAnimatorState(I)V

    return-void
.end method

.method public final notifyAnimatorStart()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->notifyBackToCapsuleAnimatorState(I)V

    return-void
.end method

.method public final startHideCapsuleSurfaceAnim(Landroid/view/SurfaceControl;)V
    .registers 4

    const-string p0, "capsuleSurfaceCtl"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_38

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-string/jumbo v0, "ofFloat(1f, 0f)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v1, Landroidx/core/view/h;

    invoke-direct {v1, v0, p1}, Landroidx/core/view/h;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$startHideCapsuleSurfaceAnim$$inlined$addListener$default$1;

    invoke-direct {v0, p1}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$startHideCapsuleSurfaceAnim$$inlined$addListener$default$1;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_38
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method
