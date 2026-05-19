.class public final Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HomeAnimation"
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MS:[I

.field private static final ASSISTANT_SCREEN_CARD_DEFAULT_WIDTH:F = 478.0f

.field private static final CLOSE_ICON_ALPHA_THRESHOLD:F = 0.9f

.field private static final CLOSE_WINDOW_START_CLIP:F = 0.0f

.field private static final CLOSE_WINDOW_STOP_CLIP:F = 0.55f

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;

.field public static assistScrollProgress:F
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->INSTANCE:Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->ANIMATION_DURATION_MS:[I

    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->assistScrollProgress:F

    return-void

    :array_14
    .array-data 4
        0x168
        0x1f4
        0x258
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/PointF;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;[FLandroid/graphics/RectF;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 21

    invoke-static/range {p0 .. p20}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->getMenuClosingWindowAnimators$lambda$4(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/PointF;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;[FLandroid/graphics/RectF;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static final synthetic access$removeViewLeash(Landroid/view/SurfaceControl;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->removeViewLeash(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static final getMenuClosingWindowAnimators(Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ValueAnimator;
    .registers 36
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    const-string v1, "launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appTargets"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->findClosingAppPackage([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getOpeningAppsLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->getOpeningAppsTaskLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getTargetRectByTargets([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getWindowBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/RectF;

    move-result-object v7

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v14, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v6

    invoke-direct {v14, v6}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    const-string v8, ", targetBounds = "

    const-string v9, "AssistantScreenRemoteAnimUtil"

    const-string v10, "QuickStep"

    if-eqz v6, :cond_5d

    const-string v6, "getClosingWindowAnimators: closingPkg = "

    const-string v11, ", startBounds = "

    invoke-static {v6, v1, v11}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    new-instance v16, Landroid/graphics/RectF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v17, v14

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v20, v13

    sget-object v13, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v13, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v13}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v13

    iget v13, v13, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v22, v12

    invoke-virtual/range {v21 .. v21}, Landroid/view/Display;->getRotation()I

    move-result v12

    move-object/from16 v21, v11

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getClosingAppTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v11

    move-object/from16 v23, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v6

    const-string v4, "launcher.getOverviewPanel()"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/quickstep/views/RecentsView;

    new-instance v4, Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-virtual {v6}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v6

    invoke-direct {v4, v0, v6}, Lcom/android/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    if-eqz v11, :cond_ce

    invoke-virtual {v4, v11}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_ce
    invoke-virtual {v4, v13, v13}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setLayoutRotation(II)V

    invoke-virtual {v4, v14}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    const-string v11, "tsv.orientationState.orientationHandler"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v13, v6}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getPagedOrientationHandler(IILcom/android/launcher3/touch/PagedOrientationHandler;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getIconLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v12

    const/16 v24, 0x0

    if-eqz v12, :cond_15a

    new-instance v13, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v13}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz v2, :cond_105

    move-object/from16 v32, v9

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    move-object/from16 v33, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10a

    move v9, v10

    goto :goto_10d

    :cond_105
    move-object/from16 v32, v9

    move-object/from16 v33, v10

    const/4 v10, 0x1

    :cond_10a
    move v9, v10

    move/from16 v10, v24

    :goto_10d
    if-eqz v10, :cond_148

    if-eqz v3, :cond_119

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v10

    if-ne v10, v9, :cond_119

    const/4 v9, 0x1

    goto :goto_11b

    :cond_119
    move/from16 v9, v24

    :goto_11b
    if-eqz v9, :cond_147

    sget-object v9, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;

    invoke-interface {v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v10

    invoke-static {v9, v12, v2, v13, v10}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->access$createAnimLeash(Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_144

    invoke-interface {v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v28

    iget v3, v11, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v3, v3

    iget v10, v11, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v10, v10

    move-object/from16 v25, v9

    move-object/from16 v26, v2

    move-object/from16 v27, v13

    move/from16 v29, v3

    move/from16 v30, v10

    invoke-static/range {v25 .. v30}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->access$transformIconLeashToPortrait(Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IFF)V

    invoke-virtual {v13, v12, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_147

    :cond_144
    invoke-virtual {v13, v12, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_147
    :goto_147
    const/4 v9, 0x1

    :cond_148
    invoke-virtual {v13, v12, v9}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const v2, 0x7fffffff

    invoke-virtual {v13, v12, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    invoke-virtual {v13, v12, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move-object v13, v12

    goto :goto_15f

    :cond_15a
    move-object/from16 v32, v9

    move-object/from16 v33, v10

    const/4 v13, 0x0

    :goto_15f
    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v14, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v15}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/4 v1, 0x3

    new-array v12, v1, [F

    fill-array-data v12, :array_27c

    if-eqz v13, :cond_191

    invoke-virtual {v13}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_193

    :cond_191
    const/high16 v1, 0x43ef0000  # 478.0f

    :goto_193
    aput v1, v12, v24

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1a7

    const v2, 0x7f070166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1a8

    :cond_1a7
    const/4 v1, 0x0

    :goto_1a8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v12, v2

    const/4 v1, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1c8

    const v3, 0x7f070165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v31, v2

    goto :goto_1ca

    :cond_1c8
    const/16 v31, 0x0

    :goto_1ca
    invoke-static/range {v31 .. v31}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aput v2, v12, v1

    aget v1, v12, v24

    const/4 v2, 0x1

    aget v2, v12, v2

    invoke-interface {v6, v7, v1, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v9

    sget-object v1, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v1

    int-to-float v11, v1

    new-instance v4, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;

    const/4 v1, 0x0

    invoke-direct {v4, v1, v15, v5}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_22a

    const-string v1, "getClosingWindowAnimators-final: startBounds = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", asstScreenWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->access$getAsstScreenWidth$p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientationHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-static {v3, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22a
    new-instance v1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v5, p1

    invoke-static {v1, v2, v5, v2}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->restoreTaskLayer(Lcom/android/quickstep/util/SurfaceTransaction;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SurfaceTransaction;->setVsyncId()V

    invoke-virtual {v1}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v8, Lcom/oplus/quickstep/utils/e;

    move-object v1, v8

    move-object v2, v14

    move-object/from16 v3, v16

    move-object v14, v4

    move-object/from16 v4, p1

    move-object/from16 v5, v23

    move-object v0, v8

    move v8, v9

    move-object/from16 v9, v21

    move-object/from16 v16, v12

    move-object/from16 v12, v22

    move-object/from16 p1, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v0

    move-object v0, v14

    move-object/from16 v14, v16

    move-object/from16 v16, p1

    invoke-direct/range {v1 .. v19}, Lcom/oplus/quickstep/utils/e;-><init>(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/PointF;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;[FLandroid/graphics/RectF;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;)V

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$OnUpdateListener;)V

    new-instance v1, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation$getMenuClosingWindowAnimators$2;

    move-object/from16 v2, p0

    move-object/from16 v12, p1

    invoke-direct {v1, v2, v12}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation$getMenuClosingWindowAnimators$2;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "transitAnimator.animator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :array_27c
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final getMenuClosingWindowAnimators$lambda$4(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/PointF;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;[FLandroid/graphics/RectF;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 44

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v5, p14

    move-object/from16 v4, p15

    move-object/from16 v3, p16

    move-object/from16 v2, p17

    move-object/from16 v1, p18

    const-string v5, "$homeToWindowPositionMap"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$currentWindowRect"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$appTargets"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$tmpPos"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$orientationHandler"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$windowBounds"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$cropRect"

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$matrix"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$cardRect"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$iconInfo"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$startBounds"

    move-object/from16 v15, p13

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$surfaceApplier"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$cardMatrix"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$cardCropRect"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v5}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    sget v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->assistScrollProgress:F

    const/high16 v16, 0x3f800000  # 1.0f

    sub-float v0, v0, v16

    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->access$getAsstScreenWidth$p()I

    move-result v1

    int-to-float v1, v1

    mul-float v16, v0, v1

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_211

    const/4 v1, 0x0

    :goto_83
    add-int/lit8 v17, v0, -0x1

    aget-object v0, v7, v0

    move/from16 p0, v1

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v1}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    move-object/from16 p19, v1

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_9f

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v8, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_aa

    :cond_9f
    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v8, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    :goto_aa
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1df

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v0, p4

    move-object/from16 v2, p18

    move-object/from16 v21, p19

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v7, p14

    move-object v15, v5

    move-object/from16 v5, v20

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$DefaultImpls;->calculateScale$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;IILjava/lang/Object;)F

    move-result v5

    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget v1, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    add-float v0, v0, v16

    iput v0, v8, Landroid/graphics/PointF;->x:F

    iget v0, v6, Landroid/graphics/RectF;->top:F

    iget v1, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/PointF;->y:F

    const v0, 0x3f0ccccd  # 0.55f

    move/from16 v4, p20

    cmpl-float v0, v4, v0

    if-lez v0, :cond_12a

    const v0, 0x3f666666  # 0.9f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_fe

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    move-object/from16 v18, v15

    move v15, v5

    goto :goto_11e

    :cond_fe
    const v1, 0x3f0ccccd  # 0.55f

    const v2, 0x3f666666  # 0.9f

    const/high16 v3, 0x3f800000  # 1.0f

    const/16 v18, 0x0

    sget-object v19, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v0, p20

    move/from16 v4, v18

    move-object/from16 v18, v15

    move v15, v5

    move-object/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    :goto_11e
    invoke-interface {v9, v11, v10, v1, v12}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateAssistantScreenWindowCrop(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V

    invoke-interface {v9, v8, v6, v10, v15}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateTaskViewWindowTranslationX(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    move/from16 v2, p6

    move v4, v2

    move/from16 v3, p9

    goto :goto_158

    :cond_12a
    move-object/from16 v18, v15

    move v15, v5

    const/4 v5, 0x0

    const/4 v1, 0x0

    const v2, 0x3f0ccccd  # 0.55f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    new-instance v19, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move/from16 v0, p20

    move v7, v5

    move-object/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v7, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    move/from16 v2, p6

    move/from16 v3, p9

    invoke-static {v0, v3, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    invoke-interface {v9, v11, v10, v0, v12}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateAssistantScreenWindowCrop(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V

    invoke-interface {v9, v8, v6, v10, v15}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateTaskViewWindowTranslationX(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    move v0, v1

    :goto_158
    invoke-virtual {v13, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v1, v8, Landroid/graphics/PointF;->x:F

    iget v5, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1c2

    const-string v1, "onAnimationUpdate: progress = "

    const-string v5, ", windowAlpha = "

    const-string v7, ", tmpPos_x = "

    move/from16 v2, p20

    invoke-static {v1, v2, v5, v0, v7}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", tmpPos_y = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", assisScroll="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;->assistScrollProgress:F

    const-string v7, ", cornerRadius = "

    const-string v3, ", currentRect = "

    invoke-static {v1, v5, v7, v4, v3}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    move-object/from16 v3, p18

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mCropRect = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", cardRect = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", delta = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", scale = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "QuickStep"

    const-string v7, "AssistantScreenRemoteAnimUtil"

    invoke-static {v5, v7, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c6

    :cond_1c2
    move-object/from16 v3, p18

    move/from16 v2, p20

    :goto_1c6
    move-object/from16 v5, v21

    invoke-virtual {v5, v13}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    const/high16 v1, 0x3f800000  # 1.0f

    move/from16 v22, v1

    move v1, v0

    move/from16 v0, v22

    goto :goto_1fe

    :cond_1df
    move-object/from16 v3, p18

    move/from16 v2, p20

    move-object/from16 v18, v5

    move-object/from16 v5, p19

    iget v0, v8, Landroid/graphics/PointF;->x:F

    iget v4, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v0, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v5, v13}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move v0, v1

    move/from16 v1, p0

    :goto_1fe
    if-gez v17, :cond_201

    goto :goto_21a

    :cond_201
    move-object/from16 v7, p2

    move-object/from16 v15, p13

    move-object/from16 v4, p15

    move-object/from16 v3, p16

    move-object/from16 v2, p17

    move/from16 v0, v17

    move-object/from16 v5, v18

    goto/16 :goto_83

    :cond_211
    move-object/from16 v3, p18

    move/from16 v2, p20

    move-object/from16 v18, v5

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    :goto_21a
    sub-float/2addr v0, v1

    invoke-virtual/range {p18 .. p18}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v4, 0x0

    aget v5, p12, v4

    div-float/2addr v1, v5

    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    int-to-float v7, v6

    sub-float/2addr v7, v2

    mul-float/2addr v7, v5

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v3, v5, Landroid/graphics/RectF;->left:F

    iget v7, v5, Landroid/graphics/RectF;->top:F

    add-float v8, v7, v2

    iget v10, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v7

    invoke-virtual {v14, v3, v8, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ly4/h;->b(FF)F

    move-result v2

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26d

    iget v3, v5, Landroid/graphics/RectF;->left:F

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v7, v2

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v14, v3, v2, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_28b

    :cond_26d
    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_281

    iget v3, v5, Landroid/graphics/RectF;->left:F

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v7, v2

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v14, v3, v2, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_28b

    :cond_281
    iget v3, v5, Landroid/graphics/RectF;->left:F

    iget v7, v5, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v7

    invoke-virtual {v14, v3, v7, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_28b
    move-object/from16 v2, p14

    if-eqz v2, :cond_2ca

    move-object/from16 v3, p16

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v1, v14, Landroid/graphics/RectF;->left:F

    add-float v1, v1, v16

    iget v5, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual/range {p14 .. p14}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    invoke-virtual/range {p14 .. p14}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v5

    move-object/from16 v7, p17

    invoke-virtual {v7, v4, v4, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    aget v1, p12, v6

    invoke-virtual/range {p11 .. p11}, Landroid/graphics/RectF;->width()F

    move-result v5

    aget v4, p12, v4

    div-float/2addr v5, v4

    mul-float/2addr v5, v1

    move-object/from16 v1, v18

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_2cc

    :cond_2ca
    move-object/from16 v1, v18

    :goto_2cc
    move-object/from16 v0, p15

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method

.method private static final removeViewLeash(Landroid/view/SurfaceControl;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "QuickStep"

    const-string v1, "AssistantScreenRemoteAnimUtil"

    const-string v2, "remove viewLeash by self"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-ne v2, v0, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    if-nez v0, :cond_18

    return-void

    :cond_18
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
