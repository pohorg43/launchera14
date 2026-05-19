.class public final Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->createDepthAnim(ZLandroid/animation/AnimatorSet;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 LauncherContentAnimFactory.kt\ncom/oplus/quickstep/anim/LauncherContentAnimFactory\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,127:1\n98#2:128\n303#3,3:129\n299#3,4:133\n97#4:132\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $isOpeningApp$inlined:Z

.field public final synthetic $isOpeningApp$inlined$1:Z

.field public final synthetic this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;


# direct methods
.method public constructor <init>(ZLcom/oplus/quickstep/anim/LauncherContentAnimFactory;ZLcom/oplus/quickstep/anim/LauncherContentAnimFactory;)V
    .registers 5

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;->$isOpeningApp$inlined:Z

    iput-object p2, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iput-boolean p3, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;->$isOpeningApp$inlined$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Depth animation end, isOpeningApp = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;->$isOpeningApp$inlined:Z

    const-string v1, "LauncherContentAnimFactory"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iget-boolean p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;->$isOpeningApp$inlined:Z

    invoke-static {p1, p0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$resetDepth(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Depth animation start, isOpeningApp = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;->$isOpeningApp$inlined$1:Z

    const-string v1, "LauncherContentAnimFactory"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-static {p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$getMSwipeUpToHomeAnim$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)Lcom/android/quickstep/util/OplusRectFSpringAnim;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->cancelLauncherContentAnim()V

    :cond_21
    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createDepthAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$setMSwipeUpToHomeAnim$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    return-void
.end method
