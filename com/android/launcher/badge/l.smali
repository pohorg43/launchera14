.class public final synthetic Lcom/android/launcher/badge/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/badge/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/badge/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/compat/content/pm/IPackageDataObserverNative;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/badge/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/badge/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/badge/l;->a:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_2a

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher/badge/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    check-cast p1, Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :pswitch_12  #0x1
    iget-object p0, p0, Lcom/android/launcher/badge/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    check-cast p1, Lcom/android/launcher3/model/data/PackageItemInfo;

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/model/WidgetsModel;->c(Ljava/util/Map;Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p2, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->i(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    return-void

    :goto_2a
    iget-object p0, p0, Lcom/android/launcher/badge/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/compat/content/pm/IPackageDataObserverNative;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/IPackageDataObserverNative;->onRemoveCompleted(Ljava/lang/String;Z)V

    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_12  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
