.class public interface abstract Lcom/pantanal/server/content/domail/ISeedlingService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H&J\u001a\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H&J&\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\rH&J+\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0010H&¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"
    }
    d2 = {
        "Lcom/pantanal/server/content/domail/ISeedlingService;",
        "",
        "",
        "serviceId",
        "Lcom/pantanal/server/content/domail/SeedlingServiceInfo;",
        "queryServiceInfo",
        "subDomain",
        "",
        "disableSubDomain",
        "Landroid/content/Context;",
        "context",
        "Lcom/pantanal/server/content/domail/FluidCloudInfo;",
        "queryFluidCloud",
        "",
        "serviceIds",
        "queryFluidClouds",
        "",
        "closeEntry",
        "serviceSwitch",
        "",
        "updateFluidCloud",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)J",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract disableSubDomain(Ljava/lang/String;)Z
.end method

.method public abstract queryFluidCloud(Landroid/content/Context;Ljava/lang/String;)Lcom/pantanal/server/content/domail/FluidCloudInfo;
.end method

.method public abstract queryFluidClouds(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/domail/FluidCloudInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryServiceInfo(Ljava/lang/String;)Lcom/pantanal/server/content/domail/SeedlingServiceInfo;
.end method

.method public abstract updateFluidCloud(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)J
.end method
