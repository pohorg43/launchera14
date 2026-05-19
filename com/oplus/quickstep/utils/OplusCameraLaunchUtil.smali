.class public final Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusCameraLaunchUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusCameraLaunchUtil.kt\ncom/oplus/quickstep/utils/OplusCameraLaunchUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n1#2:133\n*E\n"
    }
.end annotation


# static fields
.field private static final CAMERA_CALL_ARG:Ljava/lang/String; = "bindBinder"

.field private static final CAMERA_CALL_METHOD:Ljava/lang/String; = "notifyLaunchingByRecentApps"

.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.camera"

.field private static final CAMERA_PROVIDER_URI:Ljava/lang/String; = "com.oplus.camera.entry"

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;

.field private static final KEY_CAMERA_BINDER_DESCRIPTOR:Ljava/lang/String; = "key_camera_binder_descriptor"

.field private static final KEY_CAMERA_BINDER_TO_LAUNCH:Ljava/lang/String; = "key_camera_binder_to_launch"

.field private static final KEY_CAMERA_BINDER_TRANSACTION:Ljava/lang/String; = "key_camera_binder_transaction"

.field private static final TAG:Ljava/lang/String; = "OplusCameraLaunchUtil"

.field private static mCameraBinder:Landroid/os/IBinder;

.field private static mCameraBinderDescriptor:Ljava/lang/String;

.field private static final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private static mNotifyCameraLaunchCode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->INSTANCE:Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;

    sget-object v0, Lcom/oplus/quickstep/utils/h;->a:Lcom/oplus/quickstep/utils/h;

    sput-object v0, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->startActivityFromRecents$lambda$6$lambda$5(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->startActivityFromRecents$lambda$6(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mDeathRecipient$lambda$0()V

    return-void
.end method

.method private static final isLaunchCamera(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "com.oplus.camera"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static final linkToDeath()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mCameraBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_f

    goto :goto_14

    :cond_d
    const/4 v0, 0x0

    goto :goto_14

    :catchall_f
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_22

    :cond_1b
    const-string v0, "OplusCameraLaunchUtil"

    const-string v1, "Failed to link camera death recipient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method

.method private static final mDeathRecipient$lambda$0()V
    .registers 2

    const-string v0, "OplusCameraLaunchUtil"

    const-string v1, "camera binder maybe died, so we should clear now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mCameraBinder:Landroid/os/IBinder;

    return-void
.end method

.method private static final notifyCameraLaunch()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "OplusCameraLaunchUtil"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_6
    sget-object v2, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mCameraBinderDescriptor:Ljava/lang/String;

    if-nez v2, :cond_c

    const-string v2, ""

    :cond_c
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-string v2, "notify camera launch"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mCameraBinder:Landroid/os/IBinder;

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    sget v4, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mNotifyCameraLaunchCode:I

    const/4 v5, 0x1

    invoke-interface {v2, v4, v1, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    goto :goto_2a

    :catchall_25
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_34

    goto :goto_48

    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify camera launch exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return-void
.end method

.method public static final startActivityFromRecents(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "taskKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->isLaunchCamera(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, Lcom/android/exceptionmonitor/util/e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/exceptionmonitor/util/e;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    invoke-virtual {p1, v6}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final startActivityFromRecents$lambda$6(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .registers 11

    const-string v0, "OplusCameraLaunchUtil"

    const-string v1, "$taskKey"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$options"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$resultCallback"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mCameraBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-nez v1, :cond_9d

    if-eqz p0, :cond_a0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_a0

    const-string v3, "com.oplus.camera.entry"

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz v1, :cond_a0

    :try_start_26
    const-string v3, "notifyLaunchingByRecentApps"

    const-string v4, "bindBinder"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "key_camera_binder_to_launch"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    sput-object v4, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mCameraBinder:Landroid/os/IBinder;

    const-string v4, "key_camera_binder_descriptor"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mCameraBinderDescriptor:Ljava/lang/String;

    const-string v4, "key_camera_binder_transaction"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mNotifyCameraLaunchCode:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mCameraBinder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mCameraBinderDescriptor:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v4, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->mNotifyCameraLaunchCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->linkToDeath()V

    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_73
    .catchall {:try_start_26 .. :try_end_73} :catchall_74

    goto :goto_79

    :catchall_74
    move-exception v3

    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_79
    const-string v4, "callProvider, close connection"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_88

    goto :goto_a0

    :cond_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callProvider, exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    :cond_9d
    invoke-static {}, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->notifyCameraLaunch()V

    :cond_a0
    :goto_a0
    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    new-instance v1, Lcom/oplus/quickstep/gesture/g;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oplus/quickstep/gesture/g;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    invoke-virtual {v0, p0, v2, v2, v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->delayStartActivityIfNeed(Landroid/content/Context;Landroid/content/Intent;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_b8

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecentsAsyncByClick(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    :cond_b8
    return-void
.end method

.method private static final startActivityFromRecents$lambda$6$lambda$5(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .registers 6

    const-string v0, "$taskKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resultCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OplusCameraLaunchUtil"

    const-string v1, "startActivityFromRecents: run callback delay."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecentsAsyncByClick(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method
