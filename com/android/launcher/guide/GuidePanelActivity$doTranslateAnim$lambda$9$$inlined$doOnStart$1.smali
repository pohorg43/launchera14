.class public final Lcom/android/launcher/guide/GuidePanelActivity$doTranslateAnim$lambda$9$$inlined$doOnStart$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/GuidePanelActivity;->doTranslateAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 GuidePanelActivity.kt\ncom/android/launcher/guide/GuidePanelActivity\n*L\n1#1,127:1\n98#2:128\n95#3:129\n97#4:130\n177#5,3:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/GuidePanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/GuidePanelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$doTranslateAnim$lambda$9$$inlined$doOnStart$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

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
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$doTranslateAnim$lambda$9$$inlined$doOnStart$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePanelActivity;->access$getMPanelGuideBehavior$p(Lcom/android/launcher/guide/GuidePanelActivity;)Lcom/coui/appcompat/panel/COUIGuideBehavior;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_12

    :cond_e
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setState(I)V

    :goto_12
    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$doTranslateAnim$lambda$9$$inlined$doOnStart$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->access$getMBinding$p(Lcom/android/launcher/guide/GuidePanelActivity;)Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    move-result-object p0

    if-nez p0, :cond_20

    const-string p0, "mBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_20
    iget-object p0, p0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideLayout:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
