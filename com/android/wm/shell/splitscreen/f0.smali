.class public final synthetic Lcom/android/wm/shell/splitscreen/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/f0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/f0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/f0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/f0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/splitscreen/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/f0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/f0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/f0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/f0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/f0;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2a

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/f0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/f0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->y(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V

    return-void

    :pswitch_12  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/f0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/f0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->b(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/f0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/f0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->c(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void

    :goto_2a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/f0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/f0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->v(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_12  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
