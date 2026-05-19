.class final Lcom/android/launcher/folder/download/FolderRecommendUtils$removeRecommendFolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendFolder(Lcom/android/launcher3/folder/OplusFolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/ref/WeakReference<",
        "Lcom/android/launcher3/folder/OplusFolderIcon;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $recommendId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeRecommendFolder$1;->$recommendId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/folder/OplusFolderIcon;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_16

    iget p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    iget p0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeRecommendFolder$1;->$recommendId:I

    if-ne p1, p0, :cond_16

    const/4 v0, 0x1

    :cond_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeRecommendFolder$1;->invoke(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
