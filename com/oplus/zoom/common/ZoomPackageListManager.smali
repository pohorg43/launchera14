.class public Lcom/oplus/zoom/common/ZoomPackageListManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomPackageListManager"

.field private static final UNSUPPORT_FLOAT_ZOOM_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSUPPORT_ZOOM_MENU_PACKAGE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/oplus/zoom/common/ZoomPackageListManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.oplus.safecenter"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/zoom/common/ZoomPackageListManager;->UNSUPPORT_ZOOM_MENU_PACKAGE_LIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/zoom/common/ZoomPackageListManager;->UNSUPPORT_FLOAT_ZOOM_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/zoom/common/ZoomPackageListManager;
    .registers 2

    sget-object v0, Lcom/oplus/zoom/common/ZoomPackageListManager;->sInstance:Lcom/oplus/zoom/common/ZoomPackageListManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/zoom/common/ZoomPackageListManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/zoom/common/ZoomPackageListManager;->sInstance:Lcom/oplus/zoom/common/ZoomPackageListManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/zoom/common/ZoomPackageListManager;

    invoke-direct {v1}, Lcom/oplus/zoom/common/ZoomPackageListManager;-><init>()V

    sput-object v1, Lcom/oplus/zoom/common/ZoomPackageListManager;->sInstance:Lcom/oplus/zoom/common/ZoomPackageListManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/zoom/common/ZoomPackageListManager;->sInstance:Lcom/oplus/zoom/common/ZoomPackageListManager;

    return-object v0
.end method

.method public static isUnSupportFloatZoom(Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p0, :cond_10

    sget-object v0, Lcom/oplus/zoom/common/ZoomPackageListManager;->UNSUPPORT_FLOAT_ZOOM_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static isUnSupportFloatZoom(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    sget-object v0, Lcom/oplus/zoom/common/ZoomPackageListManager;->UNSUPPORT_FLOAT_ZOOM_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isUnSupportZoomMenu(Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p0, :cond_10

    sget-object v0, Lcom/oplus/zoom/common/ZoomPackageListManager;->UNSUPPORT_ZOOM_MENU_PACKAGE_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static isUnSupportZoomMenu(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    sget-object v0, Lcom/oplus/zoom/common/ZoomPackageListManager;->UNSUPPORT_ZOOM_MENU_PACKAGE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
