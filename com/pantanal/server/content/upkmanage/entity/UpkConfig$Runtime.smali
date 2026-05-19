.class public final Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/upkmanage/entity/UpkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Runtime"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0007\u0010\bR\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"
    }
    d2 = {
        "Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;",
        "",
        "Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;",
        "supportHardware",
        "Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;",
        "getSupportHardware",
        "()Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;",
        "<init>",
        "()V",
        "SupportHardware",
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
.field private final supportHardware:Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "support-hardware"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSupportHardware()Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime;->supportHardware:Lcom/pantanal/server/content/upkmanage/entity/UpkConfig$Runtime$SupportHardware;

    return-object p0
.end method
