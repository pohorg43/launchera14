.class public final Lcom/pantanal/server/content/upkmanage/entity/UpkConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$a;,
        Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 \t2\u00020\u0001:\u0002\n\u000bB\u0007¢\u0006\u0004\b\u0007\u0010\bR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"
    }
    d2 = {
        "Lcom/pantanal/server/content/upkmanage/entity/UpkConfig;",
        "",
        "Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;",
        "runtime",
        "Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;",
        "getRuntime",
        "()Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;",
        "<init>",
        "()V",
        "Companion",
        "a",
        "Runtime",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final CAR:Ljava/lang/String; = "car"

.field public static final Companion:Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$a;

.field private static final DESKTOP:Ljava/lang/String; = "desktop"

.field private static final NOTIFICATION:Ljava/lang/String; = "notification"


# instance fields
.field private final runtime:Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig;->Companion:Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRuntime()Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig;->runtime:Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;

    return-object p0
.end method
