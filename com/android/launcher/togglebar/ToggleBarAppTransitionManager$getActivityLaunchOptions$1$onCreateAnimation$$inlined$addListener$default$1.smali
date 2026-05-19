.class public final Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;->onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 ToggleBarAppTransitionManager.kt\ncom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,127:1\n98#2:128\n184#3,2:129\n181#3,3:132\n97#4:131\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;->this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

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

    sget-object p1, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->Companion:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;->this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-static {p0}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->access$getMLauncher$p(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;)Lcom/android/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->resetContentView(Lcom/android/launcher/Launcher;Z)V

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

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;->this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-static {p0}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->access$getMLauncher$p(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mStartFromToggleBarBefore:Z

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    return-void
.end method
