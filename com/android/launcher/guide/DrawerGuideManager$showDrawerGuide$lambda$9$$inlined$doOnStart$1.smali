.class public final Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnStart$1;
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
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 DrawerGuideManager.kt\ncom/android/launcher/guide/DrawerGuideManager\n*L\n1#1,127:1\n98#2:128\n95#3:129\n97#4:130\n156#5,8:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $fadeView$inlined:Landroid/view/View;

.field public final synthetic $launcher$inlined:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/Launcher;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnStart$1;->$fadeView$inlined:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnStart$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

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
    .registers 5

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showDrawerGuide:start mDrawerGuide = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0}, Lcom/android/launcher/guide/DrawerGuideManager;->getMDrawerGuide()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    const-string v2, "DrawerGuideManager"

    invoke-static {p1, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnStart$1;->$fadeView$inlined:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/launcher/guide/DrawerGuideManager;->access$setMIsShowGuide$p(Z)V

    iget-object p0, p0, Lcom/android/launcher/guide/DrawerGuideManager$showDrawerGuide$lambda$9$$inlined$doOnStart$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p0}, Lcom/android/launcher/guide/DrawerGuideManager;->access$addDrawerGuideCount(Lcom/android/launcher/guide/DrawerGuideManager;Landroid/content/Context;)V

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->hideUpArrow()V

    :cond_44
    return-void
.end method
