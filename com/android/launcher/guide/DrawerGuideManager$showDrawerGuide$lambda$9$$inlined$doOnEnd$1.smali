.class public final Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/DrawerGuideManager;->showDrawerGuide(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 DrawerGuideManager.kt\ncom/android/launcher/guide/DrawerGuideManager\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n165#3,8:129\n97#4:137\n96#5:138\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $launcher$inlined:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnEnd$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

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
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "DrawerGuideManager"

    const-string/jumbo v0, "showDrawerGuide:End"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/guide/DrawerGuideManager;->access$getMShowDrawerGuideAnim$p()Landroid/animation/AnimatorSet;

    sget-object p1, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher/guide/DrawerGuideManager;->setMSwitchDrawer(Z)V

    iget-object p0, p0, Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnEnd$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher/guide/DrawerGuideManager;->fadeDrawerGuide(Lcom/android/launcher3/Launcher;)V

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isCanShowUpArrow()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->showUpArrow()V

    :cond_26
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
