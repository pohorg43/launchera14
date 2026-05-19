.class public final Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$mSettingsRecommendObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$mSettingsRecommendObserver$1;->this$0:Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$mSettingsRecommendObserver$1;->this$0:Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->isRecommendEnable()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recommendEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RFolderRecommendImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_4b

    if-eqz p1, :cond_30

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$mSettingsRecommendObserver$1;->this$0:Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    goto :goto_4b

    :cond_30
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusLauncherModel;->onMarketUninstall()V

    sget-object p1, Lcom/android/launcher/folder/download/FolderRecommendUtils;->INSTANCE:Lcom/android/launcher/folder/download/FolderRecommendUtils;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl$mSettingsRecommendObserver$1;->this$0:Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommendWithOutSwitch(Landroid/content/Context;I)V

    :cond_4b
    :goto_4b
    return-void
.end method
