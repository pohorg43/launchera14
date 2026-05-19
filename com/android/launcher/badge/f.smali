.class public final synthetic Lcom/android/launcher/badge/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/badge/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/badge/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/badge/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/badge/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/badge/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/badge/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsActivityCommand;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher/badge/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/badge/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher/badge/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/badge/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/badge/f;->a:I

    packed-switch v0, :pswitch_data_74

    goto :goto_69

    :pswitch_6  #0x8
    iget-object p0, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_11  #0x7
    iget-object p0, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1c  #0x6
    iget-object p0, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->n(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_27  #0x5
    iget-object p0, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/UserHandle;

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/FirstScreenBroadcast;->b(Landroid/os/UserHandle;Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0

    :pswitch_32  #0x4
    iget-object p0, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/Folder;->j(Lcom/android/launcher3/folder/Folder;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_3d  #0x3
    iget-object p0, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroid/content/pm/ProviderInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/Utilities;->a(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Z

    move-result p0

    return p0

    :pswitch_48  #0x2
    iget-object p0, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusWorkspace;

    check-cast p1, Lcom/android/launcher3/card/IAreaWidget;

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->U(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/card/IAreaWidget;)Z

    move-result p0

    return p0

    :pswitch_53  #0x1
    iget-object p0, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/recommend/FooterController;

    check-cast p1, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->d(Lcom/android/launcher/folder/recommend/FooterController;Lcom/android/launcher/folder/recommend/bean/DataBean;)Z

    move-result p0

    return p0

    :pswitch_5e  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_69
    iget-object p0, p0, Lcom/android/launcher/badge/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsActivityCommand;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsActivityCommand;->a(Lcom/android/quickstep/RecentsActivityCommand;Ljava/lang/Boolean;)Z

    move-result p0

    return p0

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5e  #00000000
        :pswitch_53  #00000001
        :pswitch_48  #00000002
        :pswitch_3d  #00000003
        :pswitch_32  #00000004
        :pswitch_27  #00000005
        :pswitch_1c  #00000006
        :pswitch_11  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
