.class public final Lcom/android/quickstep/touch/TaskWindowSpringScrollController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;,
        Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;,
        Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskWindowSpringScrollController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskWindowSpringScrollController.kt\ncom/android/quickstep/touch/TaskWindowSpringScrollController\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,673:1\n13309#2,2:674\n1#3:676\n*S KotlinDebug\n*F\n+ 1 TaskWindowSpringScrollController.kt\ncom/android/quickstep/touch/TaskWindowSpringScrollController\n*L\n187#1:674,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

.field private static final DISABLE_MULTI_WINDOW_FLING_DOWN_SPRING:Z = false

.field public static final ENABLE_RETURN_HOME_IMMEDIATELY_WITHOUT_FOCUS:Z = true

.field public static final RV_OFFSET_X_SPRING_DAMPING:F = 0.9f

.field public static final RV_OFFSET_X_SPRING_MAX_DAMPING:F = 1.0f

.field public static final RV_OFFSET_X_SPRING_MAX_STIFFNESS:F = 3000.0f

.field public static final RV_OFFSET_X_SPRING_STIFFNESS:F = 800.0f

.field private static final RV_SCALE_SPRING_DAMPING:F = 0.8f

.field private static final RV_SCALE_SPRING_MAX_DAMPING:F = 1.0f

.field private static final RV_SCALE_SPRING_MAX_STIFFNESS:F = 10000.0f

.field private static final RV_SCALE_SPRING_STIFFNESS:F = 800.0f

.field public static final RV_SCROLL_OFFSET_SPRING_ANIMATE_FACTORS_THRESHOLD:F = 0.3f

.field private static final SCROLL_X_FLING_SPRING_DAMPING:F = 1.0f

.field private static final SCROLL_X_FLING_SPRING_STIFFNESS:F = 800.0f

.field private static final SCROLL_X_SPRING_DAMPING:F = 1.0f

.field private static final SCROLL_X_SPRING_STIFFNESS:F = 4000.0f

.field private static final SCROLL_Y_SPRING_DAMPING:F = 1.0f

.field private static final SCROLL_Y_SPRING_STIFFNESS:F = 1000.0f

.field private static final STATE_INTERRUPT_GOING_TO_CURRENT:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_SWIPE_DOWN_FLING_INTERRUPT:I = 0x1

.field private static final SWIPE_DOWN_FLING_SPRING_DAMPING:F = 0.85f

.field private static final SWIPE_DOWN_FLING_SPRING_STIFFNESS:F = 150.0f

.field private static final TAG:Ljava/lang/String; = "TaskWindowSpringScroller"

.field private static final TASK_VIEW_SIMULATOR_SECONDARY_SCALE_MAX:F = 3.0f

.field private static currentInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/touch/TaskWindowSpringScrollController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSwipeDownFlingAnimEndListener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

.field private final scrollXUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private final scrollXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final scrollYUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private final scrollYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

.field private springScrollerXVelocity:F

.field private state:I

.field private swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;"
        }
    .end annotation
.end field

.field private final taskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/TaskAnimationManager;)V
    .registers 9

    const-string/jumbo v0, "taskAnimationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->taskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v0, Lp0/d;

    invoke-direct {v0, p0}, Lp0/d;-><init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;)V

    iput-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollXUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v2, Lp0/e;

    invoke-direct {v2, p0}, Lp0/e;-><init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;)V

    iput-object v2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollYUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->currentInstance:Ljava/lang/ref/WeakReference;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {p1, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v6, 0x457a0000  # 4000.0f

    invoke-virtual {p1, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v3, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p1, v1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x447a0000  # 1000.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v0, 0x3b03126f  # 0.002f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-direct {v0, p0, v3, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;-><init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iput-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->handleUpdateDisplacementWithShift$lambda$21(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;F)V

    return-void
.end method

.method public static final synthetic access$getCurrentInstance$cp()Ljava/lang/ref/WeakReference;
    .registers 1

    sget-object v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->currentInstance:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$getSpringScroller$p(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;)Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    return-object p0
.end method

.method public static final synthetic access$setCurrentSwipeDownFlingAnimEndListener$p(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->currentSwipeDownFlingAnimEndListener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

    return-void
.end method

.method public static final synthetic access$updateState(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->updateState(IZ)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollXUpdateListener$lambda$1(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollYUpdateListener$lambda$3(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static final getCreatedInstance()Lcom/android/quickstep/touch/TaskWindowSpringScrollController;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->getCreatedInstance()Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    move-result-object v0

    return-object v0
.end method

.method private static final handleUpdateDisplacementWithShift$lambda$21(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;F)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public static final isEnabled()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private final isInState(I)Z
    .registers 2

    iget p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->state:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private final onDetachFromPreviousHandler(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;)V"
        }
    .end annotation

    const-string v0, "Detaching previous handler.swipeDownFlingAnimRunning="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->currentSwipeDownFlingAnimEndListener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    const-string v3, "QuickStep"

    const-string v4, "TaskWindowSpringScroller"

    invoke-static {v0, v1, v3, v4}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->currentSwipeDownFlingAnimEndListener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getGestureState()Lcom/android/quickstep/GestureState;

    move-result-object p1

    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/GestureState;->clearStateIfNeed(I)V

    :cond_22
    invoke-virtual {p0, v2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->detach(Z)V

    return-void
.end method

.method private final onScrollXSpringUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;FF)V"
        }
    .end annotation

    sget-object p1, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isAttached()Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    :cond_10
    iput p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScrollerXVelocity:F

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p0

    if-eqz p0, :cond_40

    const/4 p1, 0x0

    array-length p3, p0

    :goto_1e
    if-ge p1, p3, :cond_40

    aget-object v0, p0, p1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1, p2}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_2b
    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-virtual {v2, p2}, Lcom/android/quickstep/util/OplusBaseTransformParams;->setCurrentScrollOffset(F)V

    :cond_34
    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    :cond_3d
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :cond_40
    return-void
.end method

.method private final onScrollYSpringUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;FF)V"
        }
    .end annotation

    sget-object p1, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isAttached()Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    :cond_10
    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getCurrentShift()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->currentSwipeDownFlingAnimEndListener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

    if-eqz p0, :cond_22

    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->computeRecentsScrollIfInvisible()V

    :cond_22
    return-void
.end method

.method private static final scrollXUpdateListener$lambda$1(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->onScrollXSpringUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method private static final scrollYUpdateListener$lambda$3(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->onScrollYSpringUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method private final updateState(IZ)V
    .registers 6

    if-eqz p2, :cond_8

    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isInState(I)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_8
    if-nez p2, :cond_11

    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isInState(I)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    return-void

    :cond_11
    if-eqz p2, :cond_17

    iget v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->state:I

    or-int/2addr v0, p1

    goto :goto_1b

    :cond_17
    iget v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->state:I

    not-int v1, p1

    and-int/2addr v0, v1

    :goto_1b
    iput v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->state:I

    const-string/jumbo v0, "updateState. cur="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->state:I

    const-string v1, ", newUpdate="

    const-string v2, ", enable="

    invoke-static {v0, p0, v1, p1, v2}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", caller="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "TaskWindowSpringScroller"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final animateToProgressInternal(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/GestureState$GestureEndTarget;FFLcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/PointF;ZLandroid/animation/Animator$AnimatorListener;)Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;",
            "Lcom/android/quickstep/GestureState$GestureEndTarget;",
            "FF",
            "Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;",
            "Lcom/oplus/quickstep/anim/SwipeSpringAnimation;",
            "Landroid/graphics/PointF;",
            "Z",
            "Landroid/animation/Animator$AnimatorListener;",
            ")",
            "Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;"
        }
    .end annotation

    const-string/jumbo v0, "swipeUpHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "velocityPxPerMs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    return-object v2

    :cond_1b
    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->access$isCompatibleRemoteTargetHandles(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Z

    move-result v0

    if-eqz v0, :cond_27

    move-object v0, p1

    goto :goto_28

    :cond_27
    move-object v0, v2

    :goto_28
    if-nez v0, :cond_2b

    return-object v2

    :cond_2b
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_3d

    invoke-virtual {p5}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p5

    if-eqz p5, :cond_3d

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p5

    if-ne p5, v0, :cond_3d

    move p5, v0

    goto :goto_3e

    :cond_3d
    move p5, v1

    :goto_3e
    if-nez p5, :cond_4f

    if-eqz p6, :cond_4a

    invoke-virtual {p6}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->isStarted()Z

    move-result p5

    if-ne p5, v0, :cond_4a

    move p5, v0

    goto :goto_4b

    :cond_4a
    move p5, v1

    :goto_4b
    if-nez p5, :cond_4f

    move p5, v0

    goto :goto_50

    :cond_4f
    move p5, v1

    :goto_50
    sget-object p6, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p2, p6, :cond_58

    if-eqz p8, :cond_58

    move p2, v0

    goto :goto_59

    :cond_58
    move p2, v1

    :goto_59
    const/4 p6, 0x0

    cmpg-float p8, p4, p6

    if-nez p8, :cond_60

    move p8, v0

    goto :goto_61

    :cond_60
    move p8, v1

    :goto_61
    if-eqz p8, :cond_6e

    cmpg-float p3, p3, p6

    if-nez p3, :cond_69

    move p3, v0

    goto :goto_6a

    :cond_69
    move p3, v1

    :goto_6a
    if-nez p3, :cond_6e

    move p3, v0

    goto :goto_6f

    :cond_6e
    move p3, v1

    :goto_6f
    if-eqz p2, :cond_aa

    if-eqz p3, :cond_aa

    if-eqz p5, :cond_aa

    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-interface {p9, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->updateState(IZ)V

    iget-object p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->currentSwipeDownFlingAnimEndListener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

    if-eqz p3, :cond_89

    iget-object p5, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p5, p3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->removeEndListener(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V

    :cond_89
    new-instance p3, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;

    invoke-direct {p3, p0, p9, p2, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$animateToProgressInternal$3;-><init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    iput-object p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->currentSwipeDownFlingAnimEndListener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->addEndListener(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iget p2, p7, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    return-object p0

    :cond_aa
    return-object v2
.end method

.method public final attach(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;",
            "Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;",
            "Lcom/oplus/quickstep/anim/SwipeSpringAnimation;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "swipeUpHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->onDetachFromPreviousHandler(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    :cond_1d
    iput-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->state:I

    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getSpring()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_36
    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getGestureState()Lcom/android/quickstep/GestureState;

    move-result-object v1

    sget v2, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/GestureState;->clearStateIfNeed(I)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getRecentViewScaleSpring()Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;

    move-result-object v1

    const v2, 0x3f4ccccd  # 0.8f

    const/high16 v3, 0x44480000  # 800.0f

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->updateSpringFactors(FF)V

    const v2, 0x461c4000  # 10000.0f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v3, v2}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->animateSpringFactorsTo(FF)Landroid/animation/Animator;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScrollerXVelocity:F

    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    if-eqz v2, :cond_6a

    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->isNonPendingApplyData()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/RecentsView;->getScrollOffsetWithoutAnimation(Z)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    iget-object v4, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v4, v2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->setPreviousXStartValue(Ljava/lang/Float;)V

    if-eqz v2, :cond_82

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v5}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v4

    check-cast v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_82
    iget-object v4, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v4}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v4, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v4}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v5, 0x457a0000  # 4000.0f

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v4, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v4}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    const v5, 0x3b03126f  # 0.002f

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v4, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v4}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v3, 0x447a0000  # 1000.0f

    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_cd

    invoke-virtual {p2}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p2, :cond_cd

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-ne p2, v4, :cond_cd

    move p2, v4

    goto :goto_ce

    :cond_cd
    move p2, v3

    :goto_ce
    if-nez p2, :cond_df

    if-eqz p3, :cond_da

    invoke-virtual {p3}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->isStarted()Z

    move-result p2

    if-ne p2, v4, :cond_da

    move p2, v4

    goto :goto_db

    :cond_da
    move p2, v3

    :goto_db
    if-nez p2, :cond_df

    move p2, v4

    goto :goto_e0

    :cond_df
    move p2, v3

    :goto_e0
    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getCurrentShift()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p3

    iget p3, p3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-direct {p0, v4}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isInState(I)Z

    move-result v5

    invoke-direct {p0, v4, v3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->updateState(IZ)V

    const/4 v6, 0x2

    invoke-direct {p0, v6, v3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->updateState(IZ)V

    if-eqz v5, :cond_103

    if-eqz p2, :cond_103

    iget-object v3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-direct {p0, v6, v4}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->updateState(IZ)V

    move v3, v1

    goto :goto_11a

    :cond_103
    iget-object v3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->cancel()V

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getCurrentShift()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v3

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v4, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v4}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v4, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_11a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attach to handler:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".startY="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",endY="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",starScrollOffset="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",startVelocity="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",scrollXSpringBalue="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",scrollYSpringValue="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",isInSwipeDownFlingInterrupt="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",noOtherInterruptingAnimation="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",curState="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->state:I

    const-string p1, ",previousState="

    invoke-static {v4, p0, p1, v0}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "TaskWindowSpringScroller"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final detach(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;Z)V"
        }
    .end annotation

    const-string/jumbo p2, "swipeUpHandler"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {p2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isAttached()Z

    move-result p2

    if-nez p2, :cond_16

    return-void

    :cond_16
    iget-object p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "TaskWindowSpringScroller"

    const-string v1, "QuickStep"

    if-nez p2, :cond_28

    const-string p0, "Not the same swipeUpHandler!"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->cancel()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detach from handler="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",scrollXVal="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",scrollYVal="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final detach(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->detach(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V

    :cond_7
    return-void
.end method

.method public final getFinalPositionOfScrollYSpring()F
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result p0

    return p0
.end method

.method public final getScrollY()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p0

    return p0
.end method

.method public final getSpringScrollerXVelocity()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScrollerXVelocity:F

    return p0
.end method

.method public final getTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->taskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    return-object p0
.end method

.method public final handleApplyScrollAndTransform(FZLcom/android/quickstep/GestureState;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)Z
    .registers 9

    const-string v0, "gestureState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isAttached()Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    const/4 v1, 0x1

    if-eqz p4, :cond_27

    invoke-virtual {p4}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p4

    if-eqz p4, :cond_27

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p4

    if-ne p4, v1, :cond_27

    move p4, v1

    goto :goto_28

    :cond_27
    move p4, v2

    :goto_28
    if-nez p4, :cond_39

    if-eqz p5, :cond_34

    invoke-virtual {p5}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->isStarted()Z

    move-result p4

    if-ne p4, v1, :cond_34

    move p4, v1

    goto :goto_35

    :cond_34
    move p4, v2

    :goto_35
    if-nez p4, :cond_39

    move p4, v1

    goto :goto_3a

    :cond_39
    move p4, v2

    :goto_3a
    if-eqz p2, :cond_48

    invoke-virtual {p3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->access$isSupportSpringScrollWith(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;Lcom/android/quickstep/GestureState$GestureEndTarget;)Z

    move-result p2

    if-eqz p2, :cond_48

    move p2, v1

    goto :goto_49

    :cond_48
    move p2, v2

    :goto_49
    if-eqz p2, :cond_96

    if-eqz p4, :cond_96

    iget-object p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getPreviousXStartValue()Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_8b

    iget-object p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getPreviousXStartValue()Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x3f800000  # 1.0f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_8b

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-nez p2, :cond_72

    move v2, v1

    :cond_72
    if-nez v2, :cond_8b

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->setPreviousXStartValue(Ljava/lang/Float;)V

    iget-object p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_8b
    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    move v2, v1

    goto :goto_a8

    :cond_96
    iget-object p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->setPreviousXStartValue(Ljava/lang/Float;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_a8
    return v2
.end method

.method public final handleNormalGestureEnd(ZLcom/android/quickstep/GestureState$GestureEndTarget;Z)V
    .registers 8

    const-string v0, "endTarget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    const-string v1, "handleNormalGestureEnd. cancel="

    const-string v2, ",scrollXSpring value="

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",scrollYSpring value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->scrollYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",endTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",isFling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "TaskWindowSpringScroller"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->access$isSupportSpringScrollWith(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;Lcom/android/quickstep/GestureState$GestureEndTarget;)Z

    move-result p2

    if-eqz p2, :cond_92

    if-eqz p3, :cond_92

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getGestureState()Lcom/android/quickstep/GestureState;

    move-result-object p1

    if-eqz p1, :cond_5f

    sget p2, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    invoke-virtual {p1, p2}, Lcom/android/quickstep/GestureState;->clearStateIfNeed(I)V

    :cond_5f
    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p3, 0x44480000  # 800.0f

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const p1, 0x3f59999a  # 0.85f

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p1, 0x43160000  # 150.0f

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_95

    :cond_92
    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->detach(Z)V

    :goto_95
    return-void
.end method

.method public final handleUpdateDisplacementWithShift(F)Z
    .registers 6

    sget-object v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isAttached()Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->isInState(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_38

    return v3

    :cond_38
    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->updateState(IZ)V

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v0, :cond_47

    new-instance v1, Lcom/android/launcher3/graphics/h;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/graphics/h;-><init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;F)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    :cond_47
    return v3
.end method

.method public final isAttached()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final onApplyLoadPlanExecuted()V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->swipeUpHandler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->isNonPendingApplyData()Z

    move-result v1

    if-ne v1, v2, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->getScrollOffsetWithoutAnimation(Z)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onApplyLoadPlanExecuted: scrollOffsetStartVal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "TaskWindowSpringScroller"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_63
    iget-object v2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->setPreviousXStartValue(Ljava/lang/Float;)V

    iget-object v2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {v2}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-eqz v1, :cond_80

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScroller:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_80
    return-void
.end method

.method public final onRemoteHandlePlaybackUpdate([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;FLcom/android/quickstep/GestureState;Lcom/android/quickstep/AnimatedFloat;)V
    .registers 7

    const-string/jumbo p0, "remoteTargetHandles"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "currentShift"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->Companion:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-static {p0, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->access$isCompatibleRemoteTargetHandles(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Z

    move-result p0

    if-nez p0, :cond_1b

    return-void

    :cond_1b
    const/4 p0, 0x0

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    goto :goto_24

    :cond_23
    move-object p1, p0

    :goto_24
    if-eqz p4, :cond_2a

    invoke-virtual {p4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    :cond_2a
    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/high16 p4, 0x3f800000  # 1.0f

    if-ne p0, p2, :cond_46

    iget p0, p5, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 p2, 0x0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_46

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p2, 0x40400000  # 3.0f

    mul-float/2addr p0, p2

    add-float/2addr p0, p4

    if-nez p1, :cond_42

    goto :goto_4c

    :cond_42
    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setRecentsViewSecondaryScale(F)V

    goto :goto_4c

    :cond_46
    if-nez p1, :cond_49

    goto :goto_4c

    :cond_49
    invoke-virtual {p1, p4}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setRecentsViewSecondaryScale(F)V

    :goto_4c
    return-void
.end method

.method public final setSpringScrollerXVelocity(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->springScrollerXVelocity:F

    return-void
.end method
