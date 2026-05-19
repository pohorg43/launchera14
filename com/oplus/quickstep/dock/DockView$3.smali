.class Lcom/oplus/quickstep/dock/DockView$3;
.super Lcom/oplus/quickstep/utils/SimpleCancellableTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dock/DockView;->onButtonToOverviewAnimStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final originAnimator:Landroid/animation/Animator;

.field public final synthetic this$0:Lcom/oplus/quickstep/dock/DockView;

.field public final synthetic val$animator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dock/DockView;Landroid/animation/Animator;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView$3;->this$0:Lcom/oplus/quickstep/dock/DockView;

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView$3;->val$animator:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SimpleCancellableTask;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView$3;->originAnimator:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public doRun()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView$3;->this$0:Lcom/oplus/quickstep/dock/DockView;

    invoke-static {v0}, Lcom/oplus/quickstep/dock/DockView;->access$300(Lcom/oplus/quickstep/dock/DockView;)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView$3;->originAnimator:Landroid/animation/Animator;

    if-eq v0, v1, :cond_b

    return-void

    :cond_b
    const-string v0, "DockView"

    const-string v1, "onButtonToOverviewAnim timeout, reset to let touchable. "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView$3;->this$0:Lcom/oplus/quickstep/dock/DockView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/quickstep/dock/DockView;->access$402(Lcom/oplus/quickstep/dock/DockView;Lcom/oplus/quickstep/utils/SimpleCancellableTask;)Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView$3;->this$0:Lcom/oplus/quickstep/dock/DockView;

    invoke-static {v0, v1}, Lcom/oplus/quickstep/dock/DockView;->access$302(Lcom/oplus/quickstep/dock/DockView;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView$3;->this$0:Lcom/oplus/quickstep/dock/DockView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->access$502(Lcom/oplus/quickstep/dock/DockView;Z)Z

    return-void
.end method
