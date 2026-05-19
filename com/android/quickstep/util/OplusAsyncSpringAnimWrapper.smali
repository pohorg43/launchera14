.class public final Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;
.super Lcom/android/launcher3/anim/AsyncAnimWrapper;
.source ""


# instance fields
.field private final springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

.field private final viewSupportAnimThread:Z


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/animation/SpringAnimation;Z)V
    .registers 4

    const-string/jumbo v0, "springAnim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    iput-boolean p2, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->viewSupportAnimThread:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/animation/SpringAnimation;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;-><init>(Lcom/android/quickstep/util/animation/SpringAnimation;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->animateToFinalPosition$lambda$3(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;F)V

    return-void
.end method

.method private static final animateToFinalPosition$lambda$3(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;F)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->setStartVelocity$lambda$4(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;F)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->cancel$lambda$2(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V

    return-void
.end method

.method private static final cancel$lambda$2(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->start$lambda$0(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->skipToEnd$lambda$1(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V

    return-void
.end method

.method private static final setStartVelocity$lambda$4(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;F)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    return-void
.end method

.method private static final skipToEnd$lambda$1(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->skipToEnd()V

    return-void
.end method

.method private static final start$lambda$0(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->start()V

    return-void
.end method


# virtual methods
.method public final addOnUpdateListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/quickstep/util/animation/SpringAnimation;
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addUpdateListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/animation/SpringAnimation;

    return-object p0
.end method

.method public final animateToFinalPosition(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->viewSupportAnimThread:Z

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/quickstep/util/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/quickstep/util/f;-><init>(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;FI)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnAnimThread(Ljava/lang/Runnable;)V

    goto :goto_13

    :cond_e
    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_13
    return-void
.end method

.method public final canSkipToEnd()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p0

    return p0
.end method

.method public final cancel()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->viewSupportAnimThread:Z

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/quickstep/util/v;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/v;-><init>(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnAnimThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_d
    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    :goto_12
    return-void
.end method

.method public final commitAnimationValue()V
    .registers 5

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getLastFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitAnimationValue, nextFrameTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusAsyncSpringAnimWrapper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0, v2, v3}, Lcom/android/quickstep/util/animation/DynamicAnimation;->commitAnimationFrame(J)V

    return-void
.end method

.method public final getSpring()Lcom/android/quickstep/util/animation/SpringForce;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object p0

    const-string/jumbo v0, "springAnim.spring"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    return p0
.end method

.method public final setStartVelocity(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->viewSupportAnimThread:Z

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/quickstep/util/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/quickstep/util/f;-><init>(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;FI)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnAnimThread(Ljava/lang/Runnable;)V

    goto :goto_13

    :cond_e
    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    :goto_13
    return-void
.end method

.method public final skipToEnd()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->viewSupportAnimThread:Z

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnAnimThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_d
    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->skipToEnd()V

    :goto_12
    return-void
.end method

.method public final start()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->viewSupportAnimThread:Z

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/launcher3/model/b1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnAnimThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_d
    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->springAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->start()V

    :goto_12
    return-void
.end method
