.class final Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;
.super Landroid/window/IOnBackInvokedCallback$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/back/CrossTaskBackAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->lambda$onBackCancelled$1(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Landroid/window/BackEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->lambda$onBackStarted$0(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Landroid/window/BackEvent;)V

    return-void
.end method

.method private static synthetic lambda$onBackCancelled$1(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->access$200(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    return-void
.end method

.method private static synthetic lambda$onBackStarted$0(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Landroid/window/BackEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->access$500(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Landroid/window/BackEvent;)V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-static {v0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->access$300(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)Landroid/window/BackProgressAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    new-instance v1, Lcom/android/wm/shell/back/o;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/o;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    invoke-virtual {v0, v1}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackInvoked()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-static {v0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->access$300(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)Landroid/window/BackProgressAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->reset()V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-static {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->access$400(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackMotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-static {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->access$300(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)Landroid/window/BackProgressAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public onBackStarted(Landroid/window/BackMotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-static {v0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->access$300(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)Landroid/window/BackProgressAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    new-instance v1, Lcom/android/wm/shell/back/n;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/n;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    invoke-virtual {v0, p1, v1}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    return-void
.end method
