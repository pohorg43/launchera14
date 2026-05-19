.class public final Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;
.super Lcom/android/launcher3/anim/AsyncAnimWrapper;
.source ""


# instance fields
.field private final swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

.field private final viewSupportAnimThread:Z


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;Z)V
    .registers 4

    const-string/jumbo v0, "swipeUpSpringAnim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    iput-boolean p2, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->viewSupportAnimThread:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;-><init>(Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->end$lambda$1(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;FF)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->updatePosition$lambda$3(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;FF)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->cancel$lambda$2(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V

    return-void
.end method

.method private static final cancel$lambda$2(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->cancel()V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->start$lambda$0(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V

    return-void
.end method

.method private static final end$lambda$1(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->end()V

    return-void
.end method

.method private static final start$lambda$0(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->start()V

    return-void
.end method

.method private static final updatePosition$lambda$3(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;FF)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->updatePosition(FF)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->viewSupportAnimThread:Z

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/launcher3/model/c1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnAnimThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_d
    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->cancel()V

    :goto_12
    return-void
.end method

.method public final end()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->viewSupportAnimThread:Z

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/quickstep/util/s;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/s;-><init>(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnAnimThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_d
    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->end()V

    :goto_12
    return-void
.end method

.method public final getTargetPosition()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->getTargetPosition()F

    move-result p0

    return p0
.end method

.method public final start()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->viewSupportAnimThread:Z

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/quickstep/c1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnAnimThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_d
    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->start()V

    :goto_12
    return-void
.end method

.method public final updatePosition(FF)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->viewSupportAnimThread:Z

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/launcher3/y2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/y2;-><init>(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;FF)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnAnimThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_d
    iget-object p0, p0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->swipeUpSpringAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->updatePosition(FF)V

    :goto_12
    return-void
.end method
