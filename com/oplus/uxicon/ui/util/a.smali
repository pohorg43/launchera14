.class public final Lcom/oplus/uxicon/ui/util/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/uxicon/ui/util/a;

    invoke-direct {v0}, Lcom/oplus/uxicon/ui/util/a;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Landroid/content/res/Configuration;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    const-string v0, "activity"

    invoke-static {v0}, Lcom/oplus/wrapper/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/wrapper/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/wrapper/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/wrapper/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "{\n            IActivityM…).configuration\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_30

    :catch_14
    move-exception v0

    const-string v1, "getConfiguration exception: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    :goto_30
    return-object v0
.end method
