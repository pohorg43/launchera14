.class Lcom/android/wm/shell/common/split/SplitLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/common/split/SplitLayout;->splitSwitching(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic val$dividerPos:I

.field public final synthetic val$finishCallback:Ljava/util/function/Consumer;

.field public final synthetic val$insets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;ILjava/util/function/Consumer;Landroid/graphics/Rect;)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$dividerPos:I

    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$finishCallback:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$insets:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$dividerPos:I

    invoke-static {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->access$202(Lcom/android/wm/shell/common/split/SplitLayout;I)I

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->access$200(Lcom/android/wm/shell/common/split/SplitLayout;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->access$300(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$finishCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$insets:Landroid/graphics/Rect;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
