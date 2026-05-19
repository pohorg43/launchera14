.class final Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/keyguard/KeyguardTransitions;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyguardTransitionsImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->lambda$register$0(Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;)V

    return-void
.end method

.method private synthetic lambda$register$0(Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-static {v0, p1}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->access$402(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/IRemoteTransition;)Landroid/window/IRemoteTransition;

    iget-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-static {p1, p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->access$502(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/IRemoteTransition;)Landroid/window/IRemoteTransition;

    iget-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-static {p1, p3}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->access$602(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/IRemoteTransition;)Landroid/window/IRemoteTransition;

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-static {p0, p4}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->access$702(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/IRemoteTransition;)Landroid/window/IRemoteTransition;

    return-void
.end method


# virtual methods
.method public register(Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-static {v0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->access$100(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v7, Lcom/android/wm/shell/keyguard/a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/keyguard/a;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;)V

    invoke-interface {v0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
