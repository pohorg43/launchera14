.class final Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeSingleMarketInfoByItemInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher.folder.download.FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1"
    f = "FolderRecommendUtils.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $deleteAllMode:Z

.field public final synthetic $itemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public final synthetic $pkgName:Ljava/lang/String;

.field public label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLl4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Z",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->$pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->$itemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-boolean p3, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->$deleteAllMode:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;

    iget-object v0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->$pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->$itemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-boolean p0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->$deleteAllMode:Z

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;-><init>(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLl4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->label:I

    if-nez v0, :cond_2c

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->$pkgName:Ljava/lang/String;

    const-string/jumbo v1, "pkgName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->$itemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->$deleteAllMode:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteMarketInfoByPkgAndRecommendId(Ljava/lang/String;IZ)Z

    iget-object p0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$removeSingleMarketInfoByItemInfo$1$1;->$itemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->resetMarketRecommendAppInfo()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
