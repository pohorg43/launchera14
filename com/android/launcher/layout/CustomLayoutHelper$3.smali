.class Lcom/android/launcher/layout/CustomLayoutHelper$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/common/util/OnFeatureChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/layout/CustomLayoutHelper;->setOnExtraWorkspacePathChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/layout/CustomLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/layout/CustomLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$3;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$3;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$800(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    const-string v2, "extra feature received first, try wait scan result."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$3;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$900(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$3;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {v1}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$900(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/layout/CustomLayoutHelper$3$1;

    invoke-direct {v2, p0}, Lcom/android/launcher/layout/CustomLayoutHelper$3$1;-><init>(Lcom/android/launcher/layout/CustomLayoutHelper$3;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_34

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2c

    throw p0

    :cond_2f
    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$3;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->onExtraWorkspacePathChanged()V

    :goto_34
    return-void
.end method
