.class Lcom/android/launcher3/OplusHotseat$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusHotseat;->initViewAddAndRemoveListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusHotseat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusHotseat;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 7

    iget-object p1, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p1}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string/jumbo p1, "onChildViewAdded:  isDragging: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  isMoving: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isWorkspaceLoading: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v0}, Lcom/android/launcher3/OplusHotseat;->access$000(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hotseat"

    const-string v1, "OplusHotseat"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_e7

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_e7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChildViewAdded: child - title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p2

    if-eqz p2, :cond_86

    iget-object p2, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    move-result p2

    if-eqz p2, :cond_86

    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_86

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandChangeIsUpdate(Z)V

    :cond_86
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result p2

    if-eqz p2, :cond_98

    iget-object p2, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    move-result p2

    if-eqz p2, :cond_98

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->initAddDividerRunnable(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :cond_98
    iget-object p2, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    move-result p2

    if-nez p2, :cond_e7

    iget-object p2, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    move-result p2

    if-nez p2, :cond_e7

    iget-object p2, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p2}, Lcom/android/launcher3/OplusHotseat;->access$000(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result p2

    if-eqz p2, :cond_b5

    goto :goto_e7

    :cond_b5
    iget-object p2, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p2, p1}, Lcom/android/launcher3/OplusHotseat;->access$100(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p2}, Lcom/android/launcher3/OplusHotseat;->access$200(Lcom/android/launcher3/OplusHotseat;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_e7

    iget-object p2, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p2}, Lcom/android/launcher3/OplusHotseat;->access$000(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v0}, Lcom/android/launcher3/OplusHotseat;->access$200(Lcom/android/launcher3/OplusHotseat;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->access$200(Lcom/android/launcher3/OplusHotseat;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e7
    :goto_e7
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 7

    iget-object p1, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p1}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string/jumbo p1, "onChildViewRemoved:  isDragging: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  isMoving: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isWorkspaceLoading: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v0}, Lcom/android/launcher3/OplusHotseat;->access$000(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hotseat"

    const-string v1, "OplusHotseat"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    move-result p1

    if-nez p1, :cond_da

    iget-object p1, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    move-result p1

    if-nez p1, :cond_da

    iget-object p1, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p1}, Lcom/android/launcher3/OplusHotseat;->access$000(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result p1

    if-nez p1, :cond_da

    if-nez p2, :cond_63

    goto :goto_da

    :cond_63
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_d4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChildViewRemoved: child - title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " LayoutParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_b5

    iget-object p2, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p2}, Lcom/android/launcher3/OplusHotseat;->access$000(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusHotseat;->access$300(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v2, 0x32

    invoke-virtual {p2, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo p0, "onChildViewRemoved: child is ITEM_TYPE_FOLDER."

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p0

    if-eqz p0, :cond_b4

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkExpandChangeIsUpdate(Z)V

    :cond_b4
    return-void

    :cond_b5
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p2

    const-string/jumbo v2, "onChildViewRemoved,isNeedUpdateDb:"

    invoke-static {v2, p2, v0, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat$1;->this$0:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/OplusHotseat;->updateSizeAfterDeleteView(Z)V

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_d3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result p0

    if-eqz p0, :cond_d3

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->removeDividerAfterDeleteView()V

    :cond_d3
    return-void

    :cond_d4
    const-string/jumbo p0, "onChildViewRemoved: child - itemInfo: null."

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_da
    :goto_da
    return-void
.end method
