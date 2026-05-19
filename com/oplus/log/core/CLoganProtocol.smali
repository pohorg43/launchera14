.class Lcom/oplus/log/core/CLoganProtocol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/core/LoganProtocolHandler;


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "opluslog"

.field private static final TAG:Ljava/lang/String; = "CLoganProtocol"

.field private static sIsCloganOk:Z


# instance fields
.field private mArraySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoganInit:Z

.field private mIsLoganOpen:Z

.field private mLoganProtocolStatus:Lcom/oplus/log/core/OnLoganProtocolStatus;

.field private nativeConfigPointer:J

.field private object:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "opluslog"

    :try_start_2
    const-class v1, Lcom/oplus/log/core/CLoganProtocol;

    invoke-static {v0, v1}, Lcom/oplus/log/core/Util;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/log/core/CLoganProtocol;->sIsCloganOk:Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_11

    goto :goto_14

    :catchall_11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/log/core/CLoganProtocol;->sIsCloganOk:Z

    :goto_14
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/core/CLoganProtocol;->mArraySet:Ljava/util/Set;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/log/core/CLoganProtocol;->nativeConfigPointer:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/core/CLoganProtocol;->object:Ljava/lang/Object;

    return-void
.end method

.method private static native clogan_debug(Z)V
.end method

.method private native clogan_flush()V
.end method

.method private native clogan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native clogan_open(Ljava/lang/String;)I
.end method

.method private native clogan_write(ILjava/lang/String;JLjava/lang/String;J)I
.end method

.method public static isCloganSuccess()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/log/core/CLoganProtocol;->sIsCloganOk:Z

    return v0
.end method

.method private loganStatusCode(Ljava/lang/String;I)V
    .registers 5

    if-gez p2, :cond_2b

    const-string v0, "clogan_write"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, -0xfdc

    if-eq p2, v0, :cond_24

    iget-object v0, p0, Lcom/oplus/log/core/CLoganProtocol;->mArraySet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/oplus/log/core/CLoganProtocol;->mArraySet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_24
    iget-object p0, p0, Lcom/oplus/log/core/CLoganProtocol;->mLoganProtocolStatus:Lcom/oplus/log/core/OnLoganProtocolStatus;

    if-eqz p0, :cond_2b

    invoke-interface {p0, p1, p2}, Lcom/oplus/log/core/OnLoganProtocolStatus;->loganProtocolStatus(Ljava/lang/String;I)V

    :cond_2b
    return-void
.end method


# virtual methods
.method public logan_debug(Z)V
    .registers 2

    iget-boolean p0, p0, Lcom/oplus/log/core/CLoganProtocol;->mIsLoganInit:Z

    if-eqz p0, :cond_24

    sget-boolean p0, Lcom/oplus/log/core/CLoganProtocol;->sIsCloganOk:Z

    if-nez p0, :cond_9

    goto :goto_24

    :cond_9
    :try_start_9
    invoke-static {p1}, Lcom/oplus/log/core/CLoganProtocol;->clogan_debug(Z)V
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_24

    :catch_d
    move-exception p0

    const-string p1, "static : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CLoganProtocol"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    return-void
.end method

.method public logan_flush()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/log/core/CLoganProtocol;->mIsLoganOpen:Z

    if-eqz v0, :cond_30

    sget-boolean v0, Lcom/oplus/log/core/CLoganProtocol;->sIsCloganOk:Z

    if-nez v0, :cond_9

    goto :goto_30

    :cond_9
    iget-object v0, p0, Lcom/oplus/log/core/CLoganProtocol;->object:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    invoke-direct {p0}, Lcom/oplus/log/core/CLoganProtocol;->clogan_flush()V
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_f} :catch_19
    .catchall {:try_start_c .. :try_end_f} :catchall_17

    :try_start_f
    iget-object p0, p0, Lcom/oplus/log/core/CLoganProtocol;->object:Ljava/lang/Object;

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_26

    :catchall_15
    move-exception p0

    goto :goto_2e

    :catchall_17
    move-exception v1

    goto :goto_28

    :catch_19
    move-exception v1

    :try_start_1a
    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_17

    :cond_23
    :try_start_23
    iget-object p0, p0, Lcom/oplus/log/core/CLoganProtocol;->object:Ljava/lang/Object;

    goto :goto_11

    :goto_26
    monitor-exit v0

    return-void

    :goto_28
    iget-object p0, p0, Lcom/oplus/log/core/CLoganProtocol;->object:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_15

    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method public logan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "clogan_init"

    iget-boolean v1, p0, Lcom/oplus/log/core/CLoganProtocol;->mIsLoganInit:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    sget-boolean v1, Lcom/oplus/log/core/CLoganProtocol;->sIsCloganOk:Z

    if-nez v1, :cond_13

    const/16 p1, -0x139c

    const-string p2, "logan_loadso"

    invoke-direct {p0, p2, p1}, Lcom/oplus/log/core/CLoganProtocol;->loganStatusCode(Ljava/lang/String;I)V

    return-void

    :cond_13
    :try_start_13
    invoke-direct/range {p0 .. p5}, Lcom/oplus/log/core/CLoganProtocol;->clogan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/oplus/log/core/CLoganProtocol;->mIsLoganInit:Z

    invoke-direct {p0, v0, p1}, Lcom/oplus/log/core/CLoganProtocol;->loganStatusCode(Ljava/lang/String;I)V
    :try_end_1d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_3a

    :catch_1e
    move-exception p1

    const-string p2, "logan_init : "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CLoganProtocol"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x424

    invoke-direct {p0, v0, p1}, Lcom/oplus/log/core/CLoganProtocol;->loganStatusCode(Ljava/lang/String;I)V

    :goto_3a
    return-void
.end method

.method public declared-synchronized logan_open(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/oplus/log/core/CLoganProtocol;->mIsLoganInit:Z

    if-eqz v0, :cond_3b

    sget-boolean v0, Lcom/oplus/log/core/CLoganProtocol;->sIsCloganOk:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3d

    if-nez v0, :cond_a

    goto :goto_3b

    :cond_a
    :try_start_a
    invoke-direct {p0, p1}, Lcom/oplus/log/core/CLoganProtocol;->clogan_open(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/log/core/CLoganProtocol;->mIsLoganOpen:Z

    const-string v0, "clogan_open"

    invoke-direct {p0, v0, p1}, Lcom/oplus/log/core/CLoganProtocol;->loganStatusCode(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_16} :catch_17
    .catchall {:try_start_a .. :try_end_16} :catchall_3d

    goto :goto_39

    :catch_17
    move-exception p1

    :try_start_18
    const-string v0, "CLoganProtocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logan_open : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "clogan_open"

    const/16 v0, -0x816

    invoke-direct {p0, p1, v0}, Lcom/oplus/log/core/CLoganProtocol;->loganStatusCode(Ljava/lang/String;I)V
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_3d

    :goto_39
    monitor-exit p0

    return-void

    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public logan_write(ILjava/lang/String;JLjava/lang/String;J)V
    .registers 9

    iget-boolean v0, p0, Lcom/oplus/log/core/CLoganProtocol;->mIsLoganOpen:Z

    if-eqz v0, :cond_3a

    sget-boolean v0, Lcom/oplus/log/core/CLoganProtocol;->sIsCloganOk:Z

    if-nez v0, :cond_9

    goto :goto_3a

    :cond_9
    iget-object v0, p0, Lcom/oplus/log/core/CLoganProtocol;->object:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    invoke-direct/range {p0 .. p7}, Lcom/oplus/log/core/CLoganProtocol;->clogan_write(ILjava/lang/String;JLjava/lang/String;J)I

    move-result p1

    const/16 p2, -0xfaa

    if-ne p1, p2, :cond_18

    sget-boolean p2, Lcom/oplus/log/core/Logan;->sDebug:Z

    if-eqz p2, :cond_1d

    :cond_18
    const-string p2, "clogan_write"

    invoke-direct {p0, p2, p1}, Lcom/oplus/log/core/CLoganProtocol;->loganStatusCode(Ljava/lang/String;I)V
    :try_end_1d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_1d} :catch_25
    .catchall {:try_start_c .. :try_end_1d} :catchall_23

    :cond_1d
    :try_start_1d
    iget-object p0, p0, Lcom/oplus/log/core/CLoganProtocol;->object:Ljava/lang/Object;

    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_37

    goto :goto_2f

    :catchall_23
    move-exception p1

    goto :goto_31

    :catch_25
    :try_start_25
    const-string p1, "clogan_write"

    const/16 p2, -0xfdc

    invoke-direct {p0, p1, p2}, Lcom/oplus/log/core/CLoganProtocol;->loganStatusCode(Ljava/lang/String;I)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_23

    :try_start_2c
    iget-object p0, p0, Lcom/oplus/log/core/CLoganProtocol;->object:Ljava/lang/Object;

    goto :goto_1f

    :goto_2f
    monitor-exit v0

    return-void

    :goto_31
    iget-object p0, p0, Lcom/oplus/log/core/CLoganProtocol;->object:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw p1

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_37

    throw p0

    :cond_3a
    :goto_3a
    return-void
.end method

.method public setOnLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/CLoganProtocol;->mLoganProtocolStatus:Lcom/oplus/log/core/OnLoganProtocolStatus;

    return-void
.end method
