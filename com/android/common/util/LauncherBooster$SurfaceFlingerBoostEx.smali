.class public final Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/LauncherBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfaceFlingerBoostEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$Companion;
    }
.end annotation


# static fields
.field public static final CODE_GET_LAUNCHER_ANIM_INFO:I = 0x5220

.field public static final CODE_GET_LAUNCHER_ANIM_START:I = 0x5222

.field public static final Companion:Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$Companion;

.field private static final DISABLE:Z = true

.field public static final NANO_SECOND_UNIT:D = 1000000.0


# instance fields
.field private final sfManager:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;->Companion:Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;->sfManager:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final callGetLaunchAnimInfo(Ljava/lang/String;JJ)V
    .registers 6

    const-string p0, "logStr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final callSetAnimStatus()V
    .registers 1

    return-void
.end method

.method public final printLaunchAnimaTraceInfo()V
    .registers 1

    return-void
.end method
