.class public final Lcom/android/launcher3/anim/TransitionAnimatorListener;
.super Lcom/android/launcher3/anim/AsyncAnimWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/TransitionAnimatorListener$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTransitionAnimatorListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransitionAnimatorListener.kt\ncom/android/launcher3/anim/TransitionAnimatorListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,89:1\n1855#2,2:90\n1855#2,2:92\n1855#2,2:94\n1855#2,2:96\n1855#2,2:98\n1855#2,2:100\n*S KotlinDebug\n*F\n+ 1 TransitionAnimatorListener.kt\ncom/android/launcher3/anim/TransitionAnimatorListener\n*L\n42#1:90,2\n51#1:92,2\n60#1:94,2\n68#1:96,2\n76#1:98,2\n84#1:100,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/TransitionAnimatorListener$Companion;

.field private static final TAG:Ljava/lang/String; = "TransitionAnimatorListener"


# instance fields
.field private mIsOpening:Z

.field private final mListeners$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/TransitionAnimatorListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/TransitionAnimatorListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/TransitionAnimatorListener;->Companion:Lcom/android/launcher3/anim/TransitionAnimatorListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;-><init>()V

    sget-object v0, Lcom/android/launcher3/anim/TransitionAnimatorListener$mListeners$2;->INSTANCE:Lcom/android/launcher3/anim/TransitionAnimatorListener$mListeners$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/TransitionAnimatorListener;->mListeners$delegate:Lh4/f;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->onAnimationResume$lambda$11(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->onAnimationPause$lambda$9(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->onAnimationRepeat$lambda$7(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->onAnimationCancel$lambda$5(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->onAnimationStart$lambda$1(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->onAnimationEnd$lambda$3(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V

    return-void
.end method

.method private final getMListeners()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/anim/TransitionAnimatorListener;->mListeners$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private static final onAnimationCancel$lambda$5(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private static final onAnimationEnd$lambda$3(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private static final onAnimationPause$lambda$9(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationPause(Landroid/animation/Animator;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private static final onAnimationRepeat$lambda$7(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private static final onAnimationResume$lambda$11(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationResume(Landroid/animation/Animator;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private static final onAnimationStart$lambda$1(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_e

    :cond_1e
    return-void
.end method


# virtual methods
.method public final addAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "Async anim cancel, isOpening = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/anim/TransitionAnimatorListener;->mIsOpening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionAnimatorListener"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/anim/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/anim/s;-><init>(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "Async anim end, isOpening = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/anim/TransitionAnimatorListener;->mIsOpening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionAnimatorListener"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/anim/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/anim/s;-><init>(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/anim/r;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/anim/r;-><init>(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/anim/s;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/anim/s;-><init>(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/anim/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/anim/r;-><init>(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "Async anim start, isOpening = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/anim/TransitionAnimatorListener;->mIsOpening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionAnimatorListener"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/anim/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/anim/r;-><init>(Lcom/android/launcher3/anim/TransitionAnimatorListener;Landroid/animation/Animator;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AsyncAnimWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setIsOpening(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/TransitionAnimatorListener;->mIsOpening:Z

    return-void
.end method
