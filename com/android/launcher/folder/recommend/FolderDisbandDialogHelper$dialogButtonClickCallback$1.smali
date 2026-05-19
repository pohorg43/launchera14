.class public final Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;->onPositiveButtonClick$lambda$0(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V

    return-void
.end method

.method private static final onPositiveButtonClick$lambda$0(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeSingleMarketInfoByItemInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_b
    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getOriginalView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-virtual {v2}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    goto :goto_25

    :cond_24
    move-object v0, v2

    :goto_25
    if-eqz v0, :cond_29

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    :cond_29
    if-eqz v2, :cond_37

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;->this$0:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    new-instance v1, Landroidx/core/widget/b;

    invoke-direct {v1, p0}, Landroidx/core/widget/b;-><init>(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_37
    return-void
.end method
