.class public final Lcom/android/launcher/views/PressFeedbackButton$doEnableStateAnim$$inlined$doOnCancel$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/views/PressFeedbackButton;->doEnableStateAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 PressFeedbackButton.kt\ncom/android/launcher/views/PressFeedbackButton\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n95#3:129\n178#4,2:130\n96#5:132\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $enabled$inlined:Z

.field public final synthetic this$0:Lcom/android/launcher/views/PressFeedbackButton;


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/PressFeedbackButton;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/views/PressFeedbackButton$doEnableStateAnim$$inlined$doOnCancel$1;->this$0:Lcom/android/launcher/views/PressFeedbackButton;

    iput-boolean p2, p0, Lcom/android/launcher/views/PressFeedbackButton$doEnableStateAnim$$inlined$doOnCancel$1;->$enabled$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/views/PressFeedbackButton$doEnableStateAnim$$inlined$doOnCancel$1;->this$0:Lcom/android/launcher/views/PressFeedbackButton;

    iget-boolean p0, p0, Lcom/android/launcher/views/PressFeedbackButton$doEnableStateAnim$$inlined$doOnCancel$1;->$enabled$inlined:Z

    invoke-static {p1, p0}, Lcom/android/launcher/views/PressFeedbackButton;->access$setEnabled$s987396597(Lcom/android/launcher/views/PressFeedbackButton;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    return-void
.end method
