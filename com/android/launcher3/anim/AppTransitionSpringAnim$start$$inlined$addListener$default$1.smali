.class public final Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/AppTransitionSpringAnim;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 AppTransitionSpringAnim.kt\ncom/android/launcher3/anim/AppTransitionSpringAnim\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n98#2:128\n186#3,3:129\n189#3,2:133\n191#3,3:136\n194#3,2:140\n196#3:143\n179#3,3:144\n182#3,2:148\n184#3:151\n1855#4:132\n1856#4:135\n1855#4:139\n1856#4:142\n1855#4:147\n1856#4:150\n*S KotlinDebug\n*F\n+ 1 AppTransitionSpringAnim.kt\ncom/android/launcher3/anim/AppTransitionSpringAnim\n*L\n188#1:132\n188#1:135\n193#1:139\n193#1:142\n181#1:147\n181#1:150\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/anim/AppTransitionSpringAnim;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/AppTransitionSpringAnim;Lcom/android/launcher3/anim/AppTransitionSpringAnim;Lcom/android/launcher3/anim/AppTransitionSpringAnim;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-static {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->access$getMListeners(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_f

    :cond_20
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-static {p1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->access$getMAppTransitionParam$p(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;->setHasInterrupted(Z)V

    :goto_12
    iget-object p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-static {p1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->access$getMAppTransitionParam$p(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;->setNeedInterceptIconSurface(Z)V

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-static {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->access$getMListeners(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_28

    :cond_39
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-static {p1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->access$getMAppTransitionParam$p(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;->setHasInterrupted(Z)V

    :goto_12
    iget-object p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-static {p1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->access$getMAppTransitionParam$p(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;->setNeedInterceptIconSurface(Z)V

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-static {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->access$getMListeners(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_28

    :cond_39
    return-void
.end method
