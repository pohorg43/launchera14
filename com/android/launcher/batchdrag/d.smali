.class public final synthetic Lcom/android/launcher/batchdrag/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/batchdrag/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/batchdrag/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/batchdrag/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/batchdrag/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/batchdrag/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/batchdrag/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/batchdrag/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/batchdrag/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/batchdrag/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/batchdrag/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/batchdrag/d;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_32

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/launcher/batchdrag/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->a(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_11  #0x2
    iget-object p0, p0, Lcom/android/launcher/batchdrag/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduController;->b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result p0

    return p0

    :pswitch_1c  #0x1
    iget-object p0, p0, Lcom/android/launcher/batchdrag/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->b(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0

    :pswitch_27  #0x0
    iget-object p0, p0, Lcom/android/launcher/batchdrag/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/FolderInfo;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-static {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->c(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/BubbleTextView;)Z

    move-result p0

    return p0

    :goto_32
    iget-object p0, p0, Lcom/android/launcher/batchdrag/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->b(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_1c  #00000001
        :pswitch_11  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
