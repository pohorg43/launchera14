.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToAssistantScreen(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusBaseSwipeUpHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusBaseSwipeUpHandler.kt\ncom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6540:1\n1#2:6541\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

.field public final synthetic $animHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $closeWindowRect:Landroid/graphics/RectF;

.field public final synthetic $cropHeight:Z

.field public final synthetic $cropRect:Landroid/graphics/Rect;

.field public final synthetic $currentCardRect:Landroid/graphics/RectF;

.field public final synthetic $currentWindowRect:Landroid/graphics/RectF;

.field public final synthetic $delta:F

.field public final synthetic $hasClosingApps:Z

.field public final synthetic $homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final synthetic $homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

.field public final synthetic $homeToWindowPositionMap:Landroid/graphics/Matrix;

.field public final synthetic $iconAlphaAlreadyEndTarget:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $iconCropRect:Landroid/graphics/Rect;

.field public final synthetic $iconInfo:[F

.field public final synthetic $iconLeash:Landroid/view/SurfaceControl;

.field public final synthetic $iconMatrix:Landroid/graphics/Matrix;

.field public final synthetic $iconRect:Landroid/graphics/RectF;

.field public final synthetic $isInputConsumerDisable:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $isLandscape:Z

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $orientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field public final synthetic $overlayManager:Lcom/android/launcher/LauncherCallbacksImp;

.field public final synthetic $progressWindowRadius:F

.field public final synthetic $startRect:Landroid/graphics/RectF;

.field public final synthetic $targetRect:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $transPoint:Landroid/graphics/PointF;

.field public final synthetic $transformParams:Lcom/android/quickstep/util/TransformParams;

.field public final synthetic $winRadius:F

.field public final synthetic $windowAlphaThreshold:F

.field private assistAlpha:F

.field private assistScale:F

.field private forceNotUpdate:Z

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher/LauncherCallbacksImp;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/launcher3/anim/AnimatorPlaybackController;[FLandroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/util/Pair;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFZLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;ZLkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/RectF;Landroid/view/SurfaceControl;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/Matrix;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/LauncherCallbacksImp;",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;",
            "[F",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/RectF;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/PointF;",
            "FFZ",
            "Landroid/graphics/Rect;",
            "FF",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/RectF;",
            "Z",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;",
            "Landroid/graphics/RectF;",
            "Landroid/view/SurfaceControl;",
            "Z",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/android/quickstep/util/TransformParams;",
            "Landroid/graphics/Matrix;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Landroid/graphics/Rect;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$overlayManager:Lcom/android/launcher/LauncherCallbacksImp;

    move-object v1, p2

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-object v1, p3

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    move-object v1, p4

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-object v1, p5

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconInfo:[F

    move-object v1, p6

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$homeToWindowPositionMap:Landroid/graphics/Matrix;

    move-object v1, p7

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentWindowRect:Landroid/graphics/RectF;

    move-object v1, p8

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p9

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$animHandler:Landroid/util/Pair;

    move-object v1, p10

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    move-object v1, p11

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$startRect:Landroid/graphics/RectF;

    move-object v1, p12

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$transPoint:Landroid/graphics/PointF;

    move v1, p13

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$progressWindowRadius:F

    move/from16 v1, p14

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$windowAlphaThreshold:F

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropHeight:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropRect:Landroid/graphics/Rect;

    move/from16 v1, p17

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    move/from16 v1, p18

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$winRadius:F

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$matrix:Landroid/graphics/Matrix;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentCardRect:Landroid/graphics/RectF;

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$isLandscape:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$targetRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconRect:Landroid/graphics/RectF;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconLeash:Landroid/view/SurfaceControl;

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$hasClosingApps:Z

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$isInputConsumerDisable:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconMatrix:Landroid/graphics/Matrix;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$orientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconCropRect:Landroid/graphics/Rect;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconAlphaAlreadyEndTarget:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->assistScale:F

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->assistAlpha:F

    return-void
.end method


# virtual methods
.method public final getAssistAlpha()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->assistAlpha:F

    return p0
.end method

.method public final getAssistScale()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->assistScale:F

    return p0
.end method

.method public final getForceNotUpdate()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->forceNotUpdate:Z

    return p0
.end method

.method public onCancel()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onCancel(I)V

    return-void
.end method

.method public onUpdate(Landroid/graphics/RectF;F)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    const-string v2, "currentRect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4ab

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$isInvalidRectF(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto/16 :goto_4ab

    :cond_1b
    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    const/high16 v9, 0x3f800000  # 1.0f

    sub-float v10, v9, v8

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const v2, 0x3f19999a  # 0.6f

    cmpl-float v12, v8, v2

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-lez v12, :cond_49

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconInfo:[F

    aget v4, v3, v14

    div-float/2addr v2, v4

    aget v3, v3, v13

    mul-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iput v3, v11, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v2

    iput v3, v11, Landroid/graphics/RectF;->right:F

    goto :goto_6f

    :cond_49
    const/4 v3, 0x0

    const v4, 0x3f19999a  # 0.6f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconInfo:[F

    aget v5, v4, v14

    div-float/2addr v3, v5

    aget v4, v4, v13

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    iput v2, v11, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iput v2, v11, Landroid/graphics/RectF;->right:F

    :goto_6f
    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$homeToWindowPositionMap:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    new-instance v11, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v11}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v15, v2

    move v7, v14

    :goto_7f
    const/4 v2, 0x1

    if-ge v7, v15, :cond_2b1

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v3, v3, v7

    const-string v4, "targets[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v4}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v2, v4, :cond_263

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$animHandler:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v10, "animHandler.first"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentWindowRect:Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v21}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$DefaultImpls;->calculateScale$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;IILjava/lang/Object;)F

    move-result v10

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$startRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$startRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float/2addr v4, v6

    int-to-float v2, v2

    sub-float/2addr v2, v8

    mul-float/2addr v2, v4

    int-to-float v4, v13

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$transPoint:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentWindowRect:Landroid/graphics/RectF;

    iget v13, v4, Landroid/graphics/RectF;->left:F

    iget-object v14, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    iget v9, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v9

    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v9, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    add-float/2addr v13, v9

    iput v13, v2, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v9, v14, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v9

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    if-lez v12, :cond_192

    iget v9, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$progressWindowRadius:F

    iget v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$windowAlphaThreshold:F

    cmpl-float v2, v8, v4

    if-lez v2, :cond_fc

    move-object/from16 v22, v5

    move/from16 v23, v6

    move v14, v7

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_11a

    :cond_fc
    const v3, 0x3f19999a  # 0.6f

    const/high16 v13, 0x3f800000  # 1.0f

    const/4 v14, 0x0

    sget-object v20, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v2, p2

    move-object/from16 v22, v5

    move v5, v13

    move/from16 v23, v6

    const/4 v13, 0x0

    move v6, v14

    move v14, v7

    move-object/from16 v7, v20

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v2, v13, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v6

    :goto_11a
    iget-boolean v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropHeight:Z

    if-eqz v2, :cond_156

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    invoke-static {v3, v13, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v7, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget-object v13, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    move/from16 v16, v6

    iget v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    sub-float/2addr v13, v6

    invoke-static {v3, v7, v13}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    float-to-int v3, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$transPoint:Landroid/graphics/PointF;

    iget v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v10

    move/from16 v7, v23

    sub-float/2addr v3, v7

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    goto :goto_18f

    :cond_156
    move/from16 v16, v6

    move/from16 v7, v23

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropRect:Landroid/graphics/Rect;

    iget v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v4, v13, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    float-to-int v3, v3

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v13, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    sub-float/2addr v6, v13

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$transPoint:Landroid/graphics/PointF;

    iget v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v10

    sub-float/2addr v3, v7

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    :goto_18f
    move v6, v9

    goto/16 :goto_24d

    :cond_192
    move-object/from16 v22, v5

    move v14, v7

    const/4 v13, 0x0

    move v7, v6

    cmpg-float v2, v8, v13

    if-gez v2, :cond_1a1

    move/from16 v24, v7

    move v6, v13

    const/high16 v3, 0x3f800000  # 1.0f

    goto :goto_1b9

    :cond_1a1
    const/4 v3, 0x0

    const v4, 0x3f19999a  # 0.6f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v2, p2

    move/from16 v24, v7

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v2, v13, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v6

    :goto_1b9
    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getWindowCropProgress$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)F

    move-result v2

    invoke-static {v6, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$winRadius:F

    iget v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$progressWindowRadius:F

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    iget-boolean v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropHeight:Z

    if-eqz v4, :cond_20d

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$transPoint:Landroid/graphics/PointF;

    iget v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    iget v6, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v10

    invoke-static {v2, v13, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    move/from16 v7, v24

    invoke-static {v2, v13, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v7

    sub-float/2addr v5, v7

    sub-float/2addr v6, v5

    iput v6, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    invoke-static {v2, v13, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget-object v9, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget v13, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    sub-float/2addr v9, v13

    invoke-static {v2, v7, v9}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    float-to-int v2, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_24a

    :cond_20d
    move/from16 v7, v24

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$transPoint:Landroid/graphics/PointF;

    iget v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    iget v6, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v10

    invoke-static {v2, v13, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    invoke-static {v2, v13, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v7

    sub-float/2addr v5, v7

    sub-float/2addr v6, v5

    iput v6, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    invoke-static {v2, v13, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v9, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$delta:F

    sub-float/2addr v7, v9

    invoke-static {v2, v6, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    float-to-int v2, v2

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    :goto_24a
    move v6, v3

    const/high16 v16, 0x3f800000  # 1.0f

    :goto_24d
    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$transPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move/from16 v2, v16

    move v10, v2

    move-object/from16 v3, v22

    goto :goto_296

    :cond_263
    move-object/from16 v22, v5

    move v14, v7

    const/4 v13, 0x0

    iget-object v2, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_277

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$matrix:Landroid/graphics/Matrix;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_284

    :cond_277
    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$matrix:Landroid/graphics/Matrix;

    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_284
    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropRect:Landroid/graphics/Rect;

    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    move v6, v13

    move-object/from16 v3, v22

    const/high16 v2, 0x3f800000  # 1.0f

    :goto_296
    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v7, v14, 0x1

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v13, 0x2

    const/4 v14, 0x0

    goto/16 :goto_7f

    :cond_2b1
    move v3, v9

    const/4 v13, 0x0

    sub-float v9, v3, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconInfo:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    div-float/2addr v3, v4

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$startRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$startRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    int-to-float v5, v2

    sub-float/2addr v5, v8

    mul-float/2addr v5, v4

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$homeToWindowPositionMap:Landroid/graphics/Matrix;

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentCardRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-boolean v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$isLandscape:Z

    if-eqz v5, :cond_31d

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$targetRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$targetRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_31d

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentCardRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$targetRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v6

    iput v7, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentCardRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$targetRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v6

    iput v7, v5, Landroid/graphics/RectF;->bottom:F

    :cond_31d
    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconRect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentCardRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v12, v6, Landroid/graphics/RectF;->top:F

    add-float v14, v12, v4

    iget v15, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v12, v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v6, v12

    invoke-virtual {v5, v7, v14, v15, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$isLandscape:Z

    if-eqz v5, :cond_355

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$targetRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$targetRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_355

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentCardRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto :goto_365

    :cond_355
    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentCardRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentCardRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ly4/h;->b(FF)F

    move-result v5

    :goto_365
    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconRect:Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$currentCardRect:Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/RectF;->left:F

    iget v14, v7, Landroid/graphics/RectF;->top:F

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v14

    invoke-virtual {v6, v12, v14, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$cropHeight:Z

    if-eqz v5, :cond_384

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v4

    iput v6, v5, Landroid/graphics/RectF;->top:F

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v4

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    goto :goto_390

    :cond_384
    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v4

    iput v6, v5, Landroid/graphics/RectF;->left:F

    iget v6, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v4

    iput v6, v5, Landroid/graphics/RectF;->right:F

    :goto_390
    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_466

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconMatrix:Landroid/graphics/Matrix;

    iget-boolean v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$isLandscape:Z

    iget-object v7, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconRect:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$closeWindowRect:Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$orientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v15, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconCropRect:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconInfo:[F

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$iconAlphaAlreadyEndTarget:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$hasClosingApps:Z

    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    if-eqz v6, :cond_406

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v3

    if-nez v3, :cond_406

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v20

    sub-float v21, v20, v3

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v22

    sub-float v22, v22, v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v23

    sub-float v22, v22, v23

    sget-object v8, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3e1

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float v12, v12, v20

    sub-float v21, v12, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float v22, v6, v3

    :cond_3e1
    move/from16 v3, v21

    move/from16 v6, v22

    invoke-virtual {v7, v3, v6}, Landroid/graphics/RectF;->offset(FF)V

    iget v3, v7, Landroid/graphics/RectF;->left:F

    iget v6, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f8

    const/high16 v3, 0x42b40000  # 90.0f

    goto :goto_3fa

    :cond_3f8
    const/high16 v3, 0x43870000  # 270.0f

    :goto_3fa
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v5, v3, v6, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_40d

    :cond_406
    iget v3, v7, Landroid/graphics/RectF;->left:F

    iget v6, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_40d
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v15, v8, v8, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v3, 0x1

    aget v6, v13, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    aget v7, v13, v8

    div-float/2addr v3, v7

    mul-float/2addr v3, v6

    iget-boolean v6, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v6, :cond_438

    invoke-virtual {v11, v4}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_44b

    :cond_438
    invoke-virtual {v11, v4}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :goto_44b
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSwipeUpToAssistantAnimationOptimize()Z

    move-result v3

    if-eqz v3, :cond_467

    if-eqz v1, :cond_467

    iget-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_467

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v1, v9, v1

    if-nez v1, :cond_45f

    const/4 v6, 0x1

    goto :goto_460

    :cond_45f
    move v6, v8

    :goto_460
    if-eqz v6, :cond_467

    const/4 v1, 0x1

    iput-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_467

    :cond_466
    const/4 v8, 0x0

    :cond_467
    :goto_467
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSwipeUpToAssistantAnimationOptimize()Z

    move-result v1

    if-eqz v1, :cond_494

    iget-boolean v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$hasClosingApps:Z

    if-eqz v1, :cond_494

    iget-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$isInputConsumerDisable:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_494

    const/4 v2, 0x0

    cmpg-float v2, v10, v2

    if-nez v2, :cond_47e

    const/4 v14, 0x1

    goto :goto_47f

    :cond_47e
    move v14, v8

    :goto_47f
    if-eqz v14, :cond_494

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsAnimationController$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object v1

    if-eqz v1, :cond_48f

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationController;->disableInputConsumer()V

    :cond_48f
    iget-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$sendIconSurfaceToAssistantScreen(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    :cond_494
    iget-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v1, v11}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    iget-object v0, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMCurrentShift$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    move/from16 v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$updateSysUiFlags(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    return-void

    :cond_4ab
    :goto_4ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: invalid currentRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->end()V

    return-void
.end method

.method public onUpdate(Landroid/graphics/RectF;FFF)V
    .registers 7

    iput p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->assistScale:F

    iput p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->assistAlpha:F

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->forceNotUpdate:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->$overlayManager:Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p4}, Lcom/android/launcher/LauncherCallbacksImp;->onViewAlphaChanged(F)V

    :cond_f
    iget v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->assistAlpha:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1f

    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->forceNotUpdate:Z

    :cond_1f
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method public final setAssistAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->assistAlpha:F

    return-void
.end method

.method public final setAssistScale(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->assistScale:F

    return-void
.end method

.method public final setForceNotUpdate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->forceNotUpdate:Z

    return-void
.end method
