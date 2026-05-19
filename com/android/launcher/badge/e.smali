.class public final synthetic Lcom/android/launcher/badge/e;
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

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/badge/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/LoaderCursor;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/badge/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/notification/NotificationListener;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/badge/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/badge/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/badge/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/badge/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/badge/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/badge/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/badge/e;->a:I

    packed-switch v0, :pswitch_data_5e

    goto :goto_53

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->c(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0

    :pswitch_11  #0x5
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1c  #0x4
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/notification/NotificationListener;

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    invoke-static {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->f(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0

    :pswitch_27  #0x3
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->o(Landroid/os/UserHandle;Lcom/android/launcher3/util/ComponentKey;)Z

    move-result p0

    return p0

    :pswitch_32  #0x2
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->p(Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :pswitch_3d  #0x1
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/LoaderCursor;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :pswitch_48  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_53
    iget-object p0, p0, Lcom/android/launcher/badge/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isTaskPacagePrivacy(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_3d  #00000001
        :pswitch_32  #00000002
        :pswitch_27  #00000003
        :pswitch_1c  #00000004
        :pswitch_11  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
