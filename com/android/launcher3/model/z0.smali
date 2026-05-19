.class public final synthetic Lcom/android/launcher3/model/z0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/z0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/z0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/model/z0;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/z0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/IconCache;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->updateSessionCache(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/launcher3/model/z0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController;

    check-cast p1, Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->h(Lcom/android/wm/shell/pip/phone/PipController;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
