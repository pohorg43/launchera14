.class public final Lcom/android/common/util/VRRServiceHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/VRRServiceHelper$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/VRRServiceHelper$INSTANCE;

.field private static final OPLUS_VRR_SERVICE:Ljava/lang/String; = "oplus_vrr_service"

.field private static final OPLUS_VRR_SERVICE_INTERFACE:Ljava/lang/String; = "com.oplus.vrr.IOPlusRefreshRate"

.field private static final OPLUS_VRR_SERVICE_TRANSACT_CODE:I = 0x23

.field private static final TAG:Ljava/lang/String; = "VRRServiceHelper"


# instance fields
.field private final vrrService$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/VRRServiceHelper$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/VRRServiceHelper$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/VRRServiceHelper;->INSTANCE:Lcom/android/common/util/VRRServiceHelper$INSTANCE;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/common/util/VRRServiceHelper$vrrService$2;->INSTANCE:Lcom/android/common/util/VRRServiceHelper$vrrService$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/VRRServiceHelper;->vrrService$delegate:Lh4/f;

    return-void
.end method

.method public static synthetic a(Lcom/android/common/util/VRRServiceHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/VRRServiceHelper;->notifyLauncherEvent$lambda$2(Lcom/android/common/util/VRRServiceHelper;)V

    return-void
.end method

.method private final getVrrService()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/VRRServiceHelper;->vrrService$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method private static final notifyLauncherEvent$lambda$2(Lcom/android/common/util/VRRServiceHelper;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyLauncherEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/common/util/VRRServiceHelper;->getVrrService()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VRRServiceHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_21
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v2, "com.oplus.vrr.IOPlusRefreshRate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0}, Lcom/android/common/util/VRRServiceHelper;->getVrrService()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_3a

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {p0, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    :cond_3a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_40

    goto :goto_45

    :catchall_40
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_45
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4c

    goto :goto_52

    :cond_4c
    const-string/jumbo v0, "notifyGestureExit failure, e="

    invoke-static {v0, p0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_52
    return-void
.end method


# virtual methods
.method public final notifyLauncherEvent()V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isNotifyDisplayGestureToHome()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/core/widget/a;

    invoke-direct {v1, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/common/util/VRRServiceHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method
