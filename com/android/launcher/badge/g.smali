.class public final synthetic Lcom/android/launcher/badge/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/badge/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntSet;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/badge/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/badge/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/badge/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/badge/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/badge/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/badge/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/badge/g;->a:I

    packed-switch v0, :pswitch_data_54

    goto :goto_48

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntSet;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->f(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_11  #0x4
    iget-object p0, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->h(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0

    :pswitch_1c  #0x3
    iget-object p0, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->l(Ljava/util/Set;Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0

    :pswitch_27  #0x2
    iget-object p0, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/FolderNameInfos;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_32  #0x1
    iget-object p0, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3d  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_48
    iget-object p0, p0, Lcom/android/launcher/badge/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

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
