.class public final Lcom/android/quickstep/OplusRotationTouchHelperImpl;
.super Lcom/android/quickstep/RotationTouchHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusRotationTouchHelperImpl$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusRotationTouchHelperImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusRotationTouchHelperImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final disableMultipleRegions:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusRotationTouchHelperImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusRotationTouchHelperImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->Companion:Lcom/android/quickstep/OplusRotationTouchHelperImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher3/folder/t;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/quickstep/OplusRotationTouchHelperImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->disableMultipleRegions:Ljava/lang/Runnable;

    return-void
.end method

.method private final delayDisableMultipleRegions()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->disableMultipleRegions:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->disableMultipleRegions:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_17
    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->disableMultipleRegions:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final disableMultipleRegions$lambda$0(Lcom/android/quickstep/OplusRotationTouchHelperImpl;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusRotationTouchHelperImpl"

    const-string/jumbo v2, "reset touch regions while time out"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->enableMultipleRegions(ZZ)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/OplusRotationTouchHelperImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->disableMultipleRegions$lambda$0(Lcom/android/quickstep/OplusRotationTouchHelperImpl;)V

    return-void
.end method


# virtual methods
.method public enableMultipleRegions(ZZ)V
    .registers 5

    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->supportFastGesture()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    instance-of v0, v0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    if-nez v0, :cond_d

    goto :goto_52

    :cond_d
    if-eqz p2, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;->enableMultipleRegions(Z)V

    return-void

    :cond_13
    const-string p2, "enableMultipleRegions: enable="

    const-string v0, "QuickStep"

    const-string v1, "OplusRotationTouchHelperImpl"

    invoke-static {p2, p1, v0, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.quickstep.OplusOrientationTouchTransformerImpl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    const-string v1, "mDisplayController.info"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->enableMultipleRegions(ZLcom/android/launcher3/util/DisplayController$Info;Z)V

    if-eqz p1, :cond_3b

    invoke-direct {p0}, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->delayDisableMultipleRegions()V

    goto :goto_52

    :cond_3b
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->disableMultipleRegions:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_52

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->disableMultipleRegions:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public final getTransformer()Lcom/android/quickstep/OrientationTouchTransformer;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    return-object p0
.end method

.method public setGesturalHeight(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/quickstep/OrientationTouchTransformer;->setGesturalHeight(ILcom/android/launcher3/util/DisplayController$Info;Landroid/content/res/Resources;)V

    return-void
.end method

.method public setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V
    .registers 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_29

    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v1, v0}, Ly4/h;->a(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Ly4/h;->a(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_29
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    instance-of v1, v0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    if-eqz v1, :cond_32

    check-cast v0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->checkSwipeRegions(Landroid/view/MotionEvent;)V

    :cond_38
    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->transform(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public updateMultipleRegionsStackChange()Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    iget-object v0, v0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1f

    :cond_14
    const-string p0, "QuickStep"

    const-string v0, "RotationTouchHelper"

    const-string/jumbo v2, "onRecentTaskListFrozenChanged: gesture started"

    invoke-static {p0, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method
