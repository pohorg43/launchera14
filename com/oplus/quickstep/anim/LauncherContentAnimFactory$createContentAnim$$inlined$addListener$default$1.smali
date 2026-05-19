.class public final Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->createContentAnim(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 LauncherContentAnimFactory.kt\ncom/oplus/quickstep/anim/LauncherContentAnimFactory\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,127:1\n98#2:128\n217#3,15:129\n215#3,2:145\n97#4:144\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $animDragLayer$inlined:Z

.field public final synthetic $isOpeningApp$inlined:Z

.field public final synthetic this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;


# direct methods
.method public constructor <init>(ZLcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->$isOpeningApp$inlined:Z

    iput-object p2, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iput-boolean p3, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->$animDragLayer$inlined:Z

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
    .registers 5

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Content view animation end, isOpeningApp = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->$isOpeningApp$inlined:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mInterruptByOtherOpenOrClose="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-static {v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$getMInterruptByOtherOpenOrClose$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherContentAnimFactory"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-static {p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$getMInterruptByOtherOpenOrClose$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)Z

    move-result p1

    if-nez p1, :cond_3b

    iget-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->$animDragLayer$inlined:Z

    invoke-static {p1, v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$resetViews(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V

    goto :goto_53

    :cond_3b
    iget-boolean p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->$isOpeningApp$inlined:Z

    if-eqz p1, :cond_53

    sget-object p1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    new-instance v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$2$1;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iget-boolean v2, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->$animDragLayer$inlined:Z

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$2$1;-><init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->setDelayResetView(Ljava/lang/Runnable;)V

    :cond_53
    :goto_53
    iget-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$setMOnContentChangeListener$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$$inlined$addListener$default$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-static {p0, v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$setMLauncherViewAnim$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->cancelResetView()V

    return-void
.end method
