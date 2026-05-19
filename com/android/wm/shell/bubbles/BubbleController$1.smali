.class Lcom/android/wm/shell/bubbles/BubbleController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/BubbleController;->registerOneHandedState(Lcom/android/wm/shell/onehanded/OneHandedController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/bubbles/BubbleController$1;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$1;->lambda$onStopFinished$1(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/bubbles/BubbleController$1;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$1;->lambda$onStartFinished$0(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$onStartFinished$0(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleStackView;

    move-result-object p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onVerticalOffsetChanged(I)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$onStopFinished$1(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleStackView;

    move-result-object p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onVerticalOffsetChanged(I)V

    :cond_13
    return-void
.end method


# virtual methods
.method public onStartFinished(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/m;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/m;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$1;Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStopFinished(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/l;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/l;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$1;Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
