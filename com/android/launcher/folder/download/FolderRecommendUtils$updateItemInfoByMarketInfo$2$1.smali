.class final Lcom/android/launcher/folder/download/FolderRecommendUtils$updateItemInfoByMarketInfo$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateItemInfoByMarketInfo(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/folder/download/model/MarketRecommendModel;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$updateItemInfoByMarketInfo$2$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Ljava/lang/Boolean;
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object p0, p0, Lcom/android/launcher/folder/download/FolderRecommendUtils$updateItemInfoByMarketInfo$2$1;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    sget-object p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteMarketInfoByPkg(Ljava/lang/String;Z)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_24
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$updateItemInfoByMarketInfo$2$1;->invoke(Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
