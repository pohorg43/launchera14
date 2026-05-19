.class public final synthetic Lcom/android/wm/shell/common/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;ILandroid/content/res/Configuration;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/common/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/e;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/common/e;->c:I

    iput-object p3, p0, Lcom/android/wm/shell/common/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayImeController;ILandroid/content/res/Configuration;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/common/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/e;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/common/e;->c:I

    iput-object p3, p0, Lcom/android/wm/shell/common/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;Landroid/content/ComponentName;I)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/common/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/common/e;->d:Ljava/lang/Object;

    iput p3, p0, Lcom/android/wm/shell/common/e;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/common/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/e;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/common/e;->c:I

    iput-object p3, p0, Lcom/android/wm/shell/common/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/common/e;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_30

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/common/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;

    iget v1, p0, Lcom/android/wm/shell/common/e;->c:I

    iget-object p0, p0, Lcom/android/wm/shell/common/e;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;->a(Lcom/android/wm/shell/common/SyncTransactionQueue$SyncCallback;ILandroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_14  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/common/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/common/e;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/wm/shell/common/e;->c:I

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;->c(Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;Landroid/content/ComponentName;I)V

    return-void

    :pswitch_22  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/common/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    iget v1, p0, Lcom/android/wm/shell/common/e;->c:I

    iget-object p0, p0, Lcom/android/wm/shell/common/e;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Configuration;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->c(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;ILandroid/content/res/Configuration;)V

    return-void

    :goto_30
    iget-object v0, p0, Lcom/android/wm/shell/common/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/common/DisplayImeController;

    iget v1, p0, Lcom/android/wm/shell/common/e;->c:I

    iget-object p0, p0, Lcom/android/wm/shell/common/e;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Configuration;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayImeController;->b(Lcom/android/wm/shell/common/DisplayImeController;ILandroid/content/res/Configuration;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_14  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
