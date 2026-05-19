.class public Lcom/android/wm/shell/protolog/ShellProtoLogImpl;
.super Lcom/android/internal/protolog/BaseProtoLogImpl;
.source ""


# static fields
.field private static final BUFFER_CAPACITY:I = 0x100000

.field private static final LOG_FILENAME:Ljava/lang/String; = "/data/misc/wmtrace/shell_log.winscope"

.field private static final TAG:Ljava/lang/String; = "ProtoLogImpl"

.field private static final VIEWER_CONFIG_FILENAME:Ljava/lang/String; = "/system_ext/etc/wmshell.protolog.json.gz"

.field private static sServiceInstance:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->values()[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->addLogGroupEnum([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/shell_log.winscope"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-direct {v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;-><init>()V

    const-string v2, "/system_ext/etc/wmshell.protolog.json.gz"

    const/high16 v3, 0x100000

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/protolog/BaseProtoLogImpl;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/android/internal/protolog/ProtoLogViewerConfigReader;)V

    return-void
.end method

.method public static varargs d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->DEBUG:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->ERROR:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;
    .registers 2

    const-class v0, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->sServiceInstance:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-direct {v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;-><init>()V

    sput-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->sServiceInstance:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    :cond_e
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->sServiceInstance:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->INFO:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .registers 2

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public static varargs v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->VERBOSE:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->WARN:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->WTF:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public startTextLogging([Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 5

    iget-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    const-string v1, "/system_ext/etc/wmshell.protolog.json.gz"

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, p2, p1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public stopTextLogging([Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
