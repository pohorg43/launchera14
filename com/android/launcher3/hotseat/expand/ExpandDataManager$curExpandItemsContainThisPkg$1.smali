.class final Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->curExpandItemsContainThisPkg(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $info:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$1;->$info:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_66

    instance-of v2, p1, Lcom/android/quickstep/util/GroupTask;

    if-nez v2, :cond_12

    goto :goto_66

    :cond_12
    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {p1}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$1;->$info:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_66

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_66

    iget-object p0, p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$1;->$info:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->access$isDuplicateInMutipTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/quickstep/util/GroupTask;)Z

    move-result p0

    if-eqz p0, :cond_66

    goto :goto_67

    :cond_36
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v2

    if-eqz v2, :cond_66

    sget-object v2, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-virtual {v2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isPocketStudioTask(Lcom/android/quickstep/util/GroupTask;)Z

    move-result v2

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$1;->$info:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_66

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_66

    iget-object p0, p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$1;->$info:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->access$isDuplicateInPocketStudioTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/quickstep/util/GroupTask;)Z

    move-result p0

    if-eqz p0, :cond_66

    goto :goto_67

    :cond_66
    :goto_66
    move v0, v1

    :goto_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "result when matchInRecentTaskList "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    const-string v1, "ExpandDataManager"

    invoke-static {p1, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$1;->invoke(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
