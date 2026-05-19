.class public final synthetic Lcom/android/statistics/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;I)V
    .registers 5

    iput p4, p0, Lcom/android/statistics/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/statistics/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/android/statistics/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/android/statistics/a;->d:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/statistics/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/statistics/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/statistics/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lcom/android/statistics/a;->d:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->c(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/statistics/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/statistics/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lcom/android/statistics/a;->d:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/statistics/FolderStatisticsManager;->b(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
