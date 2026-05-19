.class Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SerializedCardUpdateTask"
.end annotation


# instance fields
.field private final mCardId:I

.field private final mCardType:I

.field private final mInstantCardUrl:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler;IILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->this$0:Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->mCardId:I

    iput p3, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->mCardType:I

    iput-object p4, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->mInstantCardUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->mInstantCardUrl:Ljava/lang/String;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->this$0:Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler;

    invoke-static {v0}, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler;->access$000(Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler;)Lcom/android/launcher3/card/cache/CardCache;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->mCardId:I

    iget p0, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->mCardType:I

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/card/cache/CardCache;->removeCardFromDBCache(II)V

    goto :goto_21

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->this$0:Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler;

    invoke-static {v0}, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler;->access$000(Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler;)Lcom/android/launcher3/card/cache/CardCache;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->mCardId:I

    iget v2, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->mCardType:I

    iget-object p0, p0, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$SerializedCardUpdateTask;->mInstantCardUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/card/cache/CardCache;->updateInstantCardToDBCache(IILjava/lang/String;)V

    :goto_21
    return-void
.end method
