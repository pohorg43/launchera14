.class public final synthetic Lcom/android/launcher3/model/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/model/data/PromiseAppInfo;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/l;->a:I

    packed-switch v0, :pswitch_data_26

    :pswitch_5  #0x1
    goto :goto_1e

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->v(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_e  #0x2
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/model/data/PromiseAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->n(Lcom/android/launcher/model/data/PromiseAppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->i(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->l(Ljava/util/HashSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_5  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onWidgetLabelsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method
