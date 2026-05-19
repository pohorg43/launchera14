.class public final synthetic Lcom/android/launcher3/model/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;
.implements Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/model/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ItemInstallQueue;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/model/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/model/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntSet;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/model/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/model/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createInfo(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/model/ItemInstallQueue;->b(Lcom/android/launcher3/model/ItemInstallQueue;ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/m;->a:I

    packed-switch v0, :pswitch_data_36

    :pswitch_5  #0x1, 0x4
    goto :goto_2e

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusModelWriter;->q(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_e  #0x5
    iget-object p0, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->k(Ljava/util/Collection;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_16  #0x3
    iget-object p0, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/LoaderResults;->e(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_1e  #0x2
    iget-object p0, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->g(Ljava/util/function/Predicate;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_26  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntSet;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->h(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_2e
    iget-object p0, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->m(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_5  #00000001
        :pswitch_1e  #00000002
        :pswitch_16  #00000003
        :pswitch_5  #00000004
        :pswitch_e  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/model/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onWidgetLabelsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method
