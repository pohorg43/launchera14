.class public final Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPullUpTransitionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PullUpTransitionManager.kt\ncom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,205:1\n94#2,14:206\n*S KotlinDebug\n*F\n+ 1 PullUpTransitionManager.kt\ncom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1\n*L\n93#1:206,14\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $v:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;->$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onAnimationCancelled()V

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    invoke-static {v0}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->access$removeTimeout(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    invoke-static {p0}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->access$getMGhostViewController$p(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)Lcom/android/launcher3/pullup/anim/GhostViewController;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/GhostViewController;->onLaunchAnimationCancelled()V

    :cond_13
    return-void
.end method

.method public onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 12

    const-string p1, "appTargets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "wallpaperTargets"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "nonAppTargets"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "result"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    invoke-static {p1}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->access$removeTimeout(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;->$v:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->access$getOpeningWindowAnimators(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p2, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    new-instance p3, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;

    invoke-direct {p3, p2}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;-><init>(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    invoke-static {p0}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->access$getMLauncher$p(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p5, p1, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    return-void
.end method
