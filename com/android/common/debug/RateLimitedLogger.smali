.class public final Lcom/android/common/debug/RateLimitedLogger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/debug/RateLimitedLogger$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/debug/RateLimitedLogger$Companion;

.field private static final INSTANCE$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/android/common/debug/RateLimitedLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIME_LIMIT_MS:J = 0x3e8L


# instance fields
.field private final lastLogTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/debug/RateLimitedLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/debug/RateLimitedLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/debug/RateLimitedLogger;->Companion:Lcom/android/common/debug/RateLimitedLogger$Companion;

    sget-object v0, Lcom/android/common/debug/RateLimitedLogger$Companion$INSTANCE$2;->INSTANCE:Lcom/android/common/debug/RateLimitedLogger$Companion$INSTANCE$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/debug/RateLimitedLogger;->INSTANCE$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/debug/RateLimitedLogger;->lastLogTimeMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getINSTANCE$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/common/debug/RateLimitedLogger;->INSTANCE$delegate:Lh4/f;

    return-object v0
.end method


# virtual methods
.method public final logDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/common/debug/RateLimitedLogger;->lastLogTimeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3b

    :cond_2f
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p0, p0, Lcom/android/common/debug/RateLimitedLogger;->lastLogTimeMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    return-void
.end method
