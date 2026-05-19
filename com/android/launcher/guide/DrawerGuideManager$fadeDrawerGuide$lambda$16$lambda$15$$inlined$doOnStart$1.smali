.class public final Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnStart$1;
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
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 DrawerGuideManager.kt\ncom/android/launcher/guide/DrawerGuideManager\n*L\n1#1,127:1\n98#2:128\n95#3:129\n97#4:130\n208#5,5:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnStart$1;->$pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;

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
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "DrawerGuideManager"

    const-string v0, "fadeDrawerGuide:Start"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/launcher/guide/DrawerGuideManager;->access$setMFadeAnimIsRunning$p(Z)V

    iget-object p1, p0, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnStart$1;->$pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p0, p0, Lcom/android/launcher/guide/DrawerGuideManager$fadeDrawerGuide$lambda$16$lambda$15$$inlined$doOnStart$1;->$pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
