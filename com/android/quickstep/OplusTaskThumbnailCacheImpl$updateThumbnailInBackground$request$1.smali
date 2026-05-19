.class public final Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;
.super Lcom/android/quickstep/util/UxCancellableTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;Z)Lcom/android/quickstep/util/CancellableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/util/UxCancellableTask<",
        "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public final synthetic $lowResolution:Z

.field public final synthetic this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    iput-object p2, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->$key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-boolean p3, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->$lowResolution:Z

    iput-object p4, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->$callback:Ljava/util/function/Consumer;

    const/16 p1, 0x7db

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/UxCancellableTask;-><init>(I)V

    return-void
.end method


# virtual methods
.method public cancelCallBack()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    iget-object p0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->$key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, p0}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->traversalStackChangeMap(I)V

    return-void
.end method

.method public getResultOnBg()Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->getTaskIdSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    iget-object v2, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->$key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    monitor-enter v0

    :try_start_b
    invoke-virtual {v1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->getTaskIdSet()Ljava/util/Set;

    move-result-object v1

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_37

    monitor-exit v0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->$key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-boolean v2, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->$lowResolution:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getTaskThumbnail(IZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    iget-object v1, v1, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object p0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->$key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, p0, v0}, Lcom/android/quickstep/util/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    const-string/jumbo p0, "thumbnailData"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catchall_37
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public bridge synthetic getResultOnBg()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->getResultOnBg()Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    return-object p0
.end method

.method public handleResult(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 6

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "OplusTaskThumbnailCacheImpl"

    const-string v1, "handleResult snapshotId:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->snapshotId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    iget-object v2, v2, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    iget-object v0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    iget-object v0, v0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->snapshotId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_45
    iget-object v0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    iget-object v0, v0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->snapshotId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->getTaskIdSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    iget-object v2, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->$key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    monitor-enter v0

    :try_start_5d
    invoke-virtual {v1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->getTaskIdSet()Ljava/util/Set;

    move-result-object v1

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_71

    monitor-exit v0

    iget-object p0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->$callback:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :catchall_71
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;->handleResult(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method
