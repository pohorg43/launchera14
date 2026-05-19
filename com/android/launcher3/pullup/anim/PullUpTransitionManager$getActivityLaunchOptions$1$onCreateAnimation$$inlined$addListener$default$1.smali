.class public final Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;->onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 PullUpTransitionManager.kt\ncom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,127:1\n98#2:128\n96#3,2:129\n94#3,2:132\n97#4:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

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

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    invoke-static {p0}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->access$getMLauncher$p(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->access$resetContentView(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;Lcom/android/launcher/Launcher;)V

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

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object p0

    const/16 p1, 0x11f

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    return-void
.end method
