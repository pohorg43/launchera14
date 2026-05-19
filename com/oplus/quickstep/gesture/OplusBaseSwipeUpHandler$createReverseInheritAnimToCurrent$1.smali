.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/anim/SwipeSpringAnimation$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createReverseInheritAnimToCurrent(Landroid/graphics/RectF;)Lcom/oplus/quickstep/anim/SwipeSpringAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $anim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

.field public final synthetic $cropRect:Landroid/graphics/Rect;

.field public final synthetic $currentCornerRadius:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $currentCropRect:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $currentWindowRect:Landroid/graphics/RectF;

.field public final synthetic $homeToCurrentPositionMap:Landroid/graphics/Matrix;

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $originalTargetBounds:Landroid/graphics/RectF;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $transactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

.field public final synthetic $transformParams:Lcom/android/quickstep/util/TransformParams;

.field public final synthetic $windowRadius:F

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/Matrix;Landroid/graphics/RectF;Lcom/oplus/quickstep/utils/CreateTransactionHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLandroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/oplus/quickstep/anim/SwipeSpringAnimation;",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/RectF;",
            "Lcom/oplus/quickstep/utils/CreateTransactionHelper;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "F",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/Matrix;",
            "Lcom/android/quickstep/util/TransformParams;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCornerRadius:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCropRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$anim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    iput-object p5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$homeToCurrentPositionMap:Landroid/graphics/Matrix;

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentWindowRect:Landroid/graphics/RectF;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$transactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput p9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$windowRadius:F

    iput-object p10, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$cropRect:Landroid/graphics/Rect;

    iput-object p11, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$originalTargetBounds:Landroid/graphics/RectF;

    iput-object p12, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$matrix:Landroid/graphics/Matrix;

    iput-object p13, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;FLandroid/graphics/Rect;Landroid/graphics/Matrix;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->onAnimationUpdate$lambda$3$lambda$2(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;FLandroid/graphics/Rect;Landroid/graphics/Matrix;Lkotlin/jvm/internal/Ref$FloatRef;)V

    return-void
.end method

.method private static final onAnimationUpdate$lambda$3$lambda$2(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;FLandroid/graphics/Rect;Landroid/graphics/Matrix;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .registers 6

    const-string v0, "$cropRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$matrix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cornerRadius"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    iget p1, p4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getCurrentAnimateRectF$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_SPRING_TO_CURRENT:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart()V
    .registers 7

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_SPRING_TO_CURRENT:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_14

    :cond_13
    move-object v0, v2

    :goto_14
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getReverseToFullscreenAnim()Lcom/android/quickstep/util/OplusRectFSpringAnim;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCornerRadius:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCropRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$anim:Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reallyCancel()V

    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    instance-of v5, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v5, :cond_32

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_33

    :cond_32
    move-object v0, v2

    :goto_33
    if-nez v0, :cond_36

    goto :goto_39

    :cond_36
    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setReverseToFullscreenAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    :goto_39
    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMReverseInheritAnimParam$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getWindowCorner()F

    move-result v1

    iput v1, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_5a
    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getAnimRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->getAnimRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->updateStartRect(Landroid/graphics/RectF;)V

    :cond_6b
    return-void
.end method

.method public onAnimationUpdate(FLandroid/graphics/RectF;)V
    .registers 16

    const-string v0, "currentRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$homeToCurrentPositionMap:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$transactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->createSurfaceTransaction()Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_15d

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v7

    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v6, 0x1

    if-ne v6, v5, :cond_105

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCornerRadius:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v5, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$windowRadius:F

    invoke-static {p1, v5, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    iput v5, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_89

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$cropRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCropRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$originalTargetBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    invoke-static {p1, v6, v8}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    float-to-int v6, v6

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCropRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$originalTargetBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-static {p1, v8, v9}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCropRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$originalTargetBounds:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    invoke-static {p1, v9, v10}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCropRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v12, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$originalTargetBounds:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, v10, v12}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_bc

    :cond_89
    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$cropRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCropRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$originalTargetBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-static {p1, v6, v9}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    float-to-int v6, v6

    iget-object v9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentCropRect:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v10, v9

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v12, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$originalTargetBounds:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, v9, v12}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5, v8, v6, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_bc
    const/high16 v5, 0x3f800000  # 1.0f

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$originalTargetBounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v6, v8

    invoke-static {v5, v6}, Ly4/h;->b(FF)F

    move-result v5

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$currentWindowRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget-object v9, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    sub-float/2addr v8, v10

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getCurrentAnimateRectF$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMReverseInheritAnimCrop$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v6, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v5, v6}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setToCurrentAnimateRadius$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    goto :goto_131

    :cond_105
    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_115

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$matrix:Landroid/graphics/Matrix;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v6, v8, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_122

    :cond_115
    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v6, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_122
    const/4 v5, 0x0

    iput v5, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$cropRect:Landroid/graphics/Rect;

    iget-object v6, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_131
    const/high16 v8, 0x3f800000  # 1.0f

    iget-object v9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$cropRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$matrix:Landroid/graphics/Matrix;

    :try_start_137
    new-instance v5, Lcom/oplus/quickstep/gesture/s;

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/oplus/quickstep/gesture/s;-><init>(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;FLandroid/graphics/Rect;Landroid/graphics/Matrix;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->updateSurfaceAsync(Ljava/lang/Runnable;)V

    sget-object v4, Lh4/z;->a:Lh4/z;
    :try_end_142
    .catchall {:try_start_137 .. :try_end_142} :catchall_143

    goto :goto_148

    :catchall_143
    move-exception v4

    invoke-static {v4}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    :goto_148
    invoke-static {v4}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_159

    const-string v5, "createReverseInheritAnimToCurrent onAnimationUpdate error, surface may be already released, no need to do anything: "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OplusBaseSwipeUpHandler"

    invoke-static {v4, v5, v6}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_159
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17

    :cond_15d
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createReverseInheritAnimToCurrent$1;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
