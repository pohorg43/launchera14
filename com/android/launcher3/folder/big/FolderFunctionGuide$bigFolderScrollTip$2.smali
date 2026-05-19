.class public final Lcom/android/launcher3/folder/big/FolderFunctionGuide$bigFolderScrollTip$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/folder/big/BigFolderIcon$OnScrollPageEndCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderScrollTip(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $bigFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

.field public final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$bigFolderScrollTip$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$bigFolderScrollTip$2;->$bigFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollPageEnd()V
    .registers 5

    const-string v0, "BigFolderGuide"

    const-string/jumbo v1, "onScrollPageEnd"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->access$isTipAutoScroll$p()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->access$getScrollFolderTip$p()Lcom/coui/appcompat/tooltips/COUIToolTips;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$bigFolderScrollTip$2;->$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    if-eqz v1, :cond_2a

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-static {v2, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->access$removeAnimGuideView(Lcom/android/launcher3/folder/big/FolderFunctionGuide;Lcom/android/launcher3/OplusDragLayer;)V

    :cond_2a
    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    iget-object v2, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$bigFolderScrollTip$2;->$context:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "big_folder_scroll_tip_key"

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->access$updateAndRecordPref(Lcom/android/launcher3/folder/big/FolderFunctionGuide;Ljava/lang/String;Landroid/content/Context;)V

    const-string/jumbo v2, "onScrollPageEnd updateAndRecordPref"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$bigFolderScrollTip$2;->$bigFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->snapReset(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$bigFolderScrollTip$2;->$bigFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setOnScrollPageEndCallback(Lcom/android/launcher3/folder/big/BigFolderIcon$OnScrollPageEndCallback;)V

    invoke-static {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->access$setScrollFolder$p(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-static {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->access$setScrollFolderTip$p(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    :cond_4f
    return-void
.end method
