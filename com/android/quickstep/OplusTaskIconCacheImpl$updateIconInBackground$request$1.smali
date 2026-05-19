.class public final Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;
.super Lcom/android/quickstep/util/UxCancellableTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/util/UxCancellableTask<",
        "Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $task:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic this$0:Lcom/android/quickstep/OplusTaskIconCacheImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusTaskIconCacheImpl;Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/OplusTaskIconCacheImpl;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    iput-object p2, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$task:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$callback:Ljava/util/function/Consumer;

    const/16 p1, 0x7db

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/UxCancellableTask;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getResultOnBg()Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->this$0:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    iget-object p0, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->getCacheEntry(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getResultOnBg()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->getResultOnBg()Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object p0

    return-object p0
.end method

.method public handleResult(Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;)V
    .registers 4

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iget p1, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->modifiedType:I

    iput p1, v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->modifiedType:I

    iget-object p0, p0, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->$callback:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusTaskIconCacheImpl$updateIconInBackground$request$1;->handleResult(Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;)V

    return-void
.end method
