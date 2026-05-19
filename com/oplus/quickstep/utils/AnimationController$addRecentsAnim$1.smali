.class public final Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/AnimationController;->addRecentsAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/RecentsAnimationController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $recentAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

.field public final synthetic $recentsController:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic this$0:Lcom/oplus/quickstep/utils/AnimationController;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/quickstep/utils/AnimationController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->$recentAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iput-object p2, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->this$0:Lcom/oplus/quickstep/utils/AnimationController;

    iput-object p3, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->$recentsController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->onAnimationEnd$lambda$0(Lcom/oplus/quickstep/utils/AnimationController;)V

    return-void
.end method

.method private static final onAnimationEnd$lambda$0(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "recents anim finish"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->setRecentsAnimEndState(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AnimationController;->access$executeRecentMainFinishCallback(Lcom/oplus/quickstep/utils/AnimationController;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    const-string p1, "Recent anim end, "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->$recentAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isCanceled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->$recentAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCanceled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnimationController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->this$0:Lcom/oplus/quickstep/utils/AnimationController;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/AnimationController;->access$getMRecentsAnims$p(Lcom/oplus/quickstep/utils/AnimationController;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->$recentAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->$recentAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse()Z

    move-result p1

    if-nez p1, :cond_48

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->this$0:Lcom/oplus/quickstep/utils/AnimationController;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/AnimationController;->access$getMAnimState$p(Lcom/oplus/quickstep/utils/AnimationController;)Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object p1

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq p1, v1, :cond_48

    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;->releaseOpenRemoteTargets()V

    :cond_48
    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setOnceGestureProcessing(Lcom/oplus/quickstep/gesture/OplusGestureState;)V

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->this$0:Lcom/oplus/quickstep/utils/AnimationController;

    invoke-static {v1}, Lcom/oplus/quickstep/utils/AnimationController;->access$getMAppLaunchAnims$p(Lcom/oplus/quickstep/utils/AnimationController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_76

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->this$0:Lcom/oplus/quickstep/utils/AnimationController;

    new-instance v3, Lcom/oplus/quickstep/utils/b;

    invoke-direct {v3, v1, v2}, Lcom/oplus/quickstep/utils/b;-><init>(Lcom/oplus/quickstep/utils/AnimationController;I)V

    invoke-virtual {p1, v3}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;->delayFinishRecents(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_76

    const-string p0, "execute recent finish"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    :cond_76
    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v0, 0x0

    array-length v1, p1

    :goto_7a
    if-ge v0, v1, :cond_8a

    aget-object v3, p1, v0

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    if-ne v4, v2, :cond_87

    iget-object v4, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->$recentsController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v4, v3}, Lcom/android/quickstep/RecentsAnimationController;->removeTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    :cond_8a
    :goto_8a
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 2

    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->$recentsController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;->updateNextFinishSeqIdIfNeed(Lcom/android/quickstep/RecentsAnimationController;)V

    return-void
.end method
