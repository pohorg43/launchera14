.class public final Lcom/android/launcher3/folder/FolderDownloadDrawableCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/FolderDownloadDrawableCache$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/FolderDownloadDrawableCache$Companion;

.field public static final TAG:Ljava/lang/String; = "FolderDownloadDrawableCache"


# instance fields
.field private mDownloadDrawables:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Lcom/android/launcher/download/DownloadProgressPreviewDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/FolderDownloadDrawableCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->Companion:Lcom/android/launcher3/folder/FolderDownloadDrawableCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->mDownloadDrawables:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final addDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/download/DownloadProgressPreviewDrawable;)V
    .registers 6

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->isExist(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v0

    const-string v1, "addDownloadDrawable: itemInfo = "

    const-string v2, "FolderDownloadDrawableCache"

    if-eqz v0, :cond_2a

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", item already exist!!!}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->mDownloadDrawables:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clearCache()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->mDownloadDrawables:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final getDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher/download/DownloadProgressPreviewDrawable;
    .registers 3

    const-string/jumbo v0, "workspaceItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->mDownloadDrawables:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    return-object p0
.end method

.method public final getDownloadDrawables()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Lcom/android/launcher/download/DownloadProgressPreviewDrawable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->mDownloadDrawables:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final isExist(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 3

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->mDownloadDrawables:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final removeDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 6

    const-string/jumbo v0, "workspaceItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->isExist(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    const-string/jumbo v0, "removeDownloadDrawable: removeItem = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v3, "FolderDownloadDrawableCache"

    invoke-static {v0, v2, v3}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->mDownloadDrawables:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method
