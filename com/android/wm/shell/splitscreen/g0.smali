.class public final synthetic Lcom/android/wm/shell/splitscreen/g0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/g0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/g0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/g0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/g0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/g0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/g0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/g0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/g0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/g0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/g0;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_26

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/g0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/g0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/g0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1;->a(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1;Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/g0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/g0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/g0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->a(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_26
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/g0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/g0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/g0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->k(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
