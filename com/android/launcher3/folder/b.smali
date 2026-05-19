.class public final synthetic Lcom/android/launcher3/folder/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/folder/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/folder/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/b;->a:I

    packed-switch v0, :pswitch_data_32

    goto :goto_27

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher3/folder/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->e(Ljava/util/HashMap;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0

    :pswitch_11  #0x1
    iget-object p0, p0, Lcom/android/launcher3/folder/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    check-cast p1, Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    return-object p0

    :pswitch_1c  #0x0
    iget-object p0, p0, Lcom/android/launcher3/folder/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :goto_27
    iget-object p0, p0, Lcom/android/launcher3/folder/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {p0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->f(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c  #00000000
        :pswitch_11  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
