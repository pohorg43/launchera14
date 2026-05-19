.class public final Lcom/oplus/channel/server/utils/PullAliveServiceAboutUtil;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007R\u0016\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\nR\u0016\u0010\u000f\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\n¨\u0006\u0012"
    }
    d2 = {
        "Lcom/oplus/channel/server/utils/PullAliveServiceAboutUtil;",
        "",
        "",
        "isLessThanVersionQ",
        "Landroid/content/Context;",
        "context",
        "",
        "packageName",
        "isPullAliveServiceInstalled",
        "TAG",
        "Ljava/lang/String;",
        "",
        "SDK_VERSION_Q",
        "I",
        "PULL_ALIVE_SERVICE_ACTION",
        "PULL_ALIVE_SERVICE_NAME",
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
.field public static final INSTANCE:Lcom/oplus/channel/server/utils/PullAliveServiceAboutUtil;

.field private static final PULL_ALIVE_SERVICE_ACTION:Ljava/lang/String; = "oplus.cardwidget.action.PULL_ALIVE_SERVICE"

.field private static final PULL_ALIVE_SERVICE_NAME:Ljava/lang/String; = "com.oplus.channel.client.service.PullAliveService"

.field private static final SDK_VERSION_Q:I = 0x1d

.field public static final TAG:Ljava/lang/String; = "PullAliveServiceAboutUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/utils/PullAliveServiceAboutUtil;

    invoke-direct {v0}, Lcom/oplus/channel/server/utils/PullAliveServiceAboutUtil;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/utils/PullAliveServiceAboutUtil;->INSTANCE:Lcom/oplus/channel/server/utils/PullAliveServiceAboutUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isLessThanVersionQ()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static final isPullAliveServiceInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oplus.cardwidget.action.PULL_ALIVE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oplus.channel.client.service.PullAliveService"

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const-string p1, "context.packageManager.q…IntentServices(intent, 0)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2a
    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p1, :cond_3b

    goto :goto_2a

    :cond_3b
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_4c
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_4f

    goto :goto_54

    :catchall_4f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_54
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_75

    const-string p1, "isPullAliveServiceInstalled e = ["

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PullAliveServiceAboutUtil"

    invoke-static {p1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    return v0
.end method
