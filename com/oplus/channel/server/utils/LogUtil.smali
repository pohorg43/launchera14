.class public final Lcom/oplus/channel/server/utils/LogUtil;
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\'\u0010(J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0007J$\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007J\u001a\u0010\t\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0007J$\u0010\t\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007J\u001a\u0010\n\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0007J$\u0010\n\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007J\u001a\u0010\u000b\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0007J$\u0010\u000b\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007J\u001a\u0010\f\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0007J$\u0010\f\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007J\u001a\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0007J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0007R\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010\u0015R\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010\u0015R\u0016\u0010#\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010\u0015R\u001e\u0010%\u001a\n $*\u0004\u0018\u00010\u000f0\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006)"
    }
    d2 = {
        "Lcom/oplus/channel/server/utils/LogUtil;",
        "",
        "",
        "tag",
        "msg",
        "Lh4/z;",
        "d",
        "",
        "th",
        "v",
        "i",
        "w",
        "e",
        "Landroid/content/Context;",
        "context",
        "Landroid/net/Uri;",
        "uri",
        "dynamicUpdateDebugSwitch",
        "registerDebugContentObserver",
        "unRegisterDebugContentObserver",
        "TAG",
        "Ljava/lang/String;",
        "HEAD",
        "head",
        "Lcom/oplus/channel/server/utils/LogInterface;",
        "logInterface",
        "Lcom/oplus/channel/server/utils/LogInterface;",
        "",
        "debuggable",
        "Z",
        "Landroid/database/ContentObserver;",
        "debugSwitchObserver",
        "Landroid/database/ContentObserver;",
        "PARAM_LOG_SWITCH_STATUS",
        "KEY_DEBUG_SWITCHER",
        "ON",
        "kotlin.jvm.PlatformType",
        "logSwitchStatusUri",
        "Landroid/net/Uri;",
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
.field private static final HEAD:Ljava/lang/String; = "Channel.Server[1000028]"

.field public static final INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

.field private static final KEY_DEBUG_SWITCHER:Ljava/lang/String; = "log_switch_type"

.field private static final ON:Ljava/lang/String; = "1"

.field private static final PARAM_LOG_SWITCH_STATUS:Ljava/lang/String; = "log_switch_status"

.field private static final TAG:Ljava/lang/String; = "ChannelServerLogUtil"

.field private static debugSwitchObserver:Landroid/database/ContentObserver;

.field private static debuggable:Z

.field private static head:Ljava/lang/String;

.field private static logInterface:Lcom/oplus/channel/server/utils/LogInterface;

.field private static final logSwitchStatusUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/utils/LogUtil;

    invoke-direct {v0}, Lcom/oplus/channel/server/utils/LogUtil;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v0, "Channel.Server[1000028]"

    sput-object v0, Lcom/oplus/channel/server/utils/LogUtil;->head:Ljava/lang/String;

    const-string v0, "content://com.oplus.pantanal.ums.decision/log_switch_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logSwitchStatusUri:Landroid/net/Uri;

    new-instance v0, Lcom/oplus/channel/server/utils/LogUtil$1;

    invoke-direct {v0}, Lcom/oplus/channel/server/utils/LogUtil$1;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDebuggable$p()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/channel/server/utils/LogUtil;->debuggable:Z

    return v0
.end method

.method public static final synthetic access$getHead$p()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->head:Ljava/lang/String;

    return-object v0
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/oplus/channel/server/utils/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {v0, p0, p1, p2}, Lcom/oplus/channel/server/utils/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final dynamicUpdateDebugSwitch(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "log_switch_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move p0, v0

    goto :goto_16

    :cond_15
    move p0, v1

    :goto_16
    sput-boolean p0, Lcom/oplus/channel/server/utils/LogUtil;->debuggable:Z

    if-nez p1, :cond_1b

    goto :goto_2e

    :cond_1b
    if-nez p0, :cond_2b

    const-string p0, "log_switch_status"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2b
    move v1, v0

    :cond_2c
    sput-boolean v1, Lcom/oplus/channel/server/utils/LogUtil;->debuggable:Z

    :goto_2e
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/oplus/channel/server/utils/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {v0, p0, p1, p2}, Lcom/oplus/channel/server/utils/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/oplus/channel/server/utils/LogInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {v0, p0, p1, p2}, Lcom/oplus/channel/server/utils/LogInterface;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final registerDebugContentObserver(Landroid/content/Context;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    const-string v0, "log_switch_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/oplus/channel/server/utils/LogUtil$registerDebugContentObserver$1$1;

    invoke-direct {v1, p0}, Lcom/oplus/channel/server/utils/LogUtil$registerDebugContentObserver$1$1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/channel/server/utils/LogUtil;->debugSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel.Server[1000028]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pkg"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "."

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v5, v4}, Lk7/q;->F(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oplus/channel/server/utils/LogUtil;->head:Ljava/lang/String;

    sget-object v1, Lcom/oplus/channel/server/utils/LogUtil;->debugSwitchObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_4e

    const/4 p0, 0x0

    goto :goto_66

    :cond_4e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oplus/channel/server/utils/LogUtil;->logSwitchStatusUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_61

    goto :goto_66

    :catchall_61
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_66
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_73

    const-string v0, "ChannelServerLogUtil"

    const-string v1, "registerContentObserver error"

    invoke-static {v0, v1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_73
    return-void
.end method

.method public static final unRegisterDebugContentObserver(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->debugSwitchObserver:Landroid/database/ContentObserver;

    const-string v1, "unRegisterDebugContentObserver = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChannelServerLogUtil"

    invoke-static {v1, v0}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_12
    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->debugSwitchObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_18

    const/4 p0, 0x0

    goto :goto_27

    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_27
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_32

    const-string v0, "unRegisterDebugContentObserver error"

    invoke-static {v1, v0, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_32
    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/oplus/channel/server/utils/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {v0, p0, p1, p2}, Lcom/oplus/channel/server/utils/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/oplus/channel/server/utils/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {v0, p0, p1, p2}, Lcom/oplus/channel/server/utils/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
