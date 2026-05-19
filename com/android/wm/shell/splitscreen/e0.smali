.class public final synthetic Lcom/android/wm/shell/splitscreen/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/e0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/e0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/e0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/e0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;Landroid/animation/ValueAnimator;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/e0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/e0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/splitscreen/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/e0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/e0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/e0;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2a

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/e0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/e0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->a(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Ljava/lang/String;)V

    return-void

    :pswitch_12  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/e0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/e0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;->a(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/e0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/e0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->b(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void

    :goto_2a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/e0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/e0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/window/WindowContainerTransaction;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->B(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_12  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
