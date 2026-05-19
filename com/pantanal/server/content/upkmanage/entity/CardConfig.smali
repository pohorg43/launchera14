.class public final Lcom/pantanal/server/content/upkmanage/entity/CardConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006¨\u0006\u0011"
    }
    d2 = {
        "Lcom/pantanal/server/content/upkmanage/entity/CardConfig;",
        "",
        "Lcom/google/gson/JsonArray;",
        "clicks",
        "Lcom/google/gson/JsonArray;",
        "getClicks",
        "()Lcom/google/gson/JsonArray;",
        "Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;",
        "host",
        "Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;",
        "getHost",
        "()Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;",
        "eventWhiteList",
        "getEventWhiteList",
        "<init>",
        "()V",
        "Host",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final clicks:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "click"
    .end annotation
.end field

.field private final eventWhiteList:Lcom/google/gson/JsonArray;

.field private final host:Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClicks()Lcom/google/gson/JsonArray;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/entity/CardConfig;->clicks:Lcom/google/gson/JsonArray;

    return-object p0
.end method

.method public final getEventWhiteList()Lcom/google/gson/JsonArray;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/entity/CardConfig;->eventWhiteList:Lcom/google/gson/JsonArray;

    return-object p0
.end method

.method public final getHost()Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/entity/CardConfig;->host:Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;

    return-object p0
.end method
