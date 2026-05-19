.class public final synthetic Lcom/android/launcher/badge/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusLoaderCursor;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/badge/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/badge/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/shortcuts/ShortcutKey;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/badge/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/badge/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/badge/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleData;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/badge/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/badge/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/badge/h;->a:I

    packed-switch v0, :pswitch_data_54

    goto :goto_48

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->h(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0

    :pswitch_11  #0x4
    iget-object p0, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->b(Ljava/util/Set;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_1c  #0x3
    iget-object p0, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/FolderInfo;

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/data/FolderInfo;->g(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :pswitch_27  #0x2
    iget-object p0, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/OplusLoaderCursor;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :pswitch_32  #0x1
    iget-object p0, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/shortcuts/ShortcutKey;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->q(Lcom/android/launcher3/shortcuts/ShortcutKey;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_3d  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_48
    iget-object p0, p0, Lcom/android/launcher/badge/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleData;

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->a(Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/Bubble;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3d  #00000000
        :pswitch_32  #00000001
        :pswitch_27  #00000002
        :pswitch_1c  #00000003
        :pswitch_11  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
