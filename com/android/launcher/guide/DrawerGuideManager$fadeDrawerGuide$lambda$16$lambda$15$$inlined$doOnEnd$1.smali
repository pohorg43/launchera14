.class public final Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/DrawerGuideManager;->fadeDrawerGuide(Lcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 DrawerGuideManager.kt\ncom/android/launcher/guide/DrawerGuideManager\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n215#3,5:129\n97#4:134\n96#5:135\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $launcher$inlined:Lcom/android/launcher3/Launcher;

.field public final synthetic $pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnEnd$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnEnd$1;->$pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;

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
    .registers 6

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fadeDrawerGuide:End mDrawerGuide = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0}, Lcom/android/launcher/guide/DrawerGuideManager;->getMDrawerGuide()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    const-string v3, "DrawerGuideManager"

    invoke-static {p1, v1, v3}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnEnd$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnEnd$1;->$pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0, p1, p0}, Lcom/android/launcher/guide/DrawerGuideManager;->access$resetStates(Lcom/android/launcher/guide/DrawerGuideManager;Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-static {v2}, Lcom/android/launcher/guide/DrawerGuideManager;->access$setMFadeAnimIsRunning$p(Z)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher/guide/DrawerGuideManager;->access$setMFadeDrawerGuideAnim$p(Landroid/animation/AnimatorSet;)V

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
