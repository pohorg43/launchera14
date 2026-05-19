.class public final Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/IconPressAnimManager;->doPressFeedbackAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 IconPressAnimManager.kt\ncom/android/launcher3/anim/IconPressAnimManager\n*L\n1#1,127:1\n98#2:128\n100#3,11:129\n92#3,8:140\n80#3,12:148\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $downEvent$inlined:Z

.field public final synthetic $downEvent$inlined$1:Z

.field public final synthetic $downEvent$inlined$2:Z

.field public final synthetic this$0:Lcom/android/launcher3/anim/IconPressAnimManager;


# direct methods
.method public constructor <init>(ZLcom/android/launcher3/anim/IconPressAnimManager;ZLcom/android/launcher3/anim/IconPressAnimManager;Lcom/android/launcher3/anim/IconPressAnimManager;Z)V
    .registers 7

    iput-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined:Z

    iput-object p2, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    iput-boolean p3, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined$1:Z

    iput-boolean p6, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined$1:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    sput-boolean v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sIconPressAnimating:Z

    goto :goto_2a

    :cond_d
    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_2a

    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.OplusBubbleTextView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimatorStateForTouch(Z)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    sput-boolean v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sIconPressAnimating:Z

    :cond_c
    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMNeedSetCallBack$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.OplusBubbleTextView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p0, v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$setMNeedSetCallBack$p(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V

    :cond_38
    sget-object p0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object p1, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$2$1;->INSTANCE:Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$2$1;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ICON_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ICON_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object p1, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$3$1;->INSTANCE:Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$3$1;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v0, 0x1

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.OplusBubbleTextView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_58

    const-string p1, "IconPressAnimManager"

    const-string v2, "icon callback is null!"

    invoke-static {p1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1, v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$setMNeedSetCallBack$p(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {v1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_58
    iget-boolean p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined$2:Z

    if-eqz p0, :cond_5e

    sput-boolean v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sIconPressAnimating:Z

    :cond_5e
    return-void
.end method
