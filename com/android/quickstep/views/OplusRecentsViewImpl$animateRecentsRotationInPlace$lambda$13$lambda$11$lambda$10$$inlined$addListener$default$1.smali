.class public final Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusRecentsViewImpl;->animateRecentsRotationInPlace(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 OplusRecentsViewImpl.kt\ncom/android/quickstep/views/OplusRecentsViewImpl\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,127:1\n98#2:128\n745#3,3:129\n744#3,13:132\n737#3,3:146\n736#3,7:149\n97#4:145\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $newRotation$inlined:I

.field public final synthetic $this_apply$inlined:Landroid/animation/AnimatorSet;

.field public final synthetic this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;ILcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/animation/AnimatorSet;)V
    .registers 5

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;->$newRotation$inlined:I

    iput-object p4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/AnimatorSet;

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

    const-string p1, "QuickStep"

    const-string v0, "OplusRecentsView"

    const-string v1, "animateRecentsRotationInPlace: final rotation anim end"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$setMRotateAnimation$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/animation/AnimatorSet;)V

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result p1

    if-eqz p1, :cond_4c

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->hasShowGuide()Z

    move-result v0

    if-nez v0, :cond_4c

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;->$newRotation$inlined:I

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v2, "OVERVIEW"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4c

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getOplusCleanStorageFrameLayout()Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->showPhoneManagerEntranceTip(Landroid/view/View;)V

    :cond_4c
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

    const-string p1, "QuickStep"

    const-string v0, "OplusRecentsView"

    const-string v1, "animateRecentsRotationInPlace: final rotation anim start"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda$13$lambda$11$lambda$10$$inlined$addListener$default$1;->$this_apply$inlined:Landroid/animation/AnimatorSet;

    invoke-static {p1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$setMRotateAnimation$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/animation/AnimatorSet;)V

    return-void
.end method
