.class Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startDimAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "##### dimAnimation cancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1902(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "##### dimAnimation over"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$300(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$2000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;I)V

    :cond_27
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1902(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "##### dimAnimation start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1902(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;Z)Z

    return-void
.end method
