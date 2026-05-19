.class public final synthetic Lcom/android/launcher3/util/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/ViewPool$1;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/r;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/util/r;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/r;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/util/r;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/util/r;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/util/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/ViewPool$1;

    iget-object p0, p0, Lcom/android/launcher3/util/r;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/util/ViewPool$1;->a(Lcom/android/launcher3/util/ViewPool$1;Landroid/view/View;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/util/r;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/launcher3/util/r;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p0}, Lcom/android/launcher3/util/LooperExecutor;->a(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
