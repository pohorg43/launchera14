.class public final synthetic Lcom/android/launcher/shimmer/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/shimmer/IconShimmerManager;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/shimmer/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderPagedView;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/shimmer/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/shimmer/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/shimmer/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/shimmer/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/shimmer/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/shimmer/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher/shimmer/c;->a:I

    packed-switch v0, :pswitch_data_58

    goto :goto_48

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->c(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/lang/String;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p0

    return-object p0

    :pswitch_11  #0x4
    iget-object p0, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->f(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object p0

    return-object p0

    :pswitch_1c  #0x3
    iget-object p0, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolder;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_27  #0x2
    iget-object p0, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/FolderPagedView;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_32  #0x1
    iget-object p0, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p0

    return-object p0

    :pswitch_3d  #0x0
    iget-object p0, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/shimmer/IconShimmerManager;

    check-cast p1, Lcom/android/launcher/shimmer/IShimmerView;

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->c(Lcom/android/launcher/shimmer/IconShimmerManager;Lcom/android/launcher/shimmer/IShimmerView;)Lcom/android/launcher/shimmer/ShimmerDrawable;

    move-result-object p0

    return-object p0

    :goto_48
    iget-object p0, p0, Lcom/android/launcher/shimmer/c;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz8/b;

    return-object p0

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_3d  #00000000
        :pswitch_32  #00000001
        :pswitch_27  #00000002
        :pswitch_1c  #00000003
        :pswitch_11  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
