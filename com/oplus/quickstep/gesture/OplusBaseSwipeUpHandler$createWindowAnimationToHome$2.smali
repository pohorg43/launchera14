.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $alreadyGetIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

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

.field public final synthetic $canStartForegroundAnim:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $closeWindowRect:Landroid/graphics/RectF;

.field public final synthetic $cropHeight:Z

.field public final synthetic $cropProgressMap:Landroid/graphics/PointF;

.field public final synthetic $cropProgressStart:F

.field public final synthetic $cropRect:Landroid/graphics/Rect;

.field public final synthetic $currentWindowRect:Landroid/graphics/RectF;

.field public final synthetic $displayWindowRect:Landroid/graphics/RectF;

.field public final synthetic $getIconImmediately:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $getIconImmediatelyAsync:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $hasRestoreClosingTaskLeash:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic $homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final synthetic $homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

.field public final synthetic $homeToWindowPositionMap:Landroid/graphics/Matrix;

.field public final synthetic $iconInfo:[Ljava/lang/Float;

.field public final synthetic $iconRect:Landroid/graphics/RectF;

.field public final synthetic $iconTransPointF:Landroid/graphics/PointF;

.field public final synthetic $interpolator:Landroid/view/animation/DecelerateInterpolator;

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $progressStartWindowRadius:F

.field public final synthetic $progressWindowRadius:F

.field public final synthetic $radiusProgressMap:Landroid/graphics/PointF;

.field public final synthetic $realRadiusProgressStart:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $recentToHomeAnimWindowParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

.field public final synthetic $reverseInterpolator:Landroid/view/animation/DecelerateInterpolator;

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

.field public final synthetic $shouldGetIconImmediatelyAsync:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $startRect:Landroid/graphics/RectF;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $transPoint:Landroid/graphics/PointF;

.field public final synthetic $transactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

.field public final synthetic $transformParams:Lcom/android/quickstep/util/TransformParams;

.field public final synthetic $winRadius:F

.field public final synthetic $windowAlphaThreshold:F

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/oplus/quickstep/utils/CreateTransactionHelper;Ljava/util/concurrent/atomic/AtomicBoolean;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/Matrix;Landroid/graphics/RectF;Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/graphics/RectF;Landroid/graphics/Matrix;ZFLkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/RectF;ILandroid/graphics/PointF;Lcom/android/quickstep/util/OplusRectFSpringAnim;FLandroid/view/animation/DecelerateInterpolator;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/PointF;Landroid/graphics/PointF;FFLandroid/view/animation/DecelerateInterpolator;FLandroid/graphics/Rect;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/RectF;[Ljava/lang/Float;Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/function/Supplier;Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;Lcom/android/quickstep/util/TransformParams;)V
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;",
            "Lcom/oplus/quickstep/utils/CreateTransactionHelper;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/RectF;",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/Matrix;",
            "ZF",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Ljava/lang/Float;",
            ">;>;",
            "Landroid/graphics/RectF;",
            "I",
            "Landroid/graphics/PointF;",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            "F",
            "Landroid/view/animation/DecelerateInterpolator;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "FF",
            "Landroid/view/animation/DecelerateInterpolator;",
            "F",
            "Landroid/graphics/Rect;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroid/graphics/RectF;",
            "[",
            "Ljava/lang/Float;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/PointF;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;",
            "Lcom/android/quickstep/util/TransformParams;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-object v1, p2

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$transactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    move-object v1, p3

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$hasRestoreClosingTaskLeash:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, p4

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p5

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-object v1, p6

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeToWindowPositionMap:Landroid/graphics/Matrix;

    move-object v1, p7

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$currentWindowRect:Landroid/graphics/RectF;

    move-object v1, p8

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-object v1, p9

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$startRect:Landroid/graphics/RectF;

    move-object v1, p10

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$matrix:Landroid/graphics/Matrix;

    move v1, p11

    iput-boolean v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropHeight:Z

    move v1, p12

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$windowAlphaThreshold:F

    move-object v1, p13

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$closeWindowRect:Landroid/graphics/RectF;

    move/from16 v1, p15

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$rotation:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$transPoint:Landroid/graphics/PointF;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    move/from16 v1, p18

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropProgressStart:F

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$interpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$realRadiusProgressStart:Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropProgressMap:Landroid/graphics/PointF;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$radiusProgressMap:Landroid/graphics/PointF;

    move/from16 v1, p23

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$progressStartWindowRadius:F

    move/from16 v1, p24

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$progressWindowRadius:F

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$reverseInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move/from16 v1, p26

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$winRadius:F

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropRect:Landroid/graphics/Rect;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$alreadyGetIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$getIconImmediately:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconRect:Landroid/graphics/RectF;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconInfo:[Ljava/lang/Float;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$displayWindowRect:Landroid/graphics/RectF;

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconTransPointF:Landroid/graphics/PointF;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$canStartForegroundAnim:Ljava/util/function/Supplier;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$shouldGetIconImmediatelyAsync:Ljava/util/function/Supplier;

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$getIconImmediatelyAsync:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$shouldGetIconImmediately:Ljava/util/function/Supplier;

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$recentToHomeAnimWindowParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransaction;FLandroid/graphics/Rect;Landroid/graphics/Matrix;F)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->onUpdate$lambda$6$lambda$5(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransaction;FLandroid/graphics/Rect;Landroid/graphics/Matrix;F)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->onUpdate$lambda$0(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->onUpdate$lambda$8(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    return-void
.end method

.method private static final onUpdate$lambda$0(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 2

    const-string v0, "$anim"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->end()V

    return-void
.end method

.method private static final onUpdate$lambda$6$lambda$5(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransaction;FLandroid/graphics/Rect;Landroid/graphics/Matrix;F)V
    .registers 7

    const-string v0, "$target"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cropRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$matrix"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isHomeGestureLightAnimation()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lcom/android/launcher/UiConfig;->isTabletLightAnimation()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_4f

    :cond_42
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_4f
    :goto_4f
    return-void
.end method

.method private static final onUpdate$lambda$8(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 4

    const-string v0, "$anim"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCanceled()Z

    move-result p0

    if-nez p0, :cond_22

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMLaunched$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z

    move-result p0

    if-eqz p0, :cond_1f

    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-static {p1, p2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$updateSysUiFlags(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public interruptInRecentReverse()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->interruptFromRecent()V

    return-void
.end method

.method public onCancel()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onCancel(I)V

    return-void
.end method

.method public onCancel(Z)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->computeNextFrameAnimValue()V

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->onCancel()V

    return-void
.end method

.method public onUpdate(Landroid/graphics/RectF;F)V
    .registers 39

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    const-string v0, "currentRect"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isViewSupportAsync()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getIsDisappear()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->endIconSurface()V

    :cond_20
    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$transactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->createSurfaceTransaction()Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object v13

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isViewSupportAsync()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_42

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$hasRestoreClosingTaskLeash:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v4, "targets"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v3, v0, v3}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->restoreTaskLayer(Lcom/android/quickstep/util/SurfaceTransaction;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    :cond_42
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const-string v12, "OplusBaseSwipeUpHandler"

    if-nez v0, :cond_5d6

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0, v14}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$isInvalidRectF(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto/16 :goto_5d6

    :cond_54
    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0, v15}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$tryExecuteInterruptOpts(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeToWindowPositionMap:Landroid/graphics/Matrix;

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$currentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v11, v0

    move v10, v2

    :goto_69
    if-ge v10, v11, :cond_58a

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v0, v0, v10

    const-string v4, "targets[i]"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_519

    invoke-static {}, Lcom/android/launcher/UiConfig;->isTabletLightAnimation()Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$startRect:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMTargetScaleRect$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_8f

    const-string v4, "mTargetScaleRect"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_8f
    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMScreenRect$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_9d

    const-string v5, "mScreenRect"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_9d
    iget-object v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$matrix:Landroid/graphics/Matrix;

    iget-boolean v8, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropHeight:Z

    const/high16 v9, 0x3f800000  # 1.0f

    move/from16 v6, p2

    invoke-static/range {v2 .. v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$blueyDeviceAnimation(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Matrix;Z)V

    const/4 v3, 0x0

    iget v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$windowAlphaThreshold:F

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    invoke-static {v2, v3, v9}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v35, v12

    move-object/from16 v16, v13

    goto/16 :goto_4f7

    :cond_c6
    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isHomeGestureLightAnimation()Z

    move-result v2

    if-nez v2, :cond_4a6

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$currentWindowRect:Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$closeWindowRect:Landroid/graphics/RectF;

    iget v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$rotation:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateScale(Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v9

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$startRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$startRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    int-to-float v8, v3

    sub-float v3, v8, v15

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$transPoint:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$currentWindowRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$closeWindowRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v6

    iget-object v6, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    move/from16 v16, v7

    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, v6, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v2, :cond_1cf

    sget-object v2, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMContext$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/quickstep/util/SplitScreenBounds;->isLauncherOnFirstScreen(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_1cf

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v2, :cond_1cf

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const-string v3, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    if-eqz v2, :cond_195

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDeviceState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_195

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$transPoint:Landroid/graphics/PointF;

    iget v4, v14, Landroid/graphics/RectF;->left:F

    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v6}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v6}, Lcom/android/launcher3/OplusDeviceProfile;->getSystemWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v5

    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v3, v5

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    goto :goto_1cf

    :cond_195
    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$transPoint:Landroid/graphics/PointF;

    iget v4, v14, Landroid/graphics/RectF;->top:F

    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v6}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v6}, Lcom/android/launcher3/OplusDeviceProfile;->getSystemWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v5

    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v3, v5

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    :cond_1cf
    :goto_1cf
    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getIsDisappear()Z

    move-result v2

    if-eqz v2, :cond_1da

    const/4 v2, 0x0

    :goto_1d8
    move v7, v2

    goto :goto_202

    :cond_1da
    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isIconClamp()Z

    move-result v2

    if-eqz v2, :cond_1f5

    sget-object v2, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->canUseWorkspaceItemView()Z

    move-result v3

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v4}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isWidget()Z

    move-result v4

    invoke-virtual {v2, v15, v3, v4}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWindowAlpha(FZZ)F

    move-result v2

    goto :goto_1d8

    :cond_1f5
    sget-object v2, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->canUseWorkspaceItemView()Z

    move-result v3

    invoke-virtual {v2, v15, v3}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCustomWindowAlpha(FZ)F

    move-result v2

    goto :goto_1d8

    :goto_202
    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {v2}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse()Z

    move-result v2

    if-nez v2, :cond_25a

    iget v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropProgressStart:F

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v15, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v17

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000  # 1.0f

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000  # 1.0f

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$interpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v22, v2

    invoke-static/range {v17 .. v22}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$realRadiusProgressStart:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/high16 v4, -0x40800000  # -1.0f

    cmpg-float v4, v3, v4

    if-nez v4, :cond_22e

    const/4 v4, 0x1

    goto :goto_22f

    :cond_22e
    const/4 v4, 0x0

    :goto_22f
    if-nez v4, :cond_232

    goto :goto_234

    :cond_232
    iget v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropProgressStart:F

    :goto_234
    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v15, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropProgressMap:Landroid/graphics/PointF;

    iput v15, v4, Landroid/graphics/PointF;->x:F

    iput v2, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$radiusProgressMap:Landroid/graphics/PointF;

    iput v15, v4, Landroid/graphics/PointF;->x:F

    iput v3, v4, Landroid/graphics/PointF;->y:F

    sget-object v3, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    iget v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$progressStartWindowRadius:F

    iget v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$progressWindowRadius:F

    invoke-virtual {v3, v15, v4, v5}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCloseWindowCornerRadius(FFF)F

    move-result v3

    move/from16 v34, v3

    move/from16 v23, v10

    move-object/from16 v24, v12

    move/from16 v10, v16

    move v12, v7

    goto :goto_2bb

    :cond_25a
    const/4 v3, 0x0

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropProgressMap:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    const/16 v17, 0x0

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sget-object v18, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v2, p2

    move/from16 v5, v17

    move/from16 v23, v10

    move-object/from16 v24, v12

    move/from16 v10, v16

    move v12, v7

    move-object/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v16

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    const/16 v26, 0x0

    const/high16 v27, 0x3f800000  # 1.0f

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000  # 1.0f

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$reverseInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move/from16 v25, v16

    move-object/from16 v30, v3

    invoke-static/range {v25 .. v30}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setWindowCropProgress(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    const/4 v3, 0x0

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$radiusProgressMap:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    move/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    sget-object v3, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    iget v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$winRadius:F

    iget v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$progressWindowRadius:F

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCloseWindowCornerRadius(FFF)F

    move-result v2

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v3, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setToHomeReverseAnimateRadius$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    move/from16 v34, v2

    move/from16 v2, v16

    :goto_2bb
    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    mul-float/2addr v3, v9

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    invoke-static {v2, v4, v10}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$transPoint:Landroid/graphics/PointF;

    iget v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$rotation:I

    iget-object v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v7}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isViewSupportAsync()Z

    move-result v7

    invoke-interface {v4, v5, v3, v6, v7}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyOffset(Landroid/graphics/PointF;FIZ)V

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v5

    check-cast v25, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropRect:Landroid/graphics/Rect;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v6, "animHandler.second"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v28

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v29

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$closeWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v30

    iget v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$rotation:I

    const/16 v32, 0x0

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v6}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isViewSupportAsync()Z

    move-result v33

    move-object/from16 v26, v5

    move/from16 v27, v2

    move/from16 v31, v4

    invoke-interface/range {v25 .. v33}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateWindowCrop(Landroid/graphics/Rect;FFFFIZZ)V

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {v4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse()Z

    move-result v4

    if-eqz v4, :cond_337

    const/4 v4, 0x0

    goto :goto_33d

    :cond_337
    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v4, v12}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->calculateScrollX(F)I

    move-result v4

    :goto_33d
    iget-object v5, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$matrix:Landroid/graphics/Matrix;

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$transPoint:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    int-to-float v4, v4

    add-float/2addr v7, v4

    iget v4, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v7, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, v12

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_355

    const/high16 v4, 0x3f800000  # 1.0f

    goto :goto_356

    :cond_355
    const/4 v4, 0x0

    :goto_356
    move v5, v4

    const v4, 0x3f19999a  # 0.6f

    cmpl-float v4, v15, v4

    if-lez v4, :cond_36b

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$alreadyGetIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v6, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v6, :cond_36b

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$getIconImmediately:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput-boolean v7, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_36b
    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getMSwipeUpHandlerExt()Lcom/android/quickstep/ISwipeUpHandlerExt;

    move-result-object v16

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v6, "animHandler.first"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v4

    check-cast v17, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconRect:Landroid/graphics/RectF;

    iget-object v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropRect:Landroid/graphics/Rect;

    move/from16 v25, v11

    iget v11, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$rotation:I

    const/16 v22, 0x0

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v11

    invoke-interface/range {v16 .. v22}, Lcom/android/quickstep/ISwipeUpHandlerExt;->updateIconRectCrop(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconInfo:[Ljava/lang/Float;

    const/4 v11, 0x0

    aget-object v7, v7, v11

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    div-float/2addr v4, v7

    iget-object v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v26, v13

    iget-object v13, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconInfo:[Ljava/lang/Float;

    aget-object v13, v13, v11

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v7, v13

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v2, v8

    iget-object v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    mul-float/2addr v7, v9

    sub-float/2addr v7, v10

    const/4 v8, 0x0

    invoke-static {v2, v8, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget-object v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {v7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getMSwipeUpHandlerExt()Lcom/android/quickstep/ISwipeUpHandlerExt;

    move-result-object v7

    iget-object v8, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconRect:Landroid/graphics/RectF;

    iget v10, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$rotation:I

    invoke-interface {v7, v8, v6, v2, v10}, Lcom/android/quickstep/ISwipeUpHandlerExt;->applyIconRectOffset(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FI)V

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isViewSupportAsync()Z

    move-result v2

    if-eqz v2, :cond_475

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconTransPointF:Landroid/graphics/PointF;

    iget v4, v14, Landroid/graphics/RectF;->left:F

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$displayWindowRect:Landroid/graphics/RectF;

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$closeWindowRect:Landroid/graphics/RectF;

    iget v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$rotation:I

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move/from16 v20, v9

    move/from16 v21, v3

    move/from16 v22, v7

    invoke-interface/range {v16 .. v22}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconSurfaceOffset(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;FFI)V

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$displayWindowRect:Landroid/graphics/RectF;

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconTransPointF:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v2, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$animHandler:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropRect:Landroid/graphics/Rect;

    iget v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$rotation:I

    invoke-interface {v3, v2, v4, v9, v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconSurfaceRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FI)V

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$displayWindowRect:Landroid/graphics/RectF;

    iget-object v10, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$canStartForegroundAnim:Ljava/util/function/Supplier;

    iget-object v13, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$shouldGetIconImmediatelyAsync:Ljava/util/function/Supplier;

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v3, p1

    move/from16 v6, p2

    move v7, v12

    move/from16 v8, v34

    move/from16 v18, v23

    move v15, v11

    move/from16 v19, v25

    move-object v11, v13

    move/from16 v20, v12

    move-object/from16 v13, v24

    move/from16 v12, v16

    move-object/from16 v35, v13

    move-object/from16 v16, v26

    move-object/from16 v13, v16

    invoke-virtual/range {v2 .. v13}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->updateAsync(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLjava/util/function/Supplier;Ljava/util/function/Supplier;ZLcom/android/quickstep/util/SurfaceTransaction;)V

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$getIconImmediatelyAsync:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v15, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move/from16 v5, v17

    goto :goto_49c

    :cond_475
    move v15, v11

    move/from16 v20, v12

    move/from16 v18, v23

    move-object/from16 v35, v24

    move/from16 v19, v25

    move-object/from16 v16, v26

    const/4 v11, 0x1

    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconRect:Landroid/graphics/RectF;

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$iconInfo:[Ljava/lang/Float;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v7, v3, v4

    iget-object v8, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$canStartForegroundAnim:Ljava/util/function/Supplier;

    iget-object v9, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$shouldGetIconImmediately:Ljava/util/function/Supplier;

    const/4 v10, 0x1

    move v3, v5

    move-object v5, v6

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->update(FFLandroid/graphics/RectF;FFLjava/util/function/Supplier;Ljava/util/function/Supplier;Z)V

    move v5, v11

    :goto_49c
    iget-object v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$getIconImmediately:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v15, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move v4, v15

    move/from16 v2, v20

    move/from16 v3, v34

    goto :goto_4f7

    :cond_4a6
    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v35, v12

    move-object/from16 v16, v13

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f000000  # 0.5f

    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v2, p2

    move-object v7, v10

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    const/high16 v3, 0x3f000000  # 0.5f

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$matrix:Landroid/graphics/Matrix;

    iget-object v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v6}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v3, v2, v2, v4, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    const/4 v3, 0x0

    iget v4, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$windowAlphaThreshold:F

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    move/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    move v3, v4

    move v4, v8

    move v5, v9

    :goto_4f7
    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {v6}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse()Z

    move-result v6

    if-eqz v6, :cond_514

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$recentToHomeAnimWindowParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    iget-object v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getAnimRectF()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v6, v3}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->setWindowCorner(F)V

    :cond_514
    move v8, v3

    move v9, v4

    move v10, v5

    move v5, v2

    goto :goto_550

    :cond_519
    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v35, v12

    move-object/from16 v16, v13

    const/high16 v4, 0x3f800000  # 1.0f

    iget-object v6, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_533

    iget-object v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$matrix:Landroid/graphics/Matrix;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_540

    :cond_533
    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$matrix:Landroid/graphics/Matrix;

    iget-object v7, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_540
    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    move v9, v2

    move v10, v3

    move v8, v5

    move v5, v4

    :goto_550
    iget-object v6, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$cropRect:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$matrix:Landroid/graphics/Matrix;

    :try_start_554
    new-instance v11, Lcom/oplus/quickstep/gesture/u;

    move-object v2, v11

    move-object v3, v0

    move-object/from16 v4, v16

    invoke-direct/range {v2 .. v8}, Lcom/oplus/quickstep/gesture/u;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransaction;FLandroid/graphics/Rect;Landroid/graphics/Matrix;F)V

    invoke-virtual {v0, v11}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->updateSurfaceAsync(Ljava/lang/Runnable;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_562
    .catchall {:try_start_554 .. :try_end_562} :catchall_563

    goto :goto_568

    :catchall_563
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_568
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_57a

    const-string v2, "trySetSwipeUpWindowSurface error, surface may be already released, no need to do anything: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v35

    invoke-static {v0, v2, v3}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_57c

    :cond_57a
    move-object/from16 v3, v35

    :goto_57c
    add-int/lit8 v0, v18, 0x1

    move/from16 v15, p2

    move-object v12, v3

    move v2, v9

    move v3, v10

    move-object/from16 v13, v16

    move/from16 v11, v19

    move v10, v0

    goto/16 :goto_69

    :cond_58a
    move-object/from16 v16, v13

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isViewSupportAsync()Z

    move-result v0

    if-nez v0, :cond_59c

    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    goto :goto_5a8

    :cond_59c
    move-object/from16 v2, v16

    invoke-virtual {v2}, Lcom/android/quickstep/util/SurfaceTransaction;->setVsyncId()V

    invoke-virtual {v2}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_5a8
    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_5b9

    move/from16 v0, p2

    goto :goto_5c7

    :cond_5b9
    iget-object v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMCurrentShift$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    move/from16 v2, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_5c7
    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iget-object v1, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    new-instance v4, Lcom/android/launcher/download/e;

    invoke-direct {v4, v3, v1, v0}, Lcom/android/launcher/download/e;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5d6
    :goto_5d6
    move-object v3, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: invalid currentRect = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickStep"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    new-instance v2, Lcom/android/wm/shell/common/c;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/common/c;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
