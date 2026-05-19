.class public final Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->onHotseatExpandDataChange(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $packages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;->$packages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;->run$lambda$0(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Ljava/util/List;)V

    return-void
.end method

.method private static final run$lambda$0(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Ljava/util/List;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->access$getMItemInfos$p(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->access$getMItemInfos$p(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->access$getMOnDataChangeListenerListener$p(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;)Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-interface {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;->onDataChange(Ljava/util/List;)V

    :cond_22
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->access$getMLoadExpandTask$p(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;->$packages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->getMContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "appPackageName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->createExpandItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_37
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->access$getMIsLayoutRtl$p(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-static {v0}, Li4/u;->w(Ljava/util/List;)V

    :cond_42
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$onHotseatExpandDataChange$task$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    new-instance v1, Lcom/android/launcher/widget/a;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Ljava/util/List;)V

    invoke-static {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->access$runOnMain(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;Ljava/lang/Runnable;)V

    return-void
.end method
