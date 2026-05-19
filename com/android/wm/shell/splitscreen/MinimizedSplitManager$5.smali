.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterMinimizedUncheck(Lcom/android/wm/shell/splitscreen/StageTaskListener;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

.field public final synthetic val$isLandscape:Z

.field public final synthetic val$startType:I

.field public final synthetic val$withAnim:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;ZIZ)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->val$withAnim:Z

    iput p3, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->val$startType:I

    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->val$isLandscape:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->val$startType:I

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->val$isLandscape:Z

    invoke-static {p1, v0, p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1500(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;IZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "enterMinimizedUncheck onAnimationStart withAnim:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->val$withAnim:Z

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1300(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    if-ne p1, v0, :cond_2a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1400(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    :cond_2a
    return-void
.end method
