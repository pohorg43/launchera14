.class Lcom/android/wm/shell/back/BackAnimationRunner$1;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/back/BackAnimationRunner;->startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/BackAnimationRunner;

.field public final synthetic val$finishedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/BackAnimationRunner;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationRunner$1;->this$0:Lcom/android/wm/shell/back/BackAnimationRunner;

    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationRunner$1;->val$finishedCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationRunner$1;->val$finishedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
