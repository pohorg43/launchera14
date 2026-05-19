.class public final synthetic Lcom/android/launcher3/model/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/model/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLoaderResults;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/model/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusSimpleLoaderTask;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/model/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/model/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/model/o;->a:I

    packed-switch v0, :pswitch_data_5a

    goto :goto_4e

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->n(Lcom/android/launcher/Launcher;Ljava/util/List;)V

    return-void

    :pswitch_12  #0x4
    iget-object v0, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object p0, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntSet;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->t(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V

    return-void

    :pswitch_1e  #0x3
    iget-object v0, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->l(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_2a  #0x2
    iget-object v0, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->q(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V

    return-void

    :pswitch_36  #0x1
    iget-object v0, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/BaseLoaderResults;

    iget-object p0, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherModel$CallbackTask;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/BaseLoaderResults;->a(Lcom/android/launcher3/model/BaseLoaderResults;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void

    :pswitch_42  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;

    iget-object p0, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherModel$CallbackTask;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->c(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void

    :goto_4e
    iget-object v0, p0, Lcom/android/launcher3/model/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/OplusSimpleLoaderTask;

    iget-object p0, p0, Lcom/android/launcher3/model/o;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusSimpleLoaderTask;->d(Lcom/android/launcher3/model/OplusSimpleLoaderTask;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_42  #00000000
        :pswitch_36  #00000001
        :pswitch_2a  #00000002
        :pswitch_1e  #00000003
        :pswitch_12  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
