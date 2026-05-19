.class public final Lz8/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz8/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lz8/f;
    .registers 2

    sget-object v0, Lz8/f;->g:Lz8/f;

    if-nez v0, :cond_15

    monitor-enter p0

    :try_start_5
    sget-object v0, Lz8/f;->g:Lz8/f;

    if-nez v0, :cond_10

    new-instance v0, Lz8/f;

    invoke-direct {v0}, Lz8/f;-><init>()V

    sput-object v0, Lz8/f;->g:Lz8/f;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    goto :goto_15

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    :goto_15
    return-object v0
.end method
