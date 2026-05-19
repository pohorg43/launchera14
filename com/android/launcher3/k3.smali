.class public final synthetic Lcom/android/launcher3/k3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/k3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/k3;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/k3;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/k3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/k3;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/k3;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/k3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/k3;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/k3;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/k3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/k3;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/k3;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/k3;->a:I

    packed-switch v0, :pswitch_data_42

    goto :goto_33

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/k3;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/k3;->c:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->g(Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result p0

    return p0

    :pswitch_15  #0x1
    iget-object v0, p0, Lcom/android/launcher3/k3;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher3/k3;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/ComponentName;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/PredictionUpdateTask;->n(Landroid/os/UserHandle;Landroid/content/ComponentName;Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result p0

    return p0

    :pswitch_24  #0x0
    iget-object v0, p0, Lcom/android/launcher3/k3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/PackageUserKey;

    iget-object p0, p0, Lcom/android/launcher3/k3;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/Workspace;->w(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_33
    iget-object v0, p0, Lcom/android/launcher3/k3;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/k3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->a(Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_15  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
