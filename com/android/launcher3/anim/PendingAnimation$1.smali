.class Lcom/android/launcher3/anim/PendingAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/anim/PendingAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/PendingAnimation$1;->this$0:Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/PendingAnimation$1;->this$0:Lcom/android/launcher3/anim/PendingAnimation;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/PendingAnimation;->isAnimFinished:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/PendingAnimation$1;->this$0:Lcom/android/launcher3/anim/PendingAnimation;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/PendingAnimation;->isAnimFinished:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/PendingAnimation$1;->this$0:Lcom/android/launcher3/anim/PendingAnimation;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/anim/PendingAnimation;->isAnimFinished:Z

    return-void
.end method
