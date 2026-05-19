.class public final Lcom/android/launcher3/anim/LauncherFoldAnimation$start$$inlined$doOnStart$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/LauncherFoldAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 LauncherFoldAnimation.kt\ncom/android/launcher3/anim/LauncherFoldAnimation\n*L\n1#1,127:1\n98#2:128\n95#3:129\n97#4:130\n157#5,4:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/anim/LauncherFoldAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation$start$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/anim/LauncherFoldAnimation;

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

    const-string p1, "LauncherFoldAnimation"

    const-string v0, "Appear animation start"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation$start$$inlined$doOnStart$1;->this$0:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    invoke-static {p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->access$getMLauncher$p(Lcom/android/launcher3/anim/LauncherFoldAnimation;)Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-nez p0, :cond_1d

    goto :goto_21

    :cond_1d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_21
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLD_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method
