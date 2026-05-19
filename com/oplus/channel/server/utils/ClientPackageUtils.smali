.class public final Lcom/oplus/channel/server/utils/ClientPackageUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007R\u0016\u0010\b\u001a\u00020\u00048\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\t¨\u0006\r"
    }
    d2 = {
        "Lcom/oplus/channel/server/utils/ClientPackageUtils;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "packageName",
        "getClientVersionCode",
        "getClientSdkVersionCode",
        "TAG",
        "Ljava/lang/String;",
        "CLIENT_SDK_VERSION",
        "<init>",
        "()V",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final CLIENT_SDK_VERSION:Ljava/lang/String; = "cardwidget.support.client.version.code"

.field public static final INSTANCE:Lcom/oplus/channel/server/utils/ClientPackageUtils;

.field public static final TAG:Ljava/lang/String; = "ClientPackageUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/utils/ClientPackageUtils;

    invoke-direct {v0}, Lcom/oplus/channel/server/utils/ClientPackageUtils;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/utils/ClientPackageUtils;->INSTANCE:Lcom/oplus/channel/server/utils/ClientPackageUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getClientSdkVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "0"

    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string p1, "packageManager.getApplic…ageManager.GET_META_DATA)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p1, "cardwidget.support.client.version.code"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2a

    goto :goto_2f

    :catchall_2a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getClientSdkVersionCode error : "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClientPackageUtils"

    invoke-static {p1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    return-object v0
.end method

.method public static final getClientVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "0"

    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1e

    goto :goto_23

    :catchall_1e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_23
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getClientVersionCode error : "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClientPackageUtils"

    invoke-static {p1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-object v0
.end method
