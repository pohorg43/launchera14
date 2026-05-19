.class public final Lcom/android/launcher/guide/GuidePanelActivity$doAlphaAnim$lambda$12$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/GuidePanelActivity;->doAlphaAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 GuidePanelActivity.kt\ncom/android/launcher/guide/GuidePanelActivity\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n195#3,4:129\n97#4:133\n96#5:134\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $isShow$inlined:Z

.field public final synthetic this$0:Lcom/android/launcher/guide/GuidePanelActivity;


# direct methods
.method public constructor <init>(ZLcom/android/launcher/guide/GuidePanelActivity;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$doAlphaAnim$lambda$12$$inlined$doOnEnd$1;->$isShow$inlined:Z

    iput-object p2, p0, Lcom/android/launcher/guide/GuidePanelActivity$doAlphaAnim$lambda$12$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

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

    iget-boolean p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$doAlphaAnim$lambda$12$$inlined$doOnEnd$1;->$isShow$inlined:Z

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$doAlphaAnim$lambda$12$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-static {p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$doAlphaAnim$lambda$12$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$doAlphaAnim$lambda$12$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->access$getMContext$p(Lcom/android/launcher/guide/GuidePanelActivity;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f04020d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_28
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
