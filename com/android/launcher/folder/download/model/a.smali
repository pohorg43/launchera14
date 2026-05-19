.class public final synthetic Lcom/android/launcher/folder/download/model/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/folder/download/model/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/folder/download/model/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/download/model/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/ActivityTracker;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/folder/download/model/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/folder/download/model/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher/folder/download/model/a;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2c

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0

    :pswitch_11  #0x2
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherProvider;

    invoke-static {p0}, Lcom/android/launcher3/LauncherProvider;->e(Lcom/android/launcher3/LauncherProvider;)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object p0

    return-object p0

    :pswitch_1a  #0x1
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->d(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :pswitch_23  #0x0
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->m(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p0

    return-object p0

    :goto_2c
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->l(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_1a  #00000001
        :pswitch_11  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
