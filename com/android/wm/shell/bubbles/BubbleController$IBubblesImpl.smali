.class Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;
.super Lcom/android/wm/shell/bubbles/IBubbles$Stub;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IBubblesImpl"
.end annotation


# instance fields
.field private final mBubbleListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleStateListener;

.field private mController:Lcom/android/wm/shell/bubbles/BubbleController;

.field private final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/common/SingleInstanceRemoteListener<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            "Lcom/android/wm/shell/bubbles/IBubblesListener;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/IBubbles$Stub;-><init>()V

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mBubbleListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleStateListener;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    new-instance p1, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    new-instance v0, Lcom/android/wm/shell/bubbles/c0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/c0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V

    sget-object v1, Lcom/android/wm/shell/bubbles/d0;->a:Lcom/android/wm/shell/bubbles/d0;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->lambda$showBubble$4(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->lambda$new$0(Lcom/android/wm/shell/bubbles/BubbleController;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->lambda$new$1(Lcom/android/wm/shell/bubbles/BubbleController;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Lcom/android/wm/shell/bubbles/IBubblesListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->lambda$registerBubbleListener$2(Lcom/android/wm/shell/bubbles/IBubblesListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->lambda$collapseBubbles$5()V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->lambda$unregisterBubbleListener$3()V

    return-void
.end method

.method private synthetic lambda$collapseBubbles$5()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mBubbleListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleStateListener;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->registerBubbleStateListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleStateListener;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->unregisterBubbleStateListener()V

    return-void
.end method

.method private synthetic lambda$registerBubbleListener$2(Lcom/android/wm/shell/bubbles/IBubblesListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    return-void
.end method

.method private synthetic lambda$showBubble$4(ZLjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1800(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->setShowingInBubbleBar(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->expandStackAndSelectBubbleFromLauncher(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$unregisterBubbleListener$3()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    return-void
.end method


# virtual methods
.method public collapseBubbles()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/a0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/a0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    return-void
.end method

.method public onTaskbarStateChanged(I)V
    .registers 2

    return-void
.end method

.method public registerBubbleListener(Lcom/android/wm/shell/bubbles/IBubblesListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/m;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/m;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Lcom/android/wm/shell/bubbles/IBubblesListener;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeBubble(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public showBubble(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/b0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/wm/shell/bubbles/b0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterBubbleListener(Lcom/android/wm/shell/bubbles/IBubblesListener;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/bubbles/u0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/u0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
