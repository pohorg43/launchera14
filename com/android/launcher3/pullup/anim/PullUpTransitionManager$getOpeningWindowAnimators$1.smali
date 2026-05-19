.class public final Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getOpeningWindowAnimators$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getOpeningWindowAnimators$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager$getOpeningWindowAnimators$1;->this$0:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    invoke-static {p0}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->access$getMGhostViewController$p(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;)Lcom/android/launcher3/pullup/anim/GhostViewController;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/GhostViewController;->onLaunchAnimationStart()V

    :cond_b
    return-void
.end method
