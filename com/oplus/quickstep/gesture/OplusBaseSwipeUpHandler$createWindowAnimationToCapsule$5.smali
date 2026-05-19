.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToCapsule(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

.field public final synthetic $capsuleAlpha:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $capsuleCropRect:Landroid/graphics/Rect;

.field public final synthetic $capsuleCropSize:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $capsuleLeash:Landroid/view/SurfaceControl;

.field public final synthetic $capsuleMatrix:Landroid/graphics/Matrix;

.field public final synthetic $capsuleRadius:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $capsuleScale:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $capsuleSize:I

.field public final synthetic $closeWindowRect:Landroid/graphics/RectF;

.field public final synthetic $cropRect:Landroid/graphics/Rect;

.field public final synthetic $currentCapsuleRect:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $currentWindowRect:Landroid/graphics/RectF;

.field public final synthetic $delta:F

.field public final synthetic $homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final synthetic $homeToWindowPositionMap:Landroid/graphics/Matrix;

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $orientationHandler:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $progressWindowRadius:F

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $transPoint:Landroid/graphics/PointF;

.field public final synthetic $transformParams:Lcom/android/quickstep/util/TransformParams;

.field public final synthetic $winRadius:F

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/graphics/Matrix;Landroid/graphics/RectF;Lcom/android/launcher3/anim/AnimatorPlaybackController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/RectF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$FloatRef;FFLkotlin/jvm/internal/Ref$FloatRef;ILandroid/graphics/Rect;FLandroid/graphics/Matrix;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/RectF;",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            ">;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/PointF;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "FF",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "I",
            "Landroid/graphics/Rect;",
            "F",
            "Landroid/graphics/Matrix;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/quickstep/util/TransformParams;",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-object v1, p2

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    move-object v1, p3

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$homeToWindowPositionMap:Landroid/graphics/Matrix;

    move-object v1, p4

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$currentWindowRect:Landroid/graphics/RectF;

    move-object v1, p5

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-object v1, p6

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p7

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$orientationHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v1, p8

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$closeWindowRect:Landroid/graphics/RectF;

    move-object v1, p9

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$transPoint:Landroid/graphics/PointF;

    move-object v1, p10

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleAlpha:Lkotlin/jvm/internal/Ref$FloatRef;

    move v1, p11

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$winRadius:F

    move v1, p12

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$progressWindowRadius:F

    move-object v1, p13

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleScale:Lkotlin/jvm/internal/Ref$FloatRef;

    move/from16 v1, p14

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleSize:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$cropRect:Landroid/graphics/Rect;

    move/from16 v1, p16

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$delta:F

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$matrix:Landroid/graphics/Matrix;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleCropSize:Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleRadius:Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$currentCapsuleRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleLeash:Landroid/view/SurfaceControl;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleCropRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;F)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    const-string v2, "currentRect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const-string v9, "OplusBaseSwipeUpHandler"

    if-nez v2, :cond_324

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$isInvalidRectF(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_324

    :cond_1d
    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2, v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$tryExecuteInterruptOpts(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$homeToWindowPositionMap:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$currentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    new-instance v10, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v10}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v11, v2

    const/4 v2, 0x0

    move v12, v2

    :goto_38
    if-ge v12, v11, :cond_2b9

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v13, v2, v12

    const-string v2, "targets[i]"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_22c

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$orientationHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;

    iget-object v15, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$currentWindowRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$closeWindowRect:Landroid/graphics/RectF;

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v14 .. v19}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$DefaultImpls;->calculateScale$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;IILjava/lang/Object;)F

    move-result v2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$currentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v2, v4

    :cond_72
    move v15, v2

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$transPoint:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$currentWindowRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$closeWindowRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v7

    iget-object v7, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v14, v7, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    add-float/2addr v5, v14

    iput v5, v2, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, v7, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v2, :cond_146

    sget-object v2, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMContext$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/android/quickstep/util/SplitScreenBounds;->isLauncherOnFirstScreen(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_146

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v2, :cond_146

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    if-eqz v2, :cond_10c

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDeviceState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v2

    if-ne v2, v3, :cond_10c

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$transPoint:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v6}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v6}, Lcom/android/launcher3/OplusDeviceProfile;->getSystemWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto :goto_146

    :cond_10c
    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$transPoint:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v6}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v6}, Lcom/android/launcher3/OplusDeviceProfile;->getSystemWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :cond_146
    :goto_146
    const/4 v2, 0x0

    cmpg-float v2, v8, v2

    if-gez v2, :cond_150

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    move v7, v3

    goto :goto_165

    :cond_150
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v14, 0x3f800000  # 1.0f

    move/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    invoke-static {v2, v3, v14}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    move v7, v14

    :goto_165
    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getWindowCropProgress$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)F

    move-result v3

    invoke-static {v2, v3, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    const v2, 0x3dcccccd  # 0.1f

    cmpl-float v2, v8, v2

    if-lez v2, :cond_17a

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleAlpha:Lkotlin/jvm/internal/Ref$FloatRef;

    iput v7, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_17a
    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$orientationHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$transPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$currentWindowRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$closeWindowRect:Landroid/graphics/RectF;

    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    move v5, v15

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    invoke-interface/range {v14 .. v19}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateCapsuleWindowTranslationX(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v14, 0x3f800000  # 1.0f

    const/4 v15, 0x0

    sget-object v16, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v2, p2

    move/from16 v24, v5

    move v5, v14

    move v14, v6

    move v6, v15

    move v15, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    invoke-static {v2, v3, v15}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    iget v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$winRadius:F

    float-to-double v3, v3

    float-to-double v5, v14

    move v7, v11

    move v15, v12

    const-wide/high16 v11, 0x3ff8000000000000L  # 1.5

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v11, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$progressWindowRadius:F

    iget v12, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$winRadius:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    mul-double/2addr v5, v11

    add-double/2addr v5, v3

    double-to-float v3, v5

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleScale:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$orientationHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$cropRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$delta:F

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v20

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v21

    const-wide/high16 v22, 0x4010000000000000L  # 4.0

    move-object/from16 v17, v4

    move/from16 v18, v14

    move/from16 v19, v5

    invoke-interface/range {v16 .. v23}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateCapsuleWindowCrop(Landroid/graphics/Rect;FFFFD)V

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$matrix:Landroid/graphics/Matrix;

    move/from16 v5, v24

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$matrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$transPoint:Landroid/graphics/PointF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v11, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleCropSize:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$orientationHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v11, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21c

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto :goto_222

    :cond_21c
    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    :goto_222
    int-to-float v6, v6

    mul-float/2addr v6, v5

    iput v6, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleRadius:Lkotlin/jvm/internal/Ref$FloatRef;

    mul-float/2addr v5, v3

    iput v5, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    goto :goto_25b

    :cond_22c
    move v7, v11

    move v15, v12

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    iget-object v4, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_241

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$matrix:Landroid/graphics/Matrix;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_24e

    :cond_241
    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$matrix:Landroid/graphics/Matrix;

    iget-object v5, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_24e
    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$cropRect:Landroid/graphics/Rect;

    iget-object v5, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$cropRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_25b
    iget-object v4, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_27e

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_27e

    iget-object v4, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v4}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_27e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v4

    if-eqz v4, :cond_2b4

    const-string v4, "createWindowAnimationToCapsule, progress: "

    const-string v5, ", windowAlpha: "

    const-string v6, ", cornerRadius: "

    invoke-static {v4, v8, v5, v2, v6}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", transPoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$transPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCropRect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentRect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b4
    add-int/lit8 v12, v15, 0x1

    move v11, v7

    goto/16 :goto_38

    :cond_2b9
    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$currentCapsuleRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleLeash:Landroid/view/SurfaceControl;

    iget-object v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleCropSize:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v3, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleScale:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleRadius:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleMatrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$currentCapsuleRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleCropRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$capsuleAlpha:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v11, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr v2, v11

    float-to-int v2, v2

    iget v12, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr v12, v11

    iput v12, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v3, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v6, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v10, v1}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    iget v2, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    iget v2, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    iget-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v1, v10}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    iget-object v0, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMCurrentShift$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$updateSysUiFlags(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    return-void

    :cond_324
    :goto_324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate: invalid currentRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    invoke-static {v2, v9, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToCapsule$5;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->end()V

    return-void
.end method
