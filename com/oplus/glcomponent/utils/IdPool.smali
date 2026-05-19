.class public final Lcom/oplus/glcomponent/utils/IdPool;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0010J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007J\u0006\u0010\u0006\u001a\u00020\u0004R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001c\u0010\u0011\u001a\u00020\u00028F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0014\u001a\u00020\u00028F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0012\u0010\u000eR\u0013\u0010\u0016\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000e¨\u0006\u0018"
    }
    d2 = {
        "Lcom/oplus/glcomponent/utils/IdPool;",
        "",
        "",
        "id",
        "Lh4/z;",
        "recycleId",
        "clean",
        "",
        "POOL_LIMIT",
        "I",
        "Ljava/util/Queue;",
        "IdList",
        "Ljava/util/Queue;",
        "getTextureId",
        "()[I",
        "getTextureId$annotations",
        "()V",
        "textureId",
        "getBufferId",
        "getBufferId$annotations",
        "bufferId",
        "getStateId",
        "stateId",
        "<init>",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/glcomponent/utils/IdPool;

.field private static final IdList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final POOL_LIMIT:I = 0x400


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/glcomponent/utils/IdPool;

    invoke-direct {v0}, Lcom/oplus/glcomponent/utils/IdPool;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/utils/IdPool;->INSTANCE:Lcom/oplus/glcomponent/utils/IdPool;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getBufferId()[I
    .registers 4

    const-class v0, Lcom/oplus/glcomponent/utils/IdPool;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    new-array v1, v1, [I

    goto :goto_15

    :cond_f
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :goto_15
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    const-string v2, "id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic getBufferId$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final declared-synchronized getTextureId()[I
    .registers 3

    const-class v0, Lcom/oplus/glcomponent/utils/IdPool;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    new-array v1, v1, [I

    goto :goto_15

    :cond_f
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :goto_15
    const/4 v2, 0x0

    aput v2, v1, v2

    const-string v2, "id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic getTextureId$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final declared-synchronized recycleId([I)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/oplus/glcomponent/utils/IdPool;

    monitor-enter v0

    if-nez p0, :cond_7

    monitor-exit v0

    return-void

    :cond_7
    :try_start_7
    array-length v1, p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_1e

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    :try_start_d
    sget-object v1, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1e

    const/16 v3, 0x400

    if-lt v2, v3, :cond_19

    monitor-exit v0

    return-void

    :cond_19
    :try_start_19
    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized clean()V
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getStateId()[I
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [I

    goto :goto_13

    :cond_d
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_13
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const-string v1, "id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
