.class public final Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->createIconAlignmentController(Lcom/android/launcher3/DeviceProfile;Ljava/lang/Float;Ljava/lang/Float;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 OplusTaskbarViewController.kt\ncom/android/launcher3/taskbar/OplusTaskbarViewController\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,127:1\n98#2:128\n118#3,8:129\n110#3,8:138\n97#4:137\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $endValue$inlined:Ljava/lang/Float;

.field public final synthetic $startValue$inlined:Ljava/lang/Float;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Ljava/lang/Float;Ljava/lang/Float;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;->$startValue$inlined:Ljava/lang/Float;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;->$endValue$inlined:Ljava/lang/Float;

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

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_ICON_ALIGNMENT_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->access$getMIconAlignmentRunner$p(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->onIconAlignmentAnimationEnd(FLjava/util/function/Consumer;)V

    :cond_28
    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getMaxTransY()I

    move-result p1

    int-to-float p1, p1

    iput p1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    :cond_47
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

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_ICON_ALIGNMENT_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->access$getMIconAlignmentRunner$p(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object p1

    if-eqz p1, :cond_20

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$2$1;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$2$1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;->$startValue$inlined:Ljava/lang/Float;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;->$endValue$inlined:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->onIconAlignmentAnimationStart(Ljava/util/function/Consumer;Ljava/lang/Float;Ljava/lang/Float;)V

    :cond_20
    return-void
.end method
