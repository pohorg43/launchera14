.class public final synthetic Lcom/android/launcher/g0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;
.implements Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;


# static fields
.field public static final synthetic a:Lcom/android/launcher/g0;

.field public static final synthetic b:Lcom/android/launcher/g0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/g0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/g0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/g0;->a:Lcom/android/launcher/g0;

    new-instance v0, Lcom/android/launcher/g0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/g0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/g0;->b:Lcom/android/launcher/g0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;FF)V
    .registers 4

    check-cast p1, Lcom/android/launcher/OplusPagedViewImpl;

    invoke-static {p1, p2, p3}, Lcom/android/launcher/OplusPagedViewImpl;->i(Lcom/android/launcher/OplusPagedViewImpl;FF)V

    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/model/LoaderTask;->b(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method
