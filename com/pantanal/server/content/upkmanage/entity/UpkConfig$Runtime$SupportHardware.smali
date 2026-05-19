.class public final Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SupportHardware"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\b\u0010\tR!\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"
    }
    d2 = {
        "Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;",
        "",
        "",
        "Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;",
        "device",
        "[Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;",
        "getDevice",
        "()[Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;",
        "<init>",
        "()V",
        "Device",
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
.field private final device:[Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDevice()[Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;->device:[Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware$Device;

    return-object p0
.end method
