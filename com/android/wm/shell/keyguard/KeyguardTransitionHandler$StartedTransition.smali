.class final Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StartedTransition"
.end annotation


# instance fields
.field public final mFinishT:Landroid/view/SurfaceControl$Transaction;

.field public final mInfo:Landroid/window/TransitionInfo;

.field public final mPlayer:Landroid/window/IRemoteTransition;

.field public final synthetic this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mInfo:Landroid/window/TransitionInfo;

    iput-object p3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mPlayer:Landroid/window/IRemoteTransition;

    return-void
.end method
