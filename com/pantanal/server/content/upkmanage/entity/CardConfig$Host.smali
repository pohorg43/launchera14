.class public final Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/upkmanage/entity/CardConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Host"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006¨\u0006\u000b"
    }
    d2 = {
        "Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;",
        "",
        "",
        "packageName",
        "Ljava/lang/String;",
        "getPackageName",
        "()Ljava/lang/String;",
        "componentName",
        "getComponentName",
        "<init>",
        "()V",
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
.field private final componentName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponentName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/entity/CardConfig$Host;->packageName:Ljava/lang/String;

    return-object p0
.end method
