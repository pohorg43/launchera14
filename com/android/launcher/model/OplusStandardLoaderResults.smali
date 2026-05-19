.class public Lcom/android/launcher/model/OplusStandardLoaderResults;
.super Lcom/android/launcher3/model/OplusBaseLoaderResults;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorStandardLoaderResults"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/OplusBaseLoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method


# virtual methods
.method public bindAllApps()V
    .registers 2

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0}, Lcom/android/launcher3/model/BaseLoaderResults;->bindAllApps()V

    goto :goto_11

    :cond_a
    const-string p0, "ColorStandardLoaderResults"

    const-string v0, "bindAllApps: Do NOT bind all apps in standard mode."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public preBindAllApps()V
    .registers 4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_1a

    :cond_2b
    return-void
.end method
