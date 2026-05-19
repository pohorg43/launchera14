.class public final Lcom/oplus/channel/server/statistics/StatisticsAction;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\u000b"
    }
    d2 = {
        "Lcom/oplus/channel/server/statistics/StatisticsAction;",
        "",
        "",
        "LIFE_CIRCLE_KEY",
        "Ljava/lang/String;",
        "LIFE_CIRCLE_VALUE_PAUSE",
        "LIFE_CIRCLE_VALUE_DESTROY",
        "LIFE_CIRCLE_VALUE_SUBSCRIBED",
        "LIFE_CIRCLE_VALUE_UNSUBSCRIBED",
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
.field public static final INSTANCE:Lcom/oplus/channel/server/statistics/StatisticsAction;

.field public static final LIFE_CIRCLE_KEY:Ljava/lang/String; = "life_circle"

.field public static final LIFE_CIRCLE_VALUE_DESTROY:Ljava/lang/String; = "destroy"

.field public static final LIFE_CIRCLE_VALUE_PAUSE:Ljava/lang/String; = "pause"

.field public static final LIFE_CIRCLE_VALUE_SUBSCRIBED:Ljava/lang/String; = "subscribed"

.field public static final LIFE_CIRCLE_VALUE_UNSUBSCRIBED:Ljava/lang/String; = "unsubscribed"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/statistics/StatisticsAction;

    invoke-direct {v0}, Lcom/oplus/channel/server/statistics/StatisticsAction;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/statistics/StatisticsAction;->INSTANCE:Lcom/oplus/channel/server/statistics/StatisticsAction;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
