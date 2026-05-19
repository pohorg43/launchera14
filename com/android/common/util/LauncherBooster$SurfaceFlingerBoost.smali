.class public final Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/LauncherBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfaceFlingerBoost"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherBooster.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherBooster.kt\ncom/android/common/util/LauncherBooster$SurfaceFlingerBoost\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,669:1\n1#2:670\n*E\n"
    }
.end annotation


# instance fields
.field private final sfManager:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->sfManager:Landroid/os/IBinder;

    return-void
.end method

.method public static synthetic open$default(Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;IIILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    const/16 p1, 0x1f4

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    const/16 p2, 0x521c

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(II)V

    return-void
.end method

.method public static synthetic open$default(Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;IILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/16 p1, 0x1f4

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    return-void
.end method


# virtual methods
.method public final open(I)V
    .registers 3

    const/16 v0, 0x521c

    invoke-virtual {p0, p1, v0}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(II)V

    return-void
.end method

.method public final open(II)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-gtz p1, :cond_d

    const/16 p1, 0x1f4

    :cond_d
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->sfManager:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    goto :goto_22

    :catchall_1d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_22
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_29

    goto :goto_31

    :cond_29
    const-string/jumbo p1, "notifySFAnimating failure, e="

    const-string p2, "LauncherBooster"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_31
    return-void
.end method
